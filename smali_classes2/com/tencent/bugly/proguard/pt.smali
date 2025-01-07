.class public final Lcom/tencent/bugly/proguard/pt;
.super Lcom/tencent/bugly/proguard/iz;

# interfaces
.implements Lcom/tencent/bugly/proguard/pr;


# instance fields
.field EX:Z

.field private final EY:Lcom/tencent/bugly/proguard/ps;

.field private final EZ:Lcom/tencent/bugly/proguard/pz;

.field private Fa:Lcom/tencent/bugly/proguard/gv;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iz;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    new-instance v0, Lcom/tencent/bugly/proguard/ps;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ps;-><init>(Lcom/tencent/bugly/proguard/pr;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EY:Lcom/tencent/bugly/proguard/ps;

    new-instance v0, Lcom/tencent/bugly/proguard/pz;

    new-instance v1, Lcom/tencent/bugly/proguard/py;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/py;-><init>()V

    new-instance v2, Lcom/tencent/bugly/proguard/px;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/px;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/pz;-><init>(Lcom/tencent/bugly/proguard/py;Lcom/tencent/bugly/proguard/pu;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    return-void
.end method

.method private iA()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iB()Lcom/tencent/bugly/proguard/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gv;->tk:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private iB()Lcom/tencent/bugly/proguard/gv;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->Fa:Lcom/tencent/bugly/proguard/gv;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "looper_metric"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/gv;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/gv;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pt;->Fa:Lcom/tencent/bugly/proguard/gv;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->Fa:Lcom/tencent/bugly/proguard/gv;

    return-object v0
.end method

.method private iy()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/pt$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/bugly/proguard/pt$1;-><init>(Lcom/tencent/bugly/proguard/pt;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private iz()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iB()Lcom/tencent/bugly/proguard/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gv;->tj:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public final aW(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper_metric"

    aput-object v4, v2, v3

    const-string v5, "looper_metric beginScene, sceneName: "

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    aput-object p1, v2, v5

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "looper_metric beginScene fail when sceneName is empty."

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v2, "looper_metric beginScene fail when not running, sceneName: "

    aput-object v2, v1, v6

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iz()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, v0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->iE()V

    :cond_2
    return-void
.end method

.method public final aX(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_looper_metric"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "looper_metric endScene, sceneName: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->iE()V

    :cond_0
    return-void
.end method

.method public final ao()Ljava/lang/String;
    .locals 1

    const-string v0, "looper_metric"

    return-object v0
.end method

.method public final bx(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/pz;->bx(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final eg()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->eg()V

    return-void
.end method

.method public final eh()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->eh()V

    return-void
.end method

.method public final start()V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/pt;->y(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    const-string v1, "RMonitor_looper_metric"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "looper_metric has start before."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "looper_metric start"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EY:Lcom/tencent/bugly/proguard/ps;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/kd;->a(Lcom/tencent/bugly/proguard/kf;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/pt;->bx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iB()Lcom/tencent/bugly/proguard/gv;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/tencent/bugly/proguard/gv;->tV:I

    int-to-long v1, v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0xc8

    :goto_0
    iput-wide v1, v0, Lcom/tencent/bugly/proguard/pz;->Fr:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->start()V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/pt;->y(I)V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    const-string v1, "RMonitor_looper_metric"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "looper_metric not start yet."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "looper_metric stop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pt;->EX:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EY:Lcom/tencent/bugly/proguard/ps;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/kd;->xO:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pt;->iy()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pt;->EZ:Lcom/tencent/bugly/proguard/pz;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pz;->stop()V

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/pt;->fM()V

    return-void
.end method
