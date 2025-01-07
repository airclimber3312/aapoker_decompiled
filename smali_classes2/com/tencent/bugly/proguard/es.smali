.class public final Lcom/tencent/bugly/proguard/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mName:Ljava/lang/String;

.field final nT:Landroid/os/Handler;

.field private final nU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/eo;",
            ">;"
        }
    .end annotation
.end field

.field nV:J

.field private final nW:J

.field nX:Z

.field nY:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/es;->nT:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/es;->mName:Ljava/lang/String;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/es;->nV:J

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/es;->nW:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/es;->nX:Z

    return-void
.end method

.method private getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/es;->nT:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dJ()Z
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/es;->nX:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/es;->nY:J

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/es;->nV:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dK()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/es;->nY:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final dL()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/eo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/eo;

    iget-boolean v6, v5, Lcom/tencent/bugly/proguard/eo;->nA:Z

    if-nez v6, :cond_0

    iget-wide v6, v5, Lcom/tencent/bugly/proguard/eo;->fv:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0x30d40

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/tencent/bugly/proguard/eo;->nA:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dM()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    move-result-object v4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/es;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->d(Ljava/lang/Thread;)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/es;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-static {}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->k(J)Z

    array-length v4, v6

    if-nez v4, :cond_0

    const-string v4, "Thread does not have stack trace.\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    array-length v4, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v6, v5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "getStackTrace() encountered:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-instance v6, Lcom/tencent/bugly/proguard/eo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v0, v7, v8}, Lcom/tencent/bugly/proguard/eo;-><init>(Ljava/lang/String;J)V

    sub-long/2addr v4, v1

    iput-wide v4, v6, Lcom/tencent/bugly/proguard/eo;->nz:J

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/es;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    iput-object v0, v6, Lcom/tencent/bugly/proguard/eo;->lf:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    monitor-enter v0

    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/es;->nU:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/es;->nX:Z

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/es;->nW:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/es;->nV:J

    return-void
.end method
