.class public Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;
.super Ljava/lang/Object;


# static fields
.field private static wQ:Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend; = null

.field public static wS:Z = false


# instance fields
.field public wP:Z

.field private wR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wP:Z

    return-void
.end method

.method private fV()Z
    .locals 9

    sget-boolean v0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ce;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aQ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v2, "common"

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/tencent/bugly/proguard/ab;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/tencent/bugly/proguard/ab;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ab;->aA:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-string v2, "RMonitor_ThreadSuspend"

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "enableThisTime return false"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wR:Z

    const-string v4, "rmonitor_base"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wR:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/ay;->ag()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->nativeInit(I)I

    move-result v4

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v0, [Ljava/lang/String;

    aput-object v2, v6, v1

    const-string v7, "nativeInit\'s result is "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    return v1

    :cond_3
    return v3

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "init failed: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v5, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return v1
.end method

.method public static fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;
    .locals 2

    sget-object v0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wQ:Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wQ:Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    invoke-direct {v1}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;-><init>()V

    sput-object v1, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wQ:Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wQ:Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Thread;)J
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wP:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->nativeGetThreadId(J)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->nativeSuspendThread(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_ThreadSuspend"

    const-string v1, "thread id is not valid"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(J)Z
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wP:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->nativeResumeThread(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native nativeGetThreadId(J)I
.end method

.method native nativeInit(I)I
.end method

.method native nativeResumeThread(J)Z
.end method

.method native nativeSuspendThread(I)J
.end method
