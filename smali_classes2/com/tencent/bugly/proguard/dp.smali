.class public final Lcom/tencent/bugly/proguard/dp;
.super Ljava/lang/Object;


# static fields
.field private static ja:Lcom/tencent/bugly/proguard/dp;


# instance fields
.field private final ac:Lcom/tencent/bugly/proguard/dd;

.field public jb:Lcom/tencent/bugly/proguard/do;

.field private jc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private jd:J

.field private je:J

.field private jf:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private jg:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final jh:Ljava/lang/Object;

.field private ji:J

.field private jj:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jc:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jf:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jg:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/dp;->ji:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dp;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/dp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    return-object p0
.end method

.method private a(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    const-string v4, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v7, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    if-lt v7, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    monitor-exit v6

    goto :goto_1

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "BUGLY_ASYNC_UPLOAD"

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v6, Lcom/tencent/bugly/proguard/dp$1;

    invoke-direct {v6, p0, v5}, Lcom/tencent/bugly/proguard/dp$1;-><init>(Lcom/tencent/bugly/proguard/dp;Ljava/lang/Runnable;)V

    const-string v7, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/dz;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget v5, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const-string v6, "[UploadManager] Failed to start a thread to execute asynchronous upload task,will try again next time."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v3}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;Z)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    return-void
.end method

.method private static a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const-string v2, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] Upload task should not be null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/dp;->jf:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/dp;->jg:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0

    :goto_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "[UploadManager] Failed to add upload task to queue: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/dp;)I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/dp;->jj:I

    return v0
.end method

.method public static declared-synchronized cI()Lcom/tencent/bugly/proguard/dp;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/dp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/dp;->ja:Lcom/tencent/bugly/proguard/dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private cJ()V
    .locals 10

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/dp;->jh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/bugly/proguard/dp;->jf:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    iget-object v6, p0, Lcom/tencent/bugly/proguard/dp;->jg:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    if-nez v4, :cond_0

    if-nez v6, :cond_0

    const-string v0, "[UploadManager] There is no upload task in queue."

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-exit v3

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ds;->cO()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v6, 0x0

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jf:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0, v1, v4}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jg:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0, v2, v6}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/concurrent/LinkedBlockingQueue;I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4, v1}, Lcom/tencent/bugly/proguard/dp;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V

    if-lez v6, :cond_3

    const-string v0, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tencent/bugly/proguard/dp$2;

    invoke-direct {v1, p0, v6, v2}, Lcom/tencent/bugly/proguard/dp$2;-><init>(Lcom/tencent/bugly/proguard/dp;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(Ljava/lang/Runnable;J)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] Upload task should not be null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "BUGLY_SYNC_UPLOAD"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/dz;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p2, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;Z)Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/dp;->cJ()V

    return-void
.end method

.method private declared-synchronized n(I)J
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp;->jc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string v0, "[UploadManager] Unknown upload ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized t(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dp;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/dp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/dp;->ja:Lcom/tencent/bugly/proguard/dp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/dp;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/dp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/dp;->ja:Lcom/tencent/bugly/proguard/dp;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/dp;->ja:Lcom/tencent/bugly/proguard/dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/dp;->jc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/tencent/bugly/proguard/df;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/df;-><init>()V

    iput p1, v2, Lcom/tencent/bugly/proguard/df;->type:I

    iput-wide p2, v2, Lcom/tencent/bugly/proguard/df;->fv:J

    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/df;->gN:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/tencent/bugly/proguard/df;->gO:Ljava/lang/String;

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/tencent/bugly/proguard/df;->gP:[B

    iget-object v3, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {v3, p1}, Lcom/tencent/bugly/proguard/dd;->k(I)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/df;)Z

    const-string v2, "[UploadManager] Uploading(ID:%d) time: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/dz;->f(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p2, "[UploadManager] Unknown uploading ID: %d"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/ro;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;)V
    .locals 13

    move-object v0, p2

    iget v3, v0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/dl;->a(Ljava/lang/Object;)[B

    move-result-object v4

    :try_start_0
    new-instance v11, Lcom/tencent/bugly/proguard/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    :try_start_1
    iget-object v1, v12, Lcom/tencent/bugly/proguard/dp;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/dq;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;IIZ)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, p0

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, p0

    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/ro;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;JZ)V
    .locals 12

    move-object v0, p2

    iget v3, v0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/dl;->a(Ljava/lang/Object;)[B

    move-result-object v4

    :try_start_0
    new-instance v9, Lcom/tencent/bugly/proguard/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v1, v11, Lcom/tencent/bugly/proguard/dp;->mContext:Landroid/content/Context;

    move-object v0, v9

    move v2, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/proguard/dq;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;Z)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v5, p0

    move-object v6, v9

    move-wide/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized a(JZ)V
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/df;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/df;-><init>()V

    iput v0, v1, Lcom/tencent/bugly/proguard/df;->type:I

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/df;->fv:J

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/df;->gN:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/df;->gO:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/dz;->g(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/df;->gP:[B

    iget-object v2, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/dd;->k(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/df;)Z

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/dp;->je:J

    goto :goto_1

    :cond_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/dp;->jd:J

    :goto_1
    const-string p3, "[UploadManager] Network total consume: %d KB"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x400

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;ZZJ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p4, p5}, Lcom/tencent/bugly/proguard/dp;->d(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/dp;->cJ()V

    return-void
.end method

.method public final a([BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;Z)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/tencent/bugly/proguard/dr;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/dp;->mContext:Landroid/content/Context;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/dr;-><init>(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/dp;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final j(Z)J
    .locals 11

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/dd;->j(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/df;

    iget-wide v8, p1, Lcom/tencent/bugly/proguard/df;->fv:J

    cmp-long v10, v8, v0

    if-ltz v10, :cond_2

    iget-object v0, p1, Lcom/tencent/bugly/proguard/df;->gP:[B

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->k([B)J

    move-result-wide v6

    if-ne v3, v2, :cond_1

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/dp;->jd:J

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Lcom/tencent/bugly/proguard/dp;->je:J

    :goto_1
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/tencent/bugly/proguard/dp;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/dd;->e(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/dp;->je:J

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/dp;->jd:J

    :goto_3
    move-wide v6, v0

    :cond_5
    :goto_4
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-wide/16 v0, 0x400

    div-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "[UploadManager] Local network consume: %d KB"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v6
.end method

.method public final o(I)Z
    .locals 7

    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->ab:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Uploading frequency will not be checked if SDK is in debug mode."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/dp;->n(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "[UploadManager] Data only be uploaded once in %d seconds."

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v1
.end method
