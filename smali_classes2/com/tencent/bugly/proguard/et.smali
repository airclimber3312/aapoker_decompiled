.class public final Lcom/tencent/bugly/proguard/et;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/et$a;
    }
.end annotation


# instance fields
.field private nZ:Z

.field private oa:Z

.field private ob:Z

.field private oc:I

.field public od:Lcom/tencent/bugly/proguard/es;

.field private oe:Lcom/tencent/bugly/proguard/et$a;

.field public of:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->nZ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/et;->oa:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->ob:Z

    iput v1, p0, Lcom/tencent/bugly/proguard/et;->oc:I

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/et;->of:Z

    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/bugly/proguard/es;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->oa:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->ob:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/es;->dJ()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Restart getting main stack trace."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/et;->oa:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->ob:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final dN()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->nZ:Z

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/et;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/et;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_0
    const-string v1, "MainHandlerChecker is reset to null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    return v0
.end method

.method public final dO()Z
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1388

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/es;->nV:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/es;

    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/es;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/et;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/et;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_1
    return v1
.end method

.method public final declared-synchronized dP()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->oa:Z

    const-string v1, "Record stack trace is disabled."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dQ()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/et;->ob:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/et;->nZ:Z

    if-nez v2, :cond_a

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "Main handler checker is null. Stop thread monitor."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v4, v2, Lcom/tencent/bugly/proguard/es;->nX:Z

    if-eqz v4, :cond_1

    iput-boolean v3, v2, Lcom/tencent/bugly/proguard/es;->nX:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tencent/bugly/proguard/es;->nY:J

    iget-object v4, v2, Lcom/tencent/bugly/proguard/es;->nT:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/et;->a(Lcom/tencent/bugly/proguard/es;)V

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/et;->of:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/et;->oa:Z

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/es;->dK()J

    move-result-wide v4

    const-wide/16 v6, 0x5e6

    cmp-long v8, v4, v6

    if-lez v8, :cond_7

    const-wide/32 v6, 0x30d36

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x1392

    const/4 v8, 0x1

    cmp-long v9, v4, v6

    if-gtz v9, :cond_4

    iput v8, p0, Lcom/tencent/bugly/proguard/et;->oc:I

    const-string v4, "timeSinceMsgSent in [2s, 5s], record stack"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/tencent/bugly/proguard/et;->oc:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/tencent/bugly/proguard/et;->oc:I

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    const-string v4, "timeSinceMsgSent in (5s, 200s), should record stack:true"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    move v3, v8

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/es;->dM()V

    :cond_8
    iget-object v3, p0, Lcom/tencent/bugly/proguard/et;->oe:Lcom/tencent/bugly/proguard/et$a;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/et;->oa:Z

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/es;->dJ()Z

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/es;->dK()J

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/dz;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method
