.class public Lcom/tencent/bugly/proguard/fd;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/fd$a;,
        Lcom/tencent/bugly/proguard/fd$b;
    }
.end annotation


# static fields
.field private static volatile pr:Z = false

.field private static volatile ps:Z = false

.field private static pt:Landroid/os/HandlerThread;

.field private static pu:Landroid/os/Handler;

.field private static final pv:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final pw:[B


# instance fields
.field private final pq:Landroid/os/Messenger;

.field private final px:Lcom/tencent/bugly/proguard/ez;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/fd;->pv:Ljava/util/concurrent/atomic/AtomicInteger;

    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/bugly/proguard/fd;->pw:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/tencent/bugly/proguard/fd$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/fd$1;-><init>(Lcom/tencent/bugly/proguard/fd;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fd;->pq:Landroid/os/Messenger;

    new-instance v0, Lcom/tencent/bugly/proguard/ez;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ez;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fd;->px:Lcom/tencent/bugly/proguard/ez;

    return-void
.end method

.method private static declared-synchronized S()V
    .locals 6

    const-class v0, Lcom/tencent/bugly/proguard/fd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/fd;->pr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/proguard/fd;->pw:[B

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lcom/tencent/bugly/proguard/fd;->pt:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "backtrace-recycler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/bugly/proguard/fd;->pt:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/tencent/bugly/proguard/fd;->pt:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/proguard/fd$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/tencent/bugly/proguard/fd$a;-><init>(B)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v2, Lcom/tencent/bugly/proguard/fd;->pu:Landroid/os/Handler;

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Lcom/tencent/bugly/proguard/fd;->p(Z)V

    sput-boolean v1, Lcom/tencent/bugly/proguard/fd;->pr:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "Matrix.WarmUpService"

    const-string v1, "Remove scheduled suicide"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/bugly/proguard/fd;->pw:[B

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lcom/tencent/bugly/proguard/fd;->pu:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/tencent/bugly/proguard/fd;->pv:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "warm-up-result"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p2, :cond_0

    const-string p1, "Matrix.WarmUpService"

    const-string p2, "Args is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/fd;->p(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_4
    const-string v1, "saving-path"

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Matrix.WarmUpService"

    const-string v6, "Invoke from client with savingPath: %s."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/fd;->aq(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "Matrix.WarmUpService"

    const-string p2, "Saving path is empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2}, Lcom/tencent/bugly/proguard/fd;->p(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_6
    iget-object v5, p0, Lcom/tencent/bugly/proguard/fd;->px:Lcom/tencent/bugly/proguard/ez;

    invoke-virtual {v5, v1}, Lcom/tencent/bugly/proguard/ez;->setSavingPath(Ljava/lang/String;)V

    const/16 v1, 0x64

    if-ne p1, v1, :cond_8

    const-string p1, "path-of-elf"

    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/fd;->aq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Matrix.WarmUpService"

    const-string p2, "Warm-up so path is empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v2}, Lcom/tencent/bugly/proguard/fd;->p(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_8
    const-string v1, "elf-start-offset"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "Matrix.WarmUpService"

    const-string v4, "Warm up so path %s offset %s."

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v4, v6}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/fe;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/fe$a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/fe;->a(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_4

    const/4 p1, -0x3

    goto :goto_2

    :cond_4
    invoke-static {p1, p2, v3}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->warmUp(Ljava/lang/String;IZ)Z

    move-result v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->testLoadQut(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v1, "Matrix.WarmUpService"

    const-string v4, "Warm up elf %s:%s success, but test load qut failed!"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_5
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/fe;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/fe$a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz v1, :cond_6

    sget-object p2, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p1, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/fe;->a(Landroid/content/Context;Ljava/util/Map;)V

    if-eqz v1, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    const/4 p1, -0x2

    :goto_2
    const-string p2, "warm-up-result"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    const-string p2, "Matrix.WarmUpService"

    const-string v1, "Unknown cmd: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    invoke-static {v2}, Lcom/tencent/bugly/proguard/fd;->p(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_a
    invoke-static {v2}, Lcom/tencent/bugly/proguard/fd;->p(Z)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/fd;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/fd;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/content/Intent;)V
    .locals 8

    const-class v0, Lcom/tencent/bugly/proguard/fd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/fd;->ps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "Matrix.WarmUpService"

    const-string v2, "Init called."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dZ()V

    const-string v1, "enable-logger"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "path-of-xlog-so"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Matrix.WarmUpService"

    const-string v4, "Enable logger: %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v4, v6}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "Matrix.WarmUpService"

    const-string v4, "Path of XLog: %s"

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v2, v4, v6}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/bugly/matrix/xlog/XLogNative;->ar(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ff;->enableLogger(Z)V

    sput-boolean v5, Lcom/tencent/bugly/proguard/fd;->ps:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static aq(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static p(Z)V
    .locals 4

    const-string v0, "Matrix.WarmUpService"

    const-string v1, "Schedule suicide"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/bugly/proguard/fd;->pw:[B

    monitor-enter v0

    const-wide/32 v1, 0xea60

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/tencent/bugly/proguard/fd;->pu:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/fd;->pv:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/fd;->pu:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/proguard/fd;->ps:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/fd;->a(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/fd;->pq:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/tencent/bugly/proguard/fd;->pr:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/fd;->S()V

    :cond_0
    return-void
.end method
