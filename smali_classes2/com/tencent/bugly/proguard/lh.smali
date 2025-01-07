.class public final Lcom/tencent/bugly/proguard/lh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    aget-byte p1, p1, p2

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->gR()Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->x(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_FdLeak_Monitor"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2

    :cond_0
    :goto_0
    return v0
.end method
