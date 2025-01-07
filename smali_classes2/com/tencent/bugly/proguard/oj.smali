.class public abstract Lcom/tencent/bugly/proguard/oj;
.super Lcom/tencent/bugly/proguard/og;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/oj$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008&\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J \u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H&J\n\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0004J\u001a\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0007H\u0016J\u000e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rJ#\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H&\u00a2\u0006\u0002\u0010#J\u0008\u0010$\u001a\u00020\u000bH\u0016J\u0018\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u000c\u001a\u00020\rH\u0002J \u0010)\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/provider/MultiStackProvider;",
        "Lcom/tencent/rmonitor/looper/provider/BaseStackProvider;",
        "Landroid/os/Handler$Callback;",
        "()V",
        "lastStackRequestTime",
        "",
        "monitorCallBack",
        "Lcom/tencent/rmonitor/looper/listener/IMonitorCallback;",
        "stackThreadHandler",
        "Landroid/os/Handler;",
        "beginTrace",
        "",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "dispatchEnd",
        "endTime",
        "duration",
        "dispatchStart",
        "startTime",
        "endTrace",
        "isOverThreshold",
        "",
        "getStackThreadHandler",
        "handleCollectCompleted",
        "callback",
        "handleCollectStart",
        "handleMessage",
        "msg",
        "Landroid/os/Message;",
        "init",
        "isCurrentMsg",
        "onTrace",
        "stackTrace",
        "",
        "Ljava/lang/StackTraceElement;",
        "(Lcom/tencent/rmonitor/looper/MonitorInfo;[Ljava/lang/StackTraceElement;)V",
        "release",
        "removeMonitorMessage",
        "what",
        "",
        "sendMonitorMessage",
        "sendMonitorMessageDelay",
        "delay",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Do:Lcom/tencent/bugly/proguard/oj$a;


# instance fields
.field private CE:J

.field Dm:Landroid/os/Handler;

.field private Dn:Lcom/tencent/bugly/proguard/oc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/oj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/oj$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/oj;->Do:Lcom/tencent/bugly/proguard/oj$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/og;-><init>()V

    return-void
.end method

.method private final a(ILcom/tencent/bugly/proguard/nz;J)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private final a(Lcom/tencent/bugly/proguard/nz;Lcom/tencent/bugly/proguard/oc;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/proguard/oj;->a(Lcom/tencent/bugly/proguard/nz;Z)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/tencent/bugly/proguard/oc;->a(Lcom/tencent/bugly/proguard/nz;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/nz;JJ)V
    .locals 1

    const-string p2, "monitorInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide p2, p2, Lcom/tencent/bugly/proguard/oh;->threshold:J

    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nz;->hQ()Lcom/tencent/bugly/proguard/nz;

    move-result-object p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 p3, 0x2

    iput p3, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/oj;->a(Lcom/tencent/bugly/proguard/nz;Z)V

    :cond_2
    :goto_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/oj;->CE:J

    return-void
.end method

.method public abstract a(Lcom/tencent/bugly/proguard/nz;Z)V
.end method

.method public abstract a(Lcom/tencent/bugly/proguard/nz;[Ljava/lang/StackTraceElement;)V
.end method

.method public final a(Lcom/tencent/bugly/proguard/oc;)Z
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/oj;->Dn:Lcom/tencent/bugly/proguard/oc;

    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/om;->e(Ljava/lang/Thread;)Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Handler;

    move-object v3, p0

    check-cast v3, Landroid/os/Handler$Callback;

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_looper_StackProvider"

    aput-object v4, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepare stack provider fail for exception {"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Lcom/tencent/bugly/proguard/nz;)V
    .locals 3

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oj;->CE:J

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/oj;->g(Lcom/tencent/bugly/proguard/nz;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/tencent/bugly/proguard/oj;->a(ILcom/tencent/bugly/proguard/nz;J)V

    return-void
.end method

.method public final f(Lcom/tencent/bugly/proguard/nz;)Z
    .locals 5

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/oj;->CE:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract g(Lcom/tencent/bugly/proguard/nz;)V
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "msg"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    move-object v3, v0

    check-cast v3, Lcom/tencent/bugly/proguard/nz;

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Lcom/tencent/bugly/proguard/oj;->Dn:Lcom/tencent/bugly/proguard/oc;

    invoke-direct {v1, v3, v0}, Lcom/tencent/bugly/proguard/oj;->a(Lcom/tencent/bugly/proguard/nz;Lcom/tencent/bugly/proguard/oc;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gx()J

    move-result-wide v9

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/oj;->f(Lcom/tencent/bugly/proguard/nz;)Z

    move-result v0

    const-string v11, ", deal: "

    const-string v12, "RMonitor_looper_StackProvider"

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v12, v5, v4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "handleCollectStart, deal msg not latest msg before trace, latest: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v1, Lcom/tencent/bugly/proguard/oj;->CE:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v3, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/nz;->CE:J

    sub-long/2addr v13, v4

    iget-object v0, v1, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/oh;->Dj:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_4

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v3, Lcom/tencent/bugly/proguard/nz;->CG:J

    sub-long/2addr v4, v13

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/nz;->hQ()Lcom/tencent/bugly/proguard/nz;

    move-result-object v0

    iput-boolean v6, v0, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    if-gtz v13, :cond_3

    iget-object v4, v1, Lcom/tencent/bugly/proguard/oj;->Dn:Lcom/tencent/bugly/proguard/oc;

    invoke-direct {v1, v0, v4}, Lcom/tencent/bugly/proguard/oj;->a(Lcom/tencent/bugly/proguard/nz;Lcom/tencent/bugly/proguard/oc;)V

    goto/16 :goto_2

    :cond_3
    const/4 v11, 0x2

    invoke-direct {v1, v11, v0, v4, v5}, Lcom/tencent/bugly/proguard/oj;->a(ILcom/tencent/bugly/proguard/nz;J)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, v1, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    iget-object v4, v1, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->d(Ljava/lang/Thread;)J

    move-result-wide v4

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-wide/16 v13, 0x0

    cmp-long v16, v4, v13

    if-eqz v16, :cond_6

    invoke-static {}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->fW()Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Lcom/tencent/rmonitor/base/thread/suspend/ThreadSuspend;->k(J)Z

    :cond_6
    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/oj;->f(Lcom/tencent/bugly/proguard/nz;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "stackTrace"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/tencent/bugly/proguard/oj;->a(Lcom/tencent/bugly/proguard/nz;[Ljava/lang/StackTraceElement;)V

    iget-object v0, v1, Lcom/tencent/bugly/proguard/og;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/tencent/bugly/proguard/oj;->a(ILcom/tencent/bugly/proguard/nz;J)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "handleCollectStart, deal msg not latest msg after trace, latest: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v1, Lcom/tencent/bugly/proguard/oj;->CE:J

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v3, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v12, v5, v11

    const-string v11, "on trace fail for "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gx()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_9

    iget-wide v11, v3, Lcom/tencent/bugly/proguard/nz;->CK:J

    add-long/2addr v11, v7

    iput-wide v11, v3, Lcom/tencent/bugly/proguard/nz;->CK:J

    :cond_9
    cmp-long v0, v4, v9

    if-lez v0, :cond_a

    iget-wide v7, v3, Lcom/tencent/bugly/proguard/nz;->CL:J

    add-long/2addr v7, v4

    iput-wide v7, v3, Lcom/tencent/bugly/proguard/nz;->CL:J

    :cond_a
    iget v0, v3, Lcom/tencent/bugly/proguard/nz;->CM:I

    add-int/2addr v0, v6

    iput v0, v3, Lcom/tencent/bugly/proguard/nz;->CM:I

    goto/16 :goto_0

    :goto_3
    return v2

    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.tencent.rmonitor.looper.MonitorInfo"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/og;->Df:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/om;->f(Ljava/lang/Thread;)Z

    iput-object v1, p0, Lcom/tencent/bugly/proguard/oj;->Dn:Lcom/tencent/bugly/proguard/oc;

    return-void
.end method
