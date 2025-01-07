.class public final Lcom/tencent/bugly/proguard/py;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ah;
.implements Lcom/tencent/bugly/proguard/qa$b;


# instance fields
.field private final Fh:J

.field private final Fi:Landroid/os/Handler;

.field Fj:J

.field Fk:J

.field Fl:Z

.field Fm:Lcom/tencent/bugly/proguard/qa;

.field private Fn:Z

.field final uZ:Lcom/tencent/bugly/proguard/ie;

.field wl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/py;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/py;->Fj:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    new-instance v0, Lcom/tencent/bugly/proguard/ie;

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/ie;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/py;->Fn:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/py;->getRefreshRate()F

    move-result v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "RMonitor_looper_metric"

    aput-object v4, v3, p1

    const-string v5, "refreshRate: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/high16 v1, 0x42680000    # 58.0f

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    const/high16 v0, 0x42680000    # 58.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42780000    # 62.0f

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    const/high16 v0, 0x42780000    # 62.0f

    :cond_1
    :goto_0
    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v0

    float-to-long v0, v1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/py;->Fh:J

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "frameRateInNanos: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/py$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/py$1;-><init>(Lcom/tencent/bugly/proguard/py;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/py;->Fi:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aL()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/qa;->iI()Lcom/tencent/bugly/proguard/qa;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    :cond_2
    return-void
.end method

.method private static getRefreshRate()F
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    const/high16 v1, 0x42700000    # 60.0f

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aM()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "RMonitor_looper_metric"

    const-string v4, "getRefreshRate"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v1
.end method


# virtual methods
.method public final b(Ljava/lang/String;J)Z
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aL()Z

    move-result v0

    const-string v1, "RMonitor_looper_metric"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "Build.VERSION.SDK_INT is to low."

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "start, not in main looper"

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v0, :cond_2

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "start, has start before."

    filled-new-array {v1, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "start scene: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qa;->Fy:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qa;->Fy:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gg()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qa;->m(Landroid/app/Activity;)V

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/qa;->Fz:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    iput-boolean v5, v0, Lcom/tencent/bugly/proguard/qa;->Fz:Z

    :cond_4
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "RMonitor_looper_UIRefreshTracer"

    aput-object v4, v1, v2

    const-string v2, "register, listener: "

    aput-object v2, v1, v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_5
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/py;->Fj:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/py;->by(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    sget-object p1, Lcom/tencent/bugly/proguard/ag;->aM:Lcom/tencent/bugly/proguard/ag$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ag$a;->a(Lcom/tencent/bugly/proguard/ah;)V

    return v5
.end method

.method public final by(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ie;->reset()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/ie;->vy:J

    return-void
.end method

.method public final doFrame(J)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/py;->Fm:Lcom/tencent/bugly/proguard/qa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->Fn:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/py;->Fi:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    cmp-long v5, p1, v3

    if-ltz v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    sub-long v3, p1, v3

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, p1, Landroid/os/Message;->what:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/tencent/bugly/proguard/py;->Fi:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    :cond_3
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/py;->Fn:Z

    return-void
.end method

.method public final iC()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->Fn:Z

    return-void
.end method

.method public final isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    const-string v1, "RMonitor_looper_metric"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "pause, not in main looper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "pause scene: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    sget-object v0, Lcom/tencent/bugly/proguard/ag;->aM:Lcom/tencent/bugly/proguard/ag$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ag$a;->b(Lcom/tencent/bugly/proguard/ah;)V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "pause, isStarted: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isResumed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method public final resume()V
    .locals 5

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    const-string v1, "RMonitor_looper_metric"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "resume, not in main looper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume scene: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/py;->uZ:Lcom/tencent/bugly/proguard/ie;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/py;->Fk:J

    sget-object v0, Lcom/tencent/bugly/proguard/ag;->aM:Lcom/tencent/bugly/proguard/ag$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ag$a;->a(Lcom/tencent/bugly/proguard/ah;)V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume, isStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/py;->wl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/py;->Fl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method
