.class public final Lcom/tencent/bugly/proguard/id$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0007J\u0008\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0004H\u0007J\u0008\u0010#\u001a\u00020 H\u0007J\u0008\u0010$\u001a\u00020 H\u0007J\u0008\u0010%\u001a\u00020&H\u0007J\u0008\u0010\'\u001a\u00020 H\u0007R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001a8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/meta/BaseInfo$Info;",
        "",
        "()V",
        "TAG",
        "",
        "TAG$annotations",
        "getTAG",
        "()Ljava/lang/String;",
        "setTAG",
        "(Ljava/lang/String;)V",
        "app",
        "Landroid/app/Application;",
        "dbHelper",
        "Lcom/tencent/rmonitor/base/db/DBHelper;",
        "editor",
        "Lcom/tencent/rmonitor/common/util/AsyncSPEditor;",
        "hasInit",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "is64Bit",
        "",
        "Ljava/lang/Boolean;",
        "pubJson",
        "Lorg/json/JSONObject;",
        "sharePreference",
        "Landroid/content/SharedPreferences;",
        "urlMeta",
        "Lcom/tencent/rmonitor/base/meta/UrlMeta;",
        "userMeta",
        "Lcom/tencent/bugly/common/meta/UserMeta;",
        "getConfigUrl",
        "version",
        "initInfo",
        "",
        "initPubJson",
        "jsonString",
        "initSp",
        "initUrl",
        "makeBaseDBParam",
        "Lcom/tencent/rmonitor/base/db/BaseDBParam;",
        "reset",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/id$a;-><init>()V

    return-void
.end method

.method public static fE()Lcom/tencent/bugly/proguard/hs;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/tencent/bugly/proguard/hs;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hs;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->appVersion:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->bA:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    return-object v0
.end method

.method public static fF()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v2

    sget-object v3, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v3, Landroid/content/Context;

    const-string v4, "RMonitor_SP"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    new-instance v2, Lcom/tencent/bugly/proguard/kr;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Lcom/tencent/bugly/proguard/kr;-><init>(Landroid/content/SharedPreferences$Editor;)V

    sput-object v2, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->bB:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v3

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v4, Landroid/content/Context;

    const-string v6, "BUGLY_COMMON_VALUES"

    invoke-virtual {v3, v4, v6, v5}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/am;->bC:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/id;->fD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    :cond_1
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    return-void
.end method
