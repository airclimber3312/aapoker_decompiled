.class public final Lcom/tencent/bugly/proguard/ot;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\n2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012J\u0016\u0010\u0013\u001a\u00020\n2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012J\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\nJ\u0008\u0010\u0018\u001a\u00020\u000fH\u0002J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002J\u0016\u0010\u001b\u001a\u00020\u000f2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012J\u0006\u0010\u001c\u001a\u00020\u000fJ\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0008J\u000e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$J\u0016\u0010%\u001a\u00020\u000f2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012J\u0006\u0010&\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/tencent/rmonitor/manager/RMonitorLauncher;",
        "",
        "()V",
        "TAG",
        "",
        "configLoadListener",
        "Lcom/tencent/rmonitor/base/config/IConfigLoadListener;",
        "environmentChecker",
        "Lcom/tencent/rmonitor/manager/EnvironmentChecker;",
        "hasPreLaunched",
        "",
        "isMonitorInitiated",
        "pluginManager",
        "Lcom/tencent/rmonitor/manager/IPluginManager;",
        "abolish",
        "",
        "checkAllDesiredPluginStarted",
        "monitorList",
        "",
        "checkSomeDesiredPluginStarted",
        "getPlugin",
        "Lcom/tencent/rmonitor/base/plugin/monitor/QAPMMonitorPlugin;",
        "pluginName",
        "needRegister",
        "initConfigListener",
        "initCrashInfo",
        "initLifecycleCallback",
        "launch",
        "preLaunch",
        "setEnvironmentChecker",
        "checker",
        "setPluginFactory",
        "pluginFactory",
        "Lcom/tencent/rmonitor/manager/PluginFactory;",
        "setQAPMPluginManager",
        "manager",
        "Lcom/tencent/rmonitor/manager/RMonitorPluginManager;",
        "stop",
        "stopDisabledPlugins",
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
.field public static DL:Lcom/tencent/bugly/proguard/oo;

.field public static DM:Lcom/tencent/bugly/proguard/op;

.field public static DN:Z

.field private static volatile DO:Z

.field private static DP:Lcom/tencent/bugly/proguard/gj;

.field public static final DQ:Lcom/tencent/bugly/proguard/ot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ot;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ot;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    new-instance v0, Lcom/tencent/bugly/proguard/oo;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/oo;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ot;->DL:Lcom/tencent/bugly/proguard/oo;

    new-instance v0, Lcom/tencent/bugly/proguard/ou;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ou;-><init>()V

    check-cast v0, Lcom/tencent/bugly/proguard/op;

    sput-object v0, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RMonitor_manager_Launcher"

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "stop plugins of "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v1, v0}, Lcom/tencent/bugly/proguard/op;->bv(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "none plugin to stop."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public static C(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v2, v1}, Lcom/tencent/bugly/proguard/op;->bw(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static D(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v3, v2}, Lcom/tencent/bugly/proguard/op;->bw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static a(Lcom/tencent/bugly/proguard/os;)V
    .locals 1

    const-string v0, "pluginFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v0, p0}, Lcom/tencent/bugly/proguard/op;->a(Lcom/tencent/bugly/proguard/os;)V

    return-void
.end method

.method public static eK()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_manager_Launcher"

    const-string v2, "abolish"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hv;->uJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/hv;->uM:Lcom/tencent/bugly/proguard/hv;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/op;->id()V

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->T()V

    return-void
.end method

.method public static ig()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/tencent/bugly/proguard/gm;->sV:Lcom/tencent/bugly/proguard/gm$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/gm$a;->eV()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/gh;

    iget-object v3, v2, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget-boolean v3, v3, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_manager_Launcher"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stop disabled plugins {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v2, v1}, Lcom/tencent/bugly/proguard/op;->bv(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized if()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_manager_Launcher"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "preLaunch, hasPreLaunched: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/tencent/bugly/proguard/ot;->DO:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/bugly/proguard/ot;->DO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ra;->jl()Lcom/tencent/bugly/proguard/ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ra;->jp()V

    sput-boolean v4, Lcom/tencent/bugly/proguard/ot;->DO:Z

    sget-object v0, Lcom/tencent/bugly/proguard/cb;->er:Lcom/tencent/bugly/proguard/cb$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cb$a;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Landroid/app/Application;)V

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ij;->vK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/entrance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/authorize/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/bugly/proguard/ij;->vL:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bz;->c(Landroid/content/Context;)V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    sget-object v2, Lcom/tencent/bugly/proguard/kq;->yT:Lcom/tencent/bugly/proguard/kq;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kq;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->buildNumber:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    sget-object v2, Lcom/tencent/bugly/proguard/kq;->yT:Lcom/tencent/bugly/proguard/kq;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kq;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/am;->buildNumber:Ljava/lang/String;

    :cond_5
    sget-object v1, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ku;->c(Landroid/app/Application;)V

    sget-object v1, Lcom/tencent/bugly/proguard/av;->cv:Lcom/tencent/bugly/proguard/av;

    new-instance v1, Lcom/tencent/bugly/proguard/ko;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ko;-><init>()V

    check-cast v1, Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/av;->a(Ljavax/net/ssl/HostnameVerifier;)V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/id$a;->fF()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/hw;->uQ:Lcom/tencent/bugly/proguard/hw$a;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/hw$a;->O(Landroid/content/Context;)Lcom/tencent/bugly/proguard/hw;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    const/4 v1, 0x0

    :goto_2
    :try_start_3
    sput-object v1, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/am;->Q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsonString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    sput-object v2, Lcom/tencent/bugly/proguard/id;->vo:Lorg/json/JSONObject;

    sget-object v1, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ci$a;->k(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-static {}, Lcom/tencent/bugly/proguard/km;->gk()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/rmonitor/common/logger/NativeLogger;->initLogLevel(I)I

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v1

    const-string v2, "PrivacyInformation.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ay;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/am;->m(Ljava/lang/String;)V

    :cond_6
    sget-object v0, Lcom/tencent/bugly/proguard/id;->vq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_7
    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    if-eqz v0, :cond_8

    const-string v1, "BuglySdkInfos"

    invoke-virtual {v0, v1, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "application.getSharedPre\u2026s\", Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "730dcb1b75"

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/am;->bD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    invoke-static {}, Lcom/tencent/bugly/proguard/no;->hD()Lcom/tencent/bugly/proguard/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/no;->hE()V

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DP:Lcom/tencent/bugly/proguard/gj;

    if-nez v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/proguard/ot$a;->DR:Lcom/tencent/bugly/proguard/ot$a;

    check-cast v0, Lcom/tencent/bugly/proguard/gj;

    sput-object v0, Lcom/tencent/bugly/proguard/ot;->DP:Lcom/tencent/bugly/proguard/gj;

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/ot;->DP:Lcom/tencent/bugly/proguard/gj;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gd;->a(Lcom/tencent/bugly/proguard/gj;)V

    :cond_9
    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/or;->m(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ra;->jl()Lcom/tencent/bugly/proguard/ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ra;->jq()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
