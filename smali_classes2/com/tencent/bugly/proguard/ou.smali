.class public final Lcom/tencent/bugly/proguard/ou;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/op;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ou$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH\u0002J\u001c\u0010\r\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u0012\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0008H\u0002J\u0012\u0010\u001b\u001a\u00020\u00142\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u001c\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/tencent/rmonitor/manager/RMonitorPluginManager;",
        "Lcom/tencent/rmonitor/manager/IPluginManager;",
        "()V",
        "pluginFactory",
        "Lcom/tencent/rmonitor/manager/PluginFactory;",
        "plugins",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/tencent/rmonitor/base/plugin/monitor/QAPMMonitorPlugin;",
        "startedPlugin",
        "",
        "allRegisteredPlugins",
        "",
        "getPlugin",
        "needRegister",
        "",
        "pluginName",
        "getPluginFactory",
        "isPluginStart",
        "registerPluginInner",
        "",
        "pluginConfig",
        "Lcom/tencent/rmonitor/base/config/DefaultPluginConfig;",
        "setPluginFactory",
        "start",
        "startMonitor",
        "plugin",
        "stop",
        "stopAll",
        "stopMonitor",
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
.field public static final DV:Lcom/tencent/bugly/proguard/ou$a;


# instance fields
.field private final DS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/iy;",
            ">;"
        }
    .end annotation
.end field

.field private final DT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/iy;",
            ">;"
        }
    .end annotation
.end field

.field private DU:Lcom/tencent/bugly/proguard/os;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ou$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ou$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ou;->DV:Lcom/tencent/bugly/proguard/ou$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ou;->DS:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    return-void
.end method

.method private final a(Lcom/tencent/bugly/proguard/iy;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/iy;->stop()V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RMonitor_manager_PluginMng"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/bugly/proguard/iy;->wh:Lcom/tencent/bugly/proguard/gh;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private d(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/iy;
    .locals 9

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/cb;->er:Lcom/tencent/bugly/proguard/cb$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cb$a;->aL()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    const-string v2, "RMonitor_manager_PluginMng"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    sget-object v5, Lcom/tencent/bugly/proguard/gm;->sV:Lcom/tencent/bugly/proguard/gm$a;

    const-string v5, "pluginName"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gm$a;->eV()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/tencent/bugly/proguard/gh;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    move-object v6, v1

    :goto_0
    check-cast v6, Lcom/tencent/bugly/proguard/gh;

    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ou;->DS:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v6, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ou;->DU:Lcom/tencent/bugly/proguard/os;

    if-nez v5, :cond_5

    new-instance v5, Lcom/tencent/bugly/proguard/on;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/on;-><init>()V

    check-cast v5, Lcom/tencent/bugly/proguard/os;

    iput-object v5, p0, Lcom/tencent/bugly/proguard/ou;->DU:Lcom/tencent/bugly/proguard/os;

    :cond_5
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ou;->DU:Lcom/tencent/bugly/proguard/os;

    if-eqz v5, :cond_6

    invoke-interface {v5, v6}, Lcom/tencent/bugly/proguard/os;->a(Lcom/tencent/bugly/proguard/gh;)Lcom/tencent/bugly/proguard/iy;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ou;->DS:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v5, Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v1, Lcom/tencent/bugly/proguard/iy;->wh:Lcom/tencent/bugly/proguard/gh;

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v4, [Ljava/lang/String;

    aput-object v2, v5, v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "register module "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " success."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ou;->DS:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/iy;

    if-eqz p1, :cond_8

    if-nez v1, :cond_8

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is null."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/os;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ou;->DU:Lcom/tencent/bugly/proguard/os;

    :cond_0
    return-void
.end method

.method public final bu(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/ou;->d(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/iy;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_manager_PluginMng"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "start plugin fail for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ou;->bw(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/iy;->start()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RMonitor_manager_PluginMng"

    aput-object v5, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "start "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/tencent/bugly/proguard/iy;->wh:Lcom/tencent/bugly/proguard/gh;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_manager_PluginMng"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "plugin not need to start for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has started before."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method public final bv(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/ou;->d(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/iy;

    move-result-object v1

    const-string v2, "plugin not need to stop for "

    const/4 v3, 0x1

    const-string v4, "RMonitor_manager_PluginMng"

    const/4 v5, 0x2

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ou;->bw(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/ou;->a(Lcom/tencent/bugly/proguard/iy;)V

    return-void

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not started before."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method public final bw(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/ou;->d(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/iy;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ou;->DT:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final id()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ou;->DS:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/iy;

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/iy;

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/ou;->a(Lcom/tencent/bugly/proguard/iy;)V

    goto :goto_1

    :cond_2
    return-void
.end method
