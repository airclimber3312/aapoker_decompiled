.class public abstract Lcom/tencent/rmonitor/heapdump/StripHeapDumper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/nh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;
    }
.end annotation


# static fields
.field private static final AJ:[Ljava/lang/String;

.field private static final AK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static Au:Z


# instance fields
.field private AI:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ".*/librmonitor_memory.so$"

    const-string v1, ".*/libBugly_Native.so$"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->AJ:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->AK:Ljava/util/Map;

    const-string v1, "libart.so"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "open"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "libbase.so"

    const-string v3, "libartbase.so"

    const-string v4, "libc.so"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rmonitor_memory"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ku;->bc(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->Au:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static H(I)V
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->Au:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetHprofStripConfig(I)V

    :cond_0
    return-void
.end method

.method protected static a(Lcom/tencent/bugly/proguard/ne;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ne;->AG:Lcom/tencent/bugly/proguard/ng;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/bugly/proguard/ng;->he()V

    :cond_0
    return-void
.end method

.method private static hp()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->Au:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/nd;->hk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native nDisableHprofStrip()V
.end method

.method private static native nEnableHprofStrip(Ljava/lang/String;)V
.end method

.method private static native nSetHprofStripConfig(I)V
.end method

.method private static native nSetIgnoreHookSo(Ljava/lang/String;)V
.end method

.method private static native nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;)V
    .locals 1

    iget-boolean v0, p2, Lcom/tencent/bugly/proguard/ne;->AD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->hp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->bp(Ljava/lang/String;)V

    iget v0, p2, Lcom/tencent/bugly/proguard/ne;->AE:I

    invoke-static {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->H(I)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p3, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AL:Z

    const/4 p1, 0x0

    iput-object p1, p3, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AM:Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-boolean v0, p3, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AL:Z

    iput-object p1, p3, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AM:Ljava/io/IOException;

    :goto_0
    iget-boolean p1, p2, Lcom/tencent/bugly/proguard/ne;->AD:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->hp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nDisableHprofStrip()V

    invoke-static {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->H(I)V

    :cond_1
    return-void
.end method

.method public bp(Ljava/lang/String;)V
    .locals 3

    const-string v0, "open"

    const-string v1, "libart.so"

    invoke-static {v1, v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libc.so"

    const-string v2, "write"

    invoke-static {v0, v2}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libbase.so"

    invoke-static {v0, v2}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libartbase.so"

    invoke-static {v0, v2}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetRegisterHookSo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".*/librmonitor_memory.so$"

    invoke-static {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetIgnoreHookSo(Ljava/lang/String;)V

    const-string v0, ".*/libBugly-rqd.so$"

    invoke-static {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nSetIgnoreHookSo(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->nEnableHprofStrip(Ljava/lang/String;)V

    return-void
.end method

.method protected final ho()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->AI:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->AI:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->AI:Landroid/os/Handler;

    return-object v0
.end method
