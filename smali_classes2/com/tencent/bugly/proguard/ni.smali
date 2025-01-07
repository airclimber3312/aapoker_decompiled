.class public final Lcom/tencent/bugly/proguard/ni;
.super Lcom/tencent/rmonitor/heapdump/StripHeapDumper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;)I
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "standard dumper dump start."

    const-string v2, "RMonitor_Heap_StandardHeapDumper"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;

    invoke-direct {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/ni;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;)V

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "standard dumper dump result: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-boolean p1, v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AL:Z

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ni;->a(Lcom/tencent/bugly/proguard/ne;)V

    iget-object p1, v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AM:Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/mx;->bo(Ljava/lang/String;)V

    const/16 p1, 0x6b

    return p1

    :cond_0
    return v3
.end method

.method public final bridge synthetic bp(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->bp(Ljava/lang/String;)V

    return-void
.end method

.method public final isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
