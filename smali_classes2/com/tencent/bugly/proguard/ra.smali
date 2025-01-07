.class public final Lcom/tencent/bugly/proguard/ra;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ra$a;
    }
.end annotation


# instance fields
.field private HI:Z

.field private HJ:Z

.field private final HK:Lcom/tencent/bugly/proguard/rc;

.field private final handler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HJ:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    new-instance v0, Lcom/tencent/bugly/proguard/rc;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rc;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ra;->HK:Lcom/tencent/bugly/proguard/rc;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ra;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ra;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    return p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/ra;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/bugly/proguard/ra;->HJ:Z

    return p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/ra;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HJ:Z

    return v0
.end method

.method public static jl()Lcom/tencent/bugly/proguard/ra;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ra$a;->jr()Lcom/tencent/bugly/proguard/ra;

    move-result-object v0

    return-object v0
.end method

.method private jm()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private jn()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RMonitor_metric_sla_Helper"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "checkSLAReportInner, not match base info limit."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/bugly/proguard/ra$1;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/ra$1;-><init>(Lcom/tencent/bugly/proguard/ra;)V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "checkMetricReportInner, not match base info."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ra;->HJ:Z

    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/bugly/proguard/ra$2;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/ra$2;-><init>(Lcom/tencent/bugly/proguard/ra;)V

    :goto_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/kx;->f(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return v2
.end method

.method public final jo()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ra;->jn()V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ra;->jm()V

    return-void
.end method

.method public final jp()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->HK:Lcom/tencent/bugly/proguard/rc;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/tencent/bugly/proguard/rc;->HN:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/rc;->HN:J

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_metric_sla_Helper"

    const-string v2, "beginStartRMonitor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final jq()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra;->HK:Lcom/tencent/bugly/proguard/rc;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    if-nez v1, :cond_3

    iget-wide v1, v0, Lcom/tencent/bugly/proguard/rc;->HN:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-nez v7, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_sla"

    const-string v2, "endStartRMonitor invalid call not start yet."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/rc;->HO:Z

    if-nez v1, :cond_2

    iput-boolean v6, v0, Lcom/tencent/bugly/proguard/rc;->HO:Z

    new-instance v1, Lcom/tencent/bugly/proguard/rc$1;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/rc$1;-><init>(Lcom/tencent/bugly/proguard/rc;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-static {v1, v4, v5}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_metric_sla_Helper"

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endStartRMonitor, isSLAReported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/ra;->HI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
