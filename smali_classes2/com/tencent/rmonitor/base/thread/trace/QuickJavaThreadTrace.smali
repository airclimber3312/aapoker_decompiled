.class public Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;
.super Ljava/lang/Object;


# static fields
.field private static wT:Z = false


# instance fields
.field public wP:Z

.field public wU:Z

.field public wV:I

.field public wW:I

.field public wX:Ljava/lang/Thread;

.field public wY:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "RMonitor_ThreadTrace"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aQ()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "rmonitor_base"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/ay;->ag()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativeInit(I)I

    move-result v4

    if-nez v4, :cond_0

    sput-boolean v3, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wT:Z

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "init success"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v1

    const-string v7, "init error, initResult = "

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    const-string v0, "init failed: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v5, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;ZZ)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p1

    const-string v9, "RMonitor_ThreadTrace"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wU:Z

    iput v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wV:I

    iput v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wW:I

    const/4 v11, 0x0

    iput-object v11, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    const-wide/16 v12, 0x0

    iput-wide v12, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    sget-boolean v1, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wT:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v14, 0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    move-result-object v1

    iget-boolean v2, v1, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->wP:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->nativeGetThreadId(J)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v4, v1

    cmp-long v1, v12, v4

    if-nez v1, :cond_1

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "NativeGetThreadID error"

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v2

    move-object v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativeCreate(JJZZ)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    cmp-long v3, v1, v12

    if-eqz v3, :cond_2

    iput-object v0, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    move/from16 v0, p2

    iput-boolean v0, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wU:Z

    iput-boolean v14, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    return-void

    :cond_2
    iput-object v11, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wU:Z

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v8, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v9, v2, v10

    const-string v3, "nativeCreate faild: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v14

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)I
    .locals 0

    iget p0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wV:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)I
    .locals 0

    iget p0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wW:I

    return p0
.end method

.method public static fX()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wT:Z

    return v0
.end method

.method static native nativeInit(I)I
.end method


# virtual methods
.method public final fY()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativeStop(J)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method native nativeCreate(JJZZ)J
.end method

.method public native nativeGetStackTrace(JJJ)Ljava/lang/String;
.end method

.method native nativePrepare(JJZII)V
.end method

.method native nativeStart(J)V
.end method

.method native nativeStop(J)V
.end method

.method public final start()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wX:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->wY:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativeStart(J)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
