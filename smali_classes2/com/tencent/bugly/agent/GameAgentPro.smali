.class public Lcom/tencent/bugly/agent/GameAgentPro;
.super Ljava/lang/Object;


# static fields
.field private static an:Lcom/tencent/feedback/eup/CrashHandleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/s;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/bugly/proguard/s;->aj:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/library/BuglyBuilder;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/library/BuglyBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iput-object p2, v1, Lcom/tencent/bugly/library/BuglyBuilder;->appVersion:Ljava/lang/String;

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    iput-object p3, v1, Lcom/tencent/bugly/library/BuglyBuilder;->buildNumber:Ljava/lang/String;

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    iput-object p4, v1, Lcom/tencent/bugly/library/BuglyBuilder;->uniqueId:Ljava/lang/String;

    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    iput-object p5, v1, Lcom/tencent/bugly/library/BuglyBuilder;->userId:Ljava/lang/String;

    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iput-object p6, v1, Lcom/tencent/bugly/library/BuglyBuilder;->deviceModel:Ljava/lang/String;

    :cond_6
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    iput-object p7, v1, Lcom/tencent/bugly/library/BuglyBuilder;->appVersionType:Ljava/lang/String;

    :cond_7
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    iput-object p8, v1, Lcom/tencent/bugly/library/BuglyBuilder;->appChannel:Ljava/lang/String;

    :cond_8
    iput-boolean p9, v1, Lcom/tencent/bugly/library/BuglyBuilder;->debugMode:Z

    iput p10, v1, Lcom/tencent/bugly/library/BuglyBuilder;->logLevel:I

    if-eqz p11, :cond_9

    array-length p0, p11

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_9

    aget-object p2, p11, p1

    invoke-virtual {v1, p2}, Lcom/tencent/bugly/library/BuglyBuilder;->addMonitor(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/tencent/bugly/agent/GameAgentPro;->an:Lcom/tencent/feedback/eup/CrashHandleListener;

    if-eqz p0, :cond_a

    invoke-virtual {v1, p0}, Lcom/tencent/bugly/library/BuglyBuilder;->setCrashHandleListener(Lcom/tencent/feedback/eup/CrashHandleListener;)V

    :cond_a
    invoke-static {v0, v1}, Lcom/tencent/bugly/library/Bugly;->init(Landroid/content/Context;Lcom/tencent/bugly/library/BuglyBuilder;)Z

    :cond_b
    :goto_1
    return-void
.end method

.method public static launchAddTagAgent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/launch/AppLaunchProxy;->getAppLaunch()Lcom/tencent/bugly/launch/AppLaunch;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/bugly/launch/AppLaunch;->addTag(Ljava/lang/String;)V

    return-void
.end method

.method public static launchSpanEndAgent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/launch/AppLaunchProxy;->getAppLaunch()Lcom/tencent/bugly/launch/AppLaunch;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/bugly/launch/AppLaunch;->spanEnd(Ljava/lang/String;)V

    return-void
.end method

.method public static launchSpanStartAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/launch/AppLaunchProxy;->getAppLaunch()Lcom/tencent/bugly/launch/AppLaunch;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/bugly/launch/AppLaunch;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static postExceptionAgent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/bugly/library/Bugly;->postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/s;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static putUserDataAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/library/Bugly;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static reportAppFullLaunchAgent()V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/launch/AppLaunchProxy;->getAppLaunch()Lcom/tencent/bugly/launch/AppLaunch;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/bugly/launch/AppLaunch;->reportAppFullLaunch()V

    return-void
.end method

.method public static setAdditionalAttachmentPathsAgent([Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/library/Bugly;->setAdditionalAttachmentPaths([Ljava/lang/String;)Z

    move-result p0

    const-string v0, "set additional attachment "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Bugly_Init"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setCrashHandlerListenerAgent(Lcom/tencent/feedback/eup/CrashHandleListener;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/agent/GameAgentPro;->an:Lcom/tencent/feedback/eup/CrashHandleListener;

    return-void
.end method

.method public static setGameType(I)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/s;->setGameType(I)V

    return-void
.end method

.method public static startInspectLeakObjAgent(Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/library/Bugly;->startInspectLeakObj(Ljava/lang/Object;)V

    return-void
.end method

.method public static updateLogLevelAgent(I)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/library/Bugly;->updateLogLevel(I)V

    return-void
.end method

.method public static updateUniqueIdAgent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/bugly/library/Bugly;->updateUniqueId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserIdAgent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/bugly/library/Bugly;->updateUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
