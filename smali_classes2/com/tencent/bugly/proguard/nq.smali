.class final Lcom/tencent/bugly/proguard/nq;
.super Ljava/lang/Object;


# instance fields
.field final BP:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/bugly/proguard/ca;",
            ">;"
        }
    .end annotation
.end field

.field private final em:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nq;->em:Ljava/lang/String;

    return-void
.end method

.method private bs(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RMonitor_launch_Span"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "spanStart, spanName is empty."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/nq;->bt(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ca;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v3

    const-string v1, "spanStart, span["

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 p1, 0x3

    const-string v1, "] has appended before."

    aput-object v1, v4, p1

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_1
    return v3
.end method

.method private bt(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ca;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ca;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/tencent/bugly/proguard/ca;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final spanEnd(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RMonitor_launch_Span"

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "spanEnd, spanName is empty."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/nq;->bt(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ca;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, "spanEnd, span["

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object p1, v2, v1

    const/4 p1, 0x3

    const-string v1, "] not exist."

    aput-object v1, v2, p1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/ca;->eq:J

    return-void
.end method

.method public final spanStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/nq;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/ca;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nq;->em:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/nq;->bt(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ca;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/ca;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ca;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
