.class final Lcom/tencent/bugly/proguard/pz$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/pz;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fu:Lcom/tencent/bugly/proguard/pz;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pz;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pz$2;->Fu:Lcom/tencent/bugly/proguard/pz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pz$2;->Fu:Lcom/tencent/bugly/proguard/pz;

    sget-boolean v1, Lcom/tencent/bugly/proguard/km;->yv:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "RMonitor_looper_metric"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v4, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "stopCollect, isStart: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v8, v8, Lcom/tencent/bugly/proguard/py;->wl:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isForeground: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gh()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/pz;->e(Lcom/tencent/bugly/proguard/ie;)V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/pz;->Fq:Lcom/tencent/bugly/proguard/py;

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "stop, not in main looper"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "stop, not start yet."

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v4, v6, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "stop scene: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    iget-object v4, v1, Lcom/tencent/bugly/proguard/qa;->Fy:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/tencent/bugly/proguard/qa;->Fy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v6, 0x3e8

    invoke-static {v1, v6, v7}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "RMonitor_looper_UIRefreshTracer"

    aput-object v6, v4, v5

    const-string v6, "unRegister, listener: "

    aput-object v6, v4, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v1, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_4
    iput-boolean v5, v0, Lcom/tencent/bugly/proguard/py;->wl:Z

    iput-boolean v5, v0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/py;->Fk:J

    sget-object v1, Lcom/tencent/bugly/proguard/ag;->aM:Lcom/tencent/bugly/proguard/ag$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ag$a;->b(Lcom/tencent/bugly/proguard/ah;)V

    :cond_5
    return-void
.end method
