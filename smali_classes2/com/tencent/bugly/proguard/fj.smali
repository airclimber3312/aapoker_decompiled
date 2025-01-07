.class public final Lcom/tencent/bugly/proguard/fj;
.super Lcom/tencent/bugly/proguard/iy;


# instance fields
.field private final qS:Lcom/tencent/bugly/proguard/hc;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "traffic"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fj;->qS:Lcom/tencent/bugly/proguard/hc;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fj;->qS:Lcom/tencent/bugly/proguard/hc;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v0, 0xa0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    const-string v1, "TrafficPlugin"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "traffic report too many times today,  please try again next day"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "start traffic plugin"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ea()Lcom/tencent/bugly/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/traffic/TrafficMonitor;->q(Z)Z

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ea()Lcom/tencent/bugly/traffic/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->start()V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "traffic"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "TrafficPlugin"

    const-string v2, "stop traffic plugin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ea()Lcom/tencent/bugly/traffic/TrafficMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->q(Z)Z

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ea()Lcom/tencent/bugly/traffic/TrafficMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->s(Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "traffic"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    return-void
.end method
