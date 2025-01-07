.class public final Lcom/tencent/bugly/proguard/pz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/pr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/pz$a;
    }
.end annotation


# instance fields
.field private EV:Ljava/lang/String;

.field private final Fp:Lcom/tencent/bugly/proguard/pu;

.field final Fq:Lcom/tencent/bugly/proguard/py;

.field Fr:J

.field Fs:Ljava/lang/String;

.field private Ft:Lcom/tencent/bugly/proguard/pz$a;

.field private aJ:Z


# direct methods
.method protected constructor <init>(Lcom/tencent/bugly/proguard/py;Lcom/tencent/bugly/proguard/pu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/pz;->Fr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pz;->EV:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/pz;->aJ:Z

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Ft:Lcom/tencent/bugly/proguard/pz$a;

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_metric"

    const-string v2, "MetricCollectorWrapper init"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pz;->Fp:Lcom/tencent/bugly/proguard/pu;

    return-void
.end method

.method private ge()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->EV:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private iG()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->iH()V

    new-instance v0, Lcom/tencent/bugly/proguard/pz$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pz$a;-><init>(Lcom/tencent/bugly/proguard/pz;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Ft:Lcom/tencent/bugly/proguard/pz$a;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private iH()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Ft:Lcom/tencent/bugly/proguard/pz$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/pz$a;->Fw:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Ft:Lcom/tencent/bugly/proguard/pz$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Ft:Lcom/tencent/bugly/proguard/pz$a;

    return-void
.end method


# virtual methods
.method public final bx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pz;->EV:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/pz;->iE()V

    return-void
.end method

.method final e(Lcom/tencent/bugly/proguard/ie;)V
    .locals 5

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/ie;->vt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/ie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ie;-><init>(B)V

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/ie;->a(Lcom/tencent/bugly/proguard/ie;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/pz;->Fp:Lcom/tencent/bugly/proguard/pu;

    invoke-interface {p1, v0}, Lcom/tencent/bugly/proguard/pu;->c(Lcom/tencent/bugly/proguard/ie;)V

    return-void
.end method

.method public final eg()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->iH()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/py;->resume()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/pz;->iD()V

    return-void
.end method

.method public final eh()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/py;->pause()V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->iG()V

    :cond_0
    return-void
.end method

.method final iD()V
    .locals 4

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_looper_metric"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startCollect, isStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v3, v3, Lcom/tencent/bugly/proguard/py;->wl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gh()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->ge()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/pz;->Fr:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/py;->b(Ljava/lang/String;J)Z

    :cond_1
    return-void
.end method

.method final iE()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->ge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RMonitor_looper_metric"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "changeScene, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/pz;->iF()V

    return-void
.end method

.method final iF()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/pz;->e(Lcom/tencent/bugly/proguard/ie;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pz;->ge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/py;->by(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/pz;->aJ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pz;->aJ:Z

    new-instance v0, Lcom/tencent/bugly/proguard/pz$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pz$1;-><init>(Lcom/tencent/bugly/proguard/pz;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/pz;->aJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pz;->aJ:Z

    new-instance v0, Lcom/tencent/bugly/proguard/pz$2;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pz$2;-><init>(Lcom/tencent/bugly/proguard/pz;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
