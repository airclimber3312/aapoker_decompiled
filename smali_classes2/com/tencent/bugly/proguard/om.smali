.class public final Lcom/tencent/bugly/proguard/om;
.super Ljava/lang/Object;


# static fields
.field private static final DD:Lcom/tencent/bugly/proguard/om;


# instance fields
.field private final DE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Thread;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private DF:Landroid/os/HandlerThread;

.field private DG:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/om;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/om;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/om;->DD:Lcom/tencent/bugly/proguard/om;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/om;->DF:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static e(Ljava/lang/Thread;)Landroid/os/Looper;
    .locals 1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/om;->g(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/om;->DD:Lcom/tencent/bugly/proguard/om;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/om;->ic()Landroid/os/Looper;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/om;->DD:Lcom/tencent/bugly/proguard/om;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/om;->h(Ljava/lang/Thread;)Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Thread;)Z
    .locals 10

    sget-object v0, Lcom/tencent/bugly/proguard/om;->DD:Lcom/tencent/bugly/proguard/om;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    invoke-static {p0}, Lcom/tencent/bugly/proguard/om;->g(Ljava/lang/Thread;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    const-string v3, "]"

    const-string v4, "RMonitor_looper_StackThreadProvider"

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aN()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_1
    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v7, v5, [Ljava/lang/String;

    aput-object v4, v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "quit stack thread ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "release stack thread for ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {v6, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private static g(Ljava/lang/Thread;)Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private h(Ljava/lang/Thread;)Landroid/os/Looper;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "RStack_Of_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/om;->DE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "RMonitor_looper_StackThreadProvider"

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "create stack thread for ["

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {p1, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    return-object p1
.end method

.method private ic()Landroid/os/Looper;
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RStack_Of_Main"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/om;->DF:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/om;->DF:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/om;->DF:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_looper_StackThreadProvider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create stack thread for main thread. looper["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/om;->DG:Landroid/os/Looper;

    return-object v0
.end method
