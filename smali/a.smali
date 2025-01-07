.class public La;
.super Ljava/lang/Object;
.source "BuglyWrapper.java"


# static fields
.field public static volatile a:La;


# instance fields
.field public final b:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;

.field public final c:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, La$a;

    invoke-direct {v0, p0}, La$a;-><init>(La;)V

    iput-object v0, p0, La;->b:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;

    .line 202
    new-instance v0, La$b;

    invoke-direct {v0, p0}, La$b;-><init>(La;)V

    iput-object v0, p0, La;->c:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;

    return-void
.end method

.method public static b()La;
    .locals 2

    .line 1
    sget-object v0, La;->a:La;

    if-nez v0, :cond_1

    .line 2
    const-class v0, La;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, La;->a:La;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, La;

    invoke-direct {v1}, La;-><init>()V

    sput-object v1, La;->a:La;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, La;->a:La;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "device_id"

    .line 31
    invoke-virtual {p0, p1, v0}, La;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0, p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public a(I)V
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/tencent/bugly/library/Bugly;->testCrash(I)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 30
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/bugly/library/Bugly;->postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p1, p2}, Lcom/tencent/bugly/library/Bugly;->updateUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bugly_prefs"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/bugly/library/BuglyBuilder;

    invoke-direct {v0, p2, p3}, Lcom/tencent/bugly/library/BuglyBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, La;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, La;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->uniqueId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, La;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->buildNumber:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lcom/tencent/bugly/library/BuglyBuilder;->appVersion:Ljava/lang/String;

    const-string p2, "Release"

    .line 7
    iput-object p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->appVersionType:Ljava/lang/String;

    .line 8
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->deviceModel:Ljava/lang/String;

    .line 9
    sget p2, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_ERROR:I

    iput p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->logLevel:I

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->debugMode:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->enableCrashProtect:Z

    .line 13
    iput-boolean p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->enableAllThreadStackAnr:Z

    .line 14
    iput-boolean p2, v0, Lcom/tencent/bugly/library/BuglyBuilder;->enableAllThreadStackCrash:Z

    .line 16
    invoke-static {p1, v0}, Lcom/tencent/bugly/library/Bugly;->init(Landroid/content/Context;Lcom/tencent/bugly/library/BuglyBuilder;)Z

    .line 26
    iget-object p1, p0, La;->c:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;

    invoke-static {p1}, Lcom/tencent/bugly/library/Bugly;->addCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;)V

    .line 27
    iget-object p1, p0, La;->b:Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;

    invoke-static {p1}, Lcom/tencent/bugly/library/Bugly;->addCustomDataCollector(Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/tencent/bugly/library/Bugly;->updateLogLevel(I)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-static {p1, p2}, Lcom/tencent/bugly/library/Bugly;->updateUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "bugly_prefs"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 2
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
