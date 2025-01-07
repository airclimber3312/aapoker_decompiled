.class public Lcom/tencent/bugly/library/Bugly;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/library/BuglyConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abolishPerformanceMonitors()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bugly_Init"

    const-string v1, "abolish monitors failed, pls init monitor first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->eK()V

    return-void
.end method

.method public static addCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "add custom data collector failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd8

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/gb;->b(ILjava/lang/Object;)Z

    return-void
.end method

.method public static addCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "add custom data collector failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd9

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/gb;->b(ILjava/lang/Object;)Z

    return-void
.end method

.method public static enterScene(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "enter scene failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->enterScene(Ljava/lang/String;)V

    return-void
.end method

.method public static exitScene(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "exit scene failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->exitScene(Ljava/lang/String;)V

    return-void
.end method

.method public static getGlobalCustomDataEditor()Lcom/tencent/rmonitor/custom/ICustomDataEditor;
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bugly_Init"

    const-string v1, "get global custom data editor failed, pls init monitor first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->getGlobalCustomDataEditor()Lcom/tencent/rmonitor/custom/ICustomDataEditor;

    move-result-object v0

    return-object v0
.end method

.method public static handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "handle catch exception failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/bugly/proguard/ft;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z

    move-result p0

    return p0
.end method

.method public static handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "handle catch exception failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/ft;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/bugly/library/BuglyBuilder;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/library/Bugly;->init(Landroid/content/Context;Lcom/tencent/bugly/library/BuglyBuilder;Z)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/bugly/library/BuglyBuilder;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "Bugly init failed, please make sure Bugly builder not null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "initJsonProtocol"

    const-string v3, "RMonitor_init"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->es()V

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "initConfig"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/cu;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/cu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/go;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/go;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/gp;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/gp;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/gn;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/gn;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/gq;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/gq;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/gt$a;->fa()Lcom/tencent/bugly/proguard/gt;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ac;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "initPluginFactory"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    new-instance v1, Lcom/tencent/bugly/proguard/ew;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ew;-><init>()V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ot;->a(Lcom/tencent/bugly/proguard/os;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appVersion:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ft;->k(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->userId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ft;->h(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->uniqueId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ft;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->buildNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ft;->as(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->deviceModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ft;->j(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->enableAllThreadStackCrash:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->enableAllThreadStackAnr:Z

    invoke-static {p0, v1, v2}, Lcom/tencent/bugly/proguard/ft;->a(Landroid/content/Context;ZZ)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appId:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->debugMode:Z

    iget-object v3, p1, Lcom/tencent/bugly/library/BuglyBuilder;->oq:Lcom/tencent/bugly/proguard/fv;

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ft;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/proguard/fv;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appChannel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ft;->l(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->hotPatchNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ft;->at(Ljava/lang/String;)V

    const/16 v1, 0x6b

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/gb;->a(ILjava/lang/Object;)Z

    const/16 v1, 0x64

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x65

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x67

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x6d

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->buildNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x66

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->userId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x6a

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    const/16 v1, 0x71

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->deviceModel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    iget v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->logLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/gb;->a(ILjava/lang/Object;)Z

    const/16 v1, 0x70

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appVersionType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    iget-boolean v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->enableCrashProtect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd6

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/gb;->a(ILjava/lang/Object;)Z

    const/16 v1, 0x6f

    iget-object v2, p1, Lcom/tencent/bugly/library/BuglyBuilder;->spProvider:Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/gb;->a(ILjava/lang/Object;)Z

    iget-object v1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->op:Ljava/util/List;

    if-eqz p2, :cond_1

    const-string p2, "sub_memory_quantile"

    goto :goto_0

    :cond_1
    const-string p2, "memory_quantile"

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/tencent/bugly/library/BuglyBuilder;->appId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/or;->m(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gb;->r(Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "post Exception failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/proguard/ft;->postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "post Exception failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/bugly/proguard/ft;->postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "put user data failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/ft;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reRegisterHandler()Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->reRegisterHandler()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "Bugly_Init"

    const-string v1, "reRegisterHandler failed, pls init monitor first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static removeCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "remove custom data collector failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd8

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/gb;->c(ILjava/lang/Object;)Z

    return-void
.end method

.method public static removeCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "remove custom data collector failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xd9

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/gb;->c(ILjava/lang/Object;)Z

    return-void
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "remove user data failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ft;->removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalAttachmentPaths([Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "set additional attachment paths failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ft;->setAdditionalAttachmentPaths([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setCaseLabels(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "set case labels fail, pls init bugly first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ft;->setCaseLabels(Ljava/lang/String;)V

    return-void
.end method

.method public static setCrashMonitorAble(IZ)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    const-string v1, "Bugly_Init"

    if-nez v0, :cond_0

    const-string p0, "set crash monitor able failed, pls init monitor first!"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "Crash monitor able set failed, please check crash type."

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ft;->v(Z)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ft;->u(Z)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ft;->t(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setPerformanceMonitorAble(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "set performance monitors able failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->av(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->aw(Ljava/lang/String;)V

    return-void
.end method

.method public static setPerformanceMonitorsAble(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string p1, "set performance monitors able failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->r(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/gb;->s(Ljava/util/List;)V

    return-void
.end method

.method public static setTestLabels(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "set test labels fail, pls init bugly first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ft;->setTestLabels(Ljava/lang/String;)V

    return-void
.end method

.method public static startInspectLeakObj(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "start inspect leak obj failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/pb;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/pb;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/pc;->a(Ljava/lang/Object;Lcom/tencent/bugly/proguard/it;)V

    return-void
.end method

.method public static testCrash(I)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    const-string v1, "Bugly_Init"

    if-nez v0, :cond_0

    const-string p0, "test crash failed, pls init monitor first!"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "test crash failed, please check crash type."

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->er()V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->dj()V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->eq()V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static updateDeviceModel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ft;->j(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p0, 0x71

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "Bugly_Init"

    const-string p1, "update device model failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLogLevel(I)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Bugly_Init"

    const-string v0, "update log level failed, pls init monitor first!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x68

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/gb;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public static updateUniqueId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ft;->i(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p0, 0x6a

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "Bugly_Init"

    const-string p1, "update unique id failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->ep()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/gb;->ep()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ft;->h(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p0, 0x66

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/gb;->f(ILjava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "Bugly_Init"

    const-string p1, "update user id failed, pls init monitor first!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
