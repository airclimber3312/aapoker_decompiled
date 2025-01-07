.class public final Lcom/tencent/bugly/proguard/nw;
.super Lcom/tencent/bugly/proguard/ja;

# interfaces
.implements Lcom/tencent/bugly/proguard/ob;
.implements Lcom/tencent/bugly/proguard/oc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nw$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0012H\u0016J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/LooperMonitor;",
        "Lcom/tencent/rmonitor/base/plugin/monitor/RMonitorPlugin;",
        "Lcom/tencent/rmonitor/looper/listener/IMonitorCallback;",
        "Lcom/tencent/rmonitor/looper/listener/ILooperMsgSampling;",
        "()V",
        "isStart",
        "",
        "lagParam",
        "Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "looperObserver",
        "Lcom/tencent/rmonitor/looper/LooperObserver;",
        "resumeFlag",
        "",
        "getPluginName",
        "",
        "isResume",
        "isRunning",
        "onAfterStack",
        "",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "pause",
        "resume",
        "start",
        "stop",
        "whetherMsgSampling",
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
.field public static final Cs:Lcom/tencent/bugly/proguard/nw$a;


# instance fields
.field private Cp:Lcom/tencent/bugly/proguard/oh;

.field private Cq:Lcom/tencent/bugly/proguard/nx;

.field private Cr:I

.field private aJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/nw$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/nw$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/nw;->Cs:Lcom/tencent/bugly/proguard/nw$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ja;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/oh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/oh;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/nz;)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/ny;->CD:Lcom/tencent/bugly/proguard/ny;

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ny;->c(Lcom/tencent/bugly/proguard/nz;)Z

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ny;->b(Lcom/tencent/bugly/proguard/nz;)V

    :cond_1
    return-void
.end method

.method public final ao()Ljava/lang/String;
    .locals 1

    const-string v0, "looper_stack"

    return-object v0
.end method

.method public final hP()Z
    .locals 4

    iget v0, p0, Lcom/tencent/bugly/proguard/nw;->Cr:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    invoke-static {}, Lcom/tencent/bugly/proguard/nv;->hO()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public final start()V
    .locals 9

    sget-object v0, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    const/16 v0, 0x66

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nv;->K(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "RMonitor_looper_Monitor"

    const-string v4, "start, can not collect"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/nw;->aJ:Z

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/nw;->y(I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/nw;->aJ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_Monitor"

    const-string v2, "has started yet."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    const-string v0, "looper_stack"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nv;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    instance-of v3, v0, Lcom/tencent/bugly/proguard/gw;

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lcom/tencent/bugly/proguard/gw;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget v4, v0, Lcom/tencent/bugly/proguard/gw;->tV:I

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/tencent/bugly/proguard/oh;->threshold:J

    iget-object v3, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/gw;->fe()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/proguard/oh;->Dk:J

    iget-object v3, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/gw;->fj()Z

    move-result v0

    iput-boolean v0, v3, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    const-wide/16 v3, 0xc8

    iput-wide v3, v0, Lcom/tencent/bugly/proguard/oh;->threshold:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    const-wide/16 v3, 0x34

    iput-wide v3, v0, Lcom/tencent/bugly/proguard/oh;->Dk:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    iput-boolean v2, v0, Lcom/tencent/bugly/proguard/oh;->Dl:Z

    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "RMonitor_looper_Monitor"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start lagParam: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/nx;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/nw;->Cp:Lcom/tencent/bugly/proguard/oh;

    invoke-direct {v0, v4}, Lcom/tencent/bugly/proguard/nx;-><init>(Lcom/tencent/bugly/proguard/oh;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cq:Lcom/tencent/bugly/proguard/nx;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const-string v5, "Looper.getMainLooper()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lcom/tencent/bugly/proguard/oc;

    move-object v6, p0

    check-cast v6, Lcom/tencent/bugly/proguard/ob;

    const-string v7, "looper"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "callback"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "sampling"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/tencent/bugly/proguard/nx;->Cv:Landroid/os/Looper;

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    const-string v8, "looper.thread"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "looper.thread.name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/tencent/bugly/proguard/nx;->Ct:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/bugly/proguard/nx;->Cx:Lcom/tencent/bugly/proguard/oc;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/nx;->Cw:Lcom/tencent/bugly/proguard/oi;

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v7, "looper.thread"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/tencent/bugly/proguard/nx;->Cp:Lcom/tencent/bugly/proguard/oh;

    move-object v8, v0

    check-cast v8, Lcom/tencent/bugly/proguard/oc;

    invoke-interface {v5, v4, v7, v8}, Lcom/tencent/bugly/proguard/oi;->a(Ljava/lang/Thread;Lcom/tencent/bugly/proguard/oh;Lcom/tencent/bugly/proguard/oc;)Z

    iput-object v6, v0, Lcom/tencent/bugly/proguard/nx;->Cu:Lcom/tencent/bugly/proguard/ob;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/nx;->Cv:Landroid/os/Looper;

    if-eqz v4, :cond_4

    sget-object v5, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    move-object v5, v0

    check-cast v5, Lcom/tencent/bugly/proguard/ai;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/aj$a;->a(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V

    :cond_4
    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v3, [Ljava/lang/String;

    const-string v6, "RMonitor_looper_Observer"

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prepare, looperName["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nx;->Ct:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v7, "looperName"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cq:Lcom/tencent/bugly/proguard/nx;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/nw;->aJ:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/nw;->y(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/nw;->y(I)V

    :goto_2
    iget v0, p0, Lcom/tencent/bugly/proguard/nw;->Cr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/proguard/nw;->Cr:I

    if-nez v1, :cond_8

    iput v3, p0, Lcom/tencent/bugly/proguard/nw;->Cr:I

    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final stop()V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_Monitor"

    const-string v2, "stop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nw;->Cq:Lcom/tencent/bugly/proguard/nx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/bugly/proguard/nx;->Cv:Landroid/os/Looper;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    move-object v4, v0

    check-cast v4, Lcom/tencent/bugly/proguard/ai;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/aj$a;->b(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V

    :cond_0
    iput-object v2, v0, Lcom/tencent/bugly/proguard/nx;->Cv:Landroid/os/Looper;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/nx;->Cw:Lcom/tencent/bugly/proguard/oi;

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/oi;->stop()V

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "RMonitor_looper_Observer"

    aput-object v5, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stop, looperName["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nx;->Ct:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v6, "looperName"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_2
    iput-object v2, p0, Lcom/tencent/bugly/proguard/nw;->Cq:Lcom/tencent/bugly/proguard/nx;

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/nw;->aJ:Z

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/nw;->fM()V

    return-void
.end method
