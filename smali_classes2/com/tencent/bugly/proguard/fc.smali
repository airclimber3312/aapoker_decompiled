.class public final Lcom/tencent/bugly/proguard/fc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/fc$a;,
        Lcom/tencent/bugly/proguard/fc$b;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field nT:Landroid/os/Handler;

.field private pa:Lcom/tencent/bugly/proguard/fc$a;

.field private pb:Lcom/tencent/bugly/proguard/ez;

.field pc:Lcom/tencent/bugly/proguard/ff$f;

.field pd:J


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ez;Landroid/content/Context;Lcom/tencent/bugly/proguard/ff$f;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/fc;->pd:J

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fc;->pb:Lcom/tencent/bugly/proguard/ez;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    :cond_0
    iput-object p2, p0, Lcom/tencent/bugly/proguard/fc;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/fc;->pc:Lcom/tencent/bugly/proguard/ff$f;

    const-wide/16 p1, 0xbb8

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/fc;->pd:J

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;Lcom/tencent/bugly/proguard/fc$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/tencent/bugly/proguard/fc$a;->d(Lcom/tencent/bugly/proguard/fc$b;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Matrix.WarmUpScheduler"

    const-string v0, "Unregister idle receiver."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/proguard/fc$b;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/fc$a;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/fc;->pc:Lcom/tencent/bugly/proguard/ff$f;

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/fc;->pd:J

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/fc$a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/tencent/bugly/proguard/ff$f;J)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    invoke-virtual {v0, p2}, Lcom/tencent/bugly/proguard/fc$a;->c(Lcom/tencent/bugly/proguard/fc$b;)V

    const-string p2, "Matrix.WarmUpScheduler"

    const-string v0, "Register idle receiver."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/fc;->pa:Lcom/tencent/bugly/proguard/fc$a;

    invoke-virtual {p2, p1}, Lcom/tencent/bugly/proguard/fc$a;->C(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/bugly/proguard/fc$a;->c(Lcom/tencent/bugly/proguard/fc$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Lcom/tencent/bugly/proguard/fc$b;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/proguard/fc$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/fc$1;-><init>(Lcom/tencent/bugly/proguard/fc;Lcom/tencent/bugly/proguard/fc$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final b(Lcom/tencent/bugly/proguard/fc$b;)V
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/fc$2;->pg:[I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/fc;->pc:Lcom/tencent/bugly/proguard/ff$f;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ff$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/fc;->b(Landroid/content/Context;Lcom/tencent/bugly/proguard/fc$b;)V

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pb:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ez;->ov:Lcom/tencent/bugly/proguard/ez$c;

    new-instance v2, Lcom/tencent/bugly/proguard/ez$4;

    invoke-direct {v2, v0, p1}, Lcom/tencent/bugly/proguard/ez$4;-><init>(Lcom/tencent/bugly/proguard/ez;Landroid/os/CancellationSignal;)V

    const-string p1, "compute-disk-usage"

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pb:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ez;->ov:Lcom/tencent/bugly/proguard/ez$c;

    new-instance v2, Lcom/tencent/bugly/proguard/ez$2;

    invoke-direct {v2, v0, p1}, Lcom/tencent/bugly/proguard/ez$2;-><init>(Lcom/tencent/bugly/proguard/ez;Landroid/os/CancellationSignal;)V

    const-string p1, "clean-up"

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pb:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ez;->ov:Lcom/tencent/bugly/proguard/ez$c;

    new-instance v2, Lcom/tencent/bugly/proguard/ez$3;

    invoke-direct {v2, v0, p1}, Lcom/tencent/bugly/proguard/ez$3;-><init>(Lcom/tencent/bugly/proguard/ez;Landroid/os/CancellationSignal;)V

    const-string p1, "consuming-up"

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc;->pb:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ez;->ov:Lcom/tencent/bugly/proguard/ez$c;

    new-instance v2, Lcom/tencent/bugly/proguard/ez$1;

    invoke-direct {v2, v0, p1}, Lcom/tencent/bugly/proguard/ez$1;-><init>(Lcom/tencent/bugly/proguard/ez;Landroid/os/CancellationSignal;)V

    const-string p1, "warm-up"

    :goto_0
    invoke-virtual {v1, v2, p1}, Lcom/tencent/bugly/proguard/ez$c;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
