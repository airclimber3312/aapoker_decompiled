.class public final Lcom/tencent/bugly/proguard/nx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ai;
.implements Lcom/tencent/bugly/proguard/oc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nx$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0001)B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0017H\u0002J\u0008\u0010\u001b\u001a\u00020\u0013H\u0002J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0012\u0010\u001d\u001a\u00020\u00152\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J \u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0017H\u0016J\u0018\u0010#\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0017H\u0016J\u001e\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\u000fJ\u0006\u0010(\u001a\u00020\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/LooperObserver;",
        "Lcom/tencent/bugly/common/looper/ILooperDispatchListener;",
        "Lcom/tencent/rmonitor/looper/listener/IMonitorCallback;",
        "lagParam",
        "Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "(Lcom/tencent/rmonitor/looper/provider/LagParam;)V",
        "getLagParam",
        "()Lcom/tencent/rmonitor/looper/provider/LagParam;",
        "setLagParam",
        "looperName",
        "",
        "monitorCallback",
        "monitoredLooper",
        "Landroid/os/Looper;",
        "msgSampling",
        "Lcom/tencent/rmonitor/looper/listener/ILooperMsgSampling;",
        "needDispatch",
        "",
        "stackProvider",
        "Lcom/tencent/rmonitor/looper/provider/LooperStackProvider;",
        "dispatchEnd",
        "",
        "endTime",
        "",
        "cost",
        "dispatchStart",
        "startTime",
        "getStackProvider",
        "isOpen",
        "onAfterStack",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "onDispatchEnd",
        "msg",
        "duration",
        "onDispatchStart",
        "prepare",
        "looper",
        "callback",
        "sampling",
        "stop",
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
.field public static final Cz:Lcom/tencent/bugly/proguard/nx$a;


# instance fields
.field Cp:Lcom/tencent/bugly/proguard/oh;

.field Ct:Ljava/lang/String;

.field Cu:Lcom/tencent/bugly/proguard/ob;

.field Cv:Landroid/os/Looper;

.field Cw:Lcom/tencent/bugly/proguard/oi;

.field Cx:Lcom/tencent/bugly/proguard/oc;

.field private Cy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/nx$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/nx$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/nx;->Cz:Lcom/tencent/bugly/proguard/nx$a;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/oh;)V
    .locals 4

    const-string v0, "lagParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nx;->Cp:Lcom/tencent/bugly/proguard/oh;

    sget-object p1, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gw;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    check-cast p1, Lcom/tencent/bugly/proguard/gw;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/gw;->fd()F

    move-result p1

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    new-instance p1, Lcom/tencent/bugly/proguard/ok;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/ok;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ok;->ib()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_Observer"

    const-string v2, "getStackProvider, QuickStackProvider"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/bugly/proguard/ol;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/ol;-><init>()V

    :goto_0
    check-cast p1, Lcom/tencent/bugly/proguard/oi;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nx;->Cw:Lcom/tencent/bugly/proguard/oi;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/nx;->Cy:Z

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/nx;)Lcom/tencent/bugly/proguard/oc;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/nx;->Cx:Lcom/tencent/bugly/proguard/oc;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/nz;)V
    .locals 5

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_looper_Observer"

    const-string v1, "onAfterStack, in debugger mode."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/nz;->CG:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/nx;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/oh;->threshold:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v0, Lcom/tencent/bugly/proguard/nx$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/nx$b;-><init>(Lcom/tencent/bugly/proguard/nx;Lcom/tencent/bugly/proguard/nz;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 0

    const-string p2, "msg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nx;->Cu:Lcom/tencent/bugly/proguard/ob;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/bugly/proguard/ob;->hP()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/nx;->Cy:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nx;->Cw:Lcom/tencent/bugly/proguard/oi;

    invoke-interface {p1}, Lcom/tencent/bugly/proguard/oi;->hX()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/nx;->Cy:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nx;->Cw:Lcom/tencent/bugly/proguard/oi;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/tencent/bugly/proguard/oi;->c(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/nx;->Cy:Z

    return-void
.end method
