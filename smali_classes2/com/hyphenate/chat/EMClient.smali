.class public Lcom/hyphenate/chat/EMClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMClient$CheckResultListener;,
        Lcom/hyphenate/chat/EMClient$AppStateListener;,
        Lcom/hyphenate/chat/EMClient$MyConnectionListener;,
        Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;,
        Lcom/hyphenate/chat/EMClient$ClientLogListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EMClient"

.field public static final VERSION:Ljava/lang/String; = "4.7.0"

.field private static volatile instance:Lcom/hyphenate/chat/EMClient; = null

.field static libraryLoaded:Z = false


# instance fields
.field private appStateListener:Lcom/hyphenate/chat/EMClient$AppStateListener;

.field private chatManager:Lcom/hyphenate/chat/EMChatManager;

.field private chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

.field private clientLogListener:Lcom/hyphenate/chat/EMClient$ClientLogListener;

.field private connManager:Landroid/net/ConnectivityManager;

.field private connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

.field private connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private contactManager:Lcom/hyphenate/chat/EMContactManager;

.field private currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

.field private duringChecking:Z

.field private emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

.field private encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private groupManager:Lcom/hyphenate/chat/EMGroupManager;

.field private logListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMLogListener;",
            ">;"
        }
    .end annotation
.end field

.field private logQueue:Ljava/util/concurrent/ExecutorService;

.field private mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

.field private mContext:Landroid/content/Context;

.field private mIsLoginWithToken:Z

.field private mainQueue:Ljava/util/concurrent/ExecutorService;

.field private multiDeviceListenerImpl:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

.field private multiDeviceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMMultiDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile presenceManager:Lcom/hyphenate/chat/EMPresenceManager;

.field private pushManager:Lcom/hyphenate/chat/EMPushManager;

.field private resumeActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private sdkInited:Z

.field private sendQueue:Ljava/util/concurrent/ExecutorService;

.field private smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

.field private statisticsManager:Lcom/hyphenate/chat/EMStatisticsManager;

.field private threadManager:Lcom/hyphenate/chat/EMChatThreadManager;

.field private translationManager:Lcom/hyphenate/chat/EMTranslationManager;

.field private userInfoManager:Lcom/hyphenate/chat/EMUserInfoManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->logQueue:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->mainQueue:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->sendQueue:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->multiDeviceListeners:Ljava/util/List;

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    new-instance v0, Lcom/hyphenate/chat/EMClient$9;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMClient$9;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->resumeActivityList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMClient;->duringChecking:Z

    return-void
.end method

.method private _loadCustomPathLibrary(Ljava/lang/String;)V
    .locals 3

    const-string v0, "_loadCustomPathLibrary: "

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v1, "EMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private _loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMClient;->_loadLibrary(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private _loadLibrary(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "_loadLibrary: "

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Linternal/com/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "EMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->saveToken()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMSmartHeartBeat;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->resumeActivityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMClient$AppStateListener;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->appStateListener:Lcom/hyphenate/chat/EMClient$AppStateListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/EMClient$CheckResultListener;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMClient;->notifyCheckResult(Lcom/hyphenate/chat/EMClient$CheckResultListener;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/hyphenate/chat/EMClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMClient;->duringChecking:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMClient;->checkLogout(Lcom/hyphenate/chat/EMClient$CheckResultListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->loadDataFromDb()V

    return-void
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/hyphenate/chat/EMClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    return p0
.end method

.method static synthetic access$500(Lcom/hyphenate/chat/EMClient;ZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMClient;->initLoginWithToken(ZLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->multiDeviceListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMChatManager;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hyphenate/chat/EMClient;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->logQueue:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    return-object p0
.end method

.method private checkLogout(Lcom/hyphenate/chat/EMClient$CheckResultListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->logout()V

    const/4 v0, 0x5

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/hyphenate/chat/EMClient;->notifyCheckResult(Lcom/hyphenate/chat/EMClient$CheckResultListener;IILjava/lang/String;)V

    :cond_0
    iput-boolean v1, p0, Lcom/hyphenate/chat/EMClient;->duringChecking:Z

    return-void
.end method

.method private getDidInfo()Ljava/lang/String;
    .locals 6

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/hyphenate/chat/EMClient;
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/EMClient;->instance:Lcom/hyphenate/chat/EMClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hyphenate/chat/EMClient;->instance:Lcom/hyphenate/chat/EMClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMClient;

    invoke-direct {v1}, Lcom/hyphenate/chat/EMClient;-><init>()V

    sput-object v1, Lcom/hyphenate/chat/EMClient;->instance:Lcom/hyphenate/chat/EMClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/hyphenate/chat/EMClient;->instance:Lcom/hyphenate/chat/EMClient;

    return-object v0
.end method

.method private handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Lcom/hyphenate/chat/adapter/EMAError;)V

    throw v0
.end method

.method private declared-synchronized initLoginWithToken(ZLjava/lang/String;J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMSessionManager;->setLoginWithTokenData(ZLjava/lang/String;J)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p1

    iget-object p2, p0, Lcom/hyphenate/chat/EMClient;->connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMSessionManager;->startCountDownTokenAvailableTime(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSessionManager;->clearLoginWithTokenData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initManagers()V
    .locals 2

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v0, v1}, Lcom/hyphenate/cloud/EMHttpClient;->onInit(Lcom/hyphenate/chat/a/a;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->setNatvieNetworkCallback()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/hyphenate/chat/EMSessionManager;->init(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMASessionManager;)V

    return-void
.end method

.method private loadDataFromDb()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/chat/EMClient;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadLibrary(Lcom/hyphenate/chat/EMOptions;)V
    .locals 3

    sget-boolean v0, Lcom/hyphenate/chat/EMClient;->libraryLoaded:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getNativeLibBasePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nativeLibBasePath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "cipherdb"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMClient;->_loadLibrary(Ljava/lang/String;Z)Z

    const-string p1, "hyphenate"

    invoke-direct {p0, p1, v1}, Lcom/hyphenate/chat/EMClient;->_loadLibrary(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libcipherdb.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->_loadCustomPathLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/libhyphenate.so"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMClient;->_loadCustomPathLibrary(Ljava/lang/String;)V

    :goto_0
    sput-boolean v1, Lcom/hyphenate/chat/EMClient;->libraryLoaded:Z

    :cond_1
    return-void
.end method

.method private notifyCheckResult(Lcom/hyphenate/chat/EMClient$CheckResultListener;IILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lcom/hyphenate/chat/EMClient$CheckResultListener;->onResult(IILjava/lang/String;)V

    return-void
.end method

.method private registerActivityLifecycleCallbacks()V
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/Utils;->isSdk14()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/EMClient$10;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMClient$10;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private releaseWakelock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "EMClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "EMClient"

    const-string v1, "released the wake lock"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private saveToken()V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getUserToken(ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->setLastLoginToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->setLastLoginWithToken(Z)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginPwd()V

    :cond_1
    return-void
.end method


# virtual methods
.method _login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;ZLcom/hyphenate/chat/EMLoginType;)V
    .locals 9

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emchat manager login in process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/EMClient$6;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/hyphenate/chat/EMClient$6;-><init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;ZLcom/hyphenate/chat/EMLoginType;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const-string p2, ""

    invoke-interface {p3, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public addConnectionListener(Lcom/hyphenate/EMConnectionListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/hyphenate/chat/EMClient$4;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/chat/EMClient$4;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/EMConnectionListener;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addLogListener(Lcom/hyphenate/EMLogListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->clientLogListener:Lcom/hyphenate/chat/EMClient$ClientLogListener;

    if-nez p1, :cond_2

    new-instance p1, Lcom/hyphenate/chat/EMClient$ClientLogListener;

    invoke-direct {p1, p0}, Lcom/hyphenate/chat/EMClient$ClientLogListener;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->clientLogListener:Lcom/hyphenate/chat/EMClient$ClientLogListener;

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->addLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addMultiDeviceListener(Lcom/hyphenate/EMMultiDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->multiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeAppkey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->changeAppkey(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMOptions;->updatePath(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public chatManager()Lcom/hyphenate/chat/EMChatManager;
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatManager()Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getReactionManager()Lcom/hyphenate/chat/adapter/EMAReactionManager;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/hyphenate/chat/EMChatManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatManager;Lcom/hyphenate/chat/adapter/EMAReactionManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    return-object v0
.end method

.method public chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->threadManager:Lcom/hyphenate/chat/EMChatThreadManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->threadManager:Lcom/hyphenate/chat/EMChatThreadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getThreadManager()Lcom/hyphenate/chat/adapter/EMAThreadManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMChatThreadManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAThreadManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->threadManager:Lcom/hyphenate/chat/EMChatThreadManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->threadManager:Lcom/hyphenate/chat/EMChatThreadManager;

    return-object v0
.end method

.method public chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatRoomManager()Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMChatRoomManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatRoomManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

    return-object v0
.end method

.method public check(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->duringChecking:Z

    if-eqz v0, :cond_0

    const-string p1, "EMServiceChecker"

    const-string p2, "During service checking, please hold on..."

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->duringChecking:Z

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginPwd()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hyphenate/chat/EMClient$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMClient$11;-><init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMClient$CheckResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method checkTokenAvailability()V
    .locals 2

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMSessionManager;->checkTokenAvailability(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    :cond_0
    return-void
.end method

.method public compressLogs()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->compressLogs(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object v1
.end method

.method public contactManager()Lcom/hyphenate/chat/EMContactManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->contactManager:Lcom/hyphenate/chat/EMContactManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->contactManager:Lcom/hyphenate/chat/EMContactManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getContactManager()Lcom/hyphenate/chat/adapter/EMAContactManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMContactManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAContactManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->contactManager:Lcom/hyphenate/chat/EMContactManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->contactManager:Lcom/hyphenate/chat/EMContactManager;

    return-object v0
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[a-zA-Z0-9_.-]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void

    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 p2, 0xcd

    const-string v0, "illegal user name"

    invoke-direct {p1, p2, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method disconnect()V
    .locals 2

    const-string v0, "EMClient"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->disconnect()V

    return-void
.end method

.method execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method executeOnMainQueue(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mainQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method executeOnSendQueue(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->sendQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method forceReconnect()V
    .locals 2

    const-string v0, "EMClient"

    const-string v1, "forceReconnect"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->disconnect()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->reconnect()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatConfigPrivate()Lcom/hyphenate/chat/a/a;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentUser()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iget-object v0, v0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iget-object v0, v0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    iget-object v0, v0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEncryptProvider()Lcom/hyphenate/chat/EMEncryptProvider;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

    if-nez v0, :cond_0

    const-string v0, "EMClient"

    const-string v1, "encrypt provider is not set, create default"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/EMClient$8;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMClient$8;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

    return-object v0
.end method

.method public getLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    new-instance v1, Lcom/hyphenate/chat/EMDeviceInfo;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMDeviceInfo;-><init>(Lcom/hyphenate/chat/adapter/EMADeviceInfo;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/EMADeviceInfo;

    new-instance v1, Lcom/hyphenate/chat/EMDeviceInfo;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMDeviceInfo;-><init>(Lcom/hyphenate/chat/adapter/EMADeviceInfo;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getOptions()Lcom/hyphenate/chat/EMOptions;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->b()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    return-object v0
.end method

.method public getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/EMClient$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMClient$5;-><init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public groupManager()Lcom/hyphenate/chat/EMGroupManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->groupManager:Lcom/hyphenate/chat/EMGroupManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->groupManager:Lcom/hyphenate/chat/EMGroupManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getGroupManager()Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMGroupManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAGroupManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->groupManager:Lcom/hyphenate/chat/EMGroupManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->groupManager:Lcom/hyphenate/chat/EMGroupManager;

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/hyphenate/chat/EMOptions;)V
    .locals 12

    const-string v0, "[Collector][sdk init]init time is : "

    const-string v1, "hyphenate SDK is initialized with version : "

    const-string v2, "lastLoginUser : "

    const-string v3, "is autoLogin : "

    const-string v4, "system device name :"

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/hyphenate/chat/EMClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/hyphenate/chat/EMTimeTag;

    invoke-direct {v5}, Lcom/hyphenate/chat/EMTimeTag;-><init>()V

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMTimeTag;->start()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->connManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->registerActivityLifecycleCallbacks()V

    invoke-direct {p0, p2}, Lcom/hyphenate/chat/EMClient;->loadLibrary(Lcom/hyphenate/chat/EMOptions;)V

    new-instance p1, Lcom/hyphenate/chat/a/a;

    invoke-direct {p1}, Lcom/hyphenate/chat/a/a;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    iget-object v6, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6, p2}, Lcom/hyphenate/chat/a/a;->a(Landroid/content/Context;Lcom/hyphenate/chat/EMOptions;)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMOptions;->setConfig(Lcom/hyphenate/chat/a/a;)V

    new-instance p1, Lcom/hyphenate/util/DeviceUuidFactory;

    iget-object v6, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-direct {p1, v6}, Lcom/hyphenate/util/DeviceUuidFactory;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-virtual {p1}, Lcom/hyphenate/util/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/hyphenate/chat/a/a;->f(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "EMClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getCustomDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v4, p1}, Lcom/hyphenate/chat/a/a;->i(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->getDidInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/hyphenate/chat/a/a;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/hyphenate/chat/a/a;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getPushConfig()Lcom/hyphenate/push/EMPushConfig;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/hyphenate/push/EMPushConfig$Builder;

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/hyphenate/push/EMPushConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig$Builder;->build()Lcom/hyphenate/push/EMPushConfig;

    move-result-object p1

    :cond_2
    new-instance v4, Lcom/hyphenate/push/EMPushConfig$Builder;

    iget-object v6, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p1}, Lcom/hyphenate/push/EMPushConfig$Builder;-><init>(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;)V

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    iget-object v6, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/hyphenate/push/EMPushConfig$Builder;->build()Lcom/hyphenate/push/EMPushConfig;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/hyphenate/push/EMPushHelper;->init(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    iget-object p1, p1, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-static {p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->create(Lcom/hyphenate/chat/adapter/EMAChatConfig;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    new-instance p1, Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    invoke-direct {p1, p0}, Lcom/hyphenate/chat/EMClient$MyConnectionListener;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v4, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->addConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    new-instance p1, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    invoke-direct {p1, p0}, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->multiDeviceListenerImpl:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v4, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->addMultiDeviceListener(Lcom/hyphenate/chat/adapter/EMAMultiDeviceListener;)V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->initManagers()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSessionManager;->isLastLoginWithToken()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v7

    const-string p1, "EMClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getAutoLogin()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EMClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v1, "emclient"

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/hyphenate/notification/core/b;->a()Lcom/hyphenate/notification/core/b;

    move-result-object p1

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/hyphenate/notification/core/b;->a(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->onNetworkChanged()V

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getAutoLogin()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginPwd()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContact;

    invoke-direct {v1, v7}, Lcom/hyphenate/chat/EMContact;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/hyphenate/chat/EMSessionManager;->currentUser:Lcom/hyphenate/chat/EMContact;

    new-instance v9, Lcom/hyphenate/chat/EMClient$1;

    invoke-direct {v9, p0, v7, v5}, Lcom/hyphenate/chat/EMClient$1;-><init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Lcom/hyphenate/chat/EMTimeTag;)V

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    if-eqz v0, :cond_3

    move-object v8, p1

    goto :goto_0

    :cond_3
    move-object v8, p2

    :goto_0
    const/4 v10, 0x1

    if-eqz v0, :cond_4

    sget-object p1, Lcom/hyphenate/chat/EMLoginType;->LOGIN_TOKEN:Lcom/hyphenate/chat/EMLoginType;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/hyphenate/chat/EMLoginType;->LOGIN_PASSWORD:Lcom/hyphenate/chat/EMLoginType;

    :goto_1
    move-object v11, p1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/hyphenate/chat/EMClient;->_login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;ZLcom/hyphenate/chat/EMLoginType;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/hyphenate/chat/EMTimeTag;->stop()J

    const-string p1, "EMClient"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMTimeTag;->timeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isFCMAvailable()Z
    .locals 2

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isLoggedInBefore()Z
    .locals 4

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v3
.end method

.method public isSdkInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    return v0
.end method

.method public kickAllDevices(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->kickAllDevices(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->kickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->kickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->kickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMClient;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method synthetic lambda$loadDataFromDb$1$com-hyphenate-chat-EMClient()V
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroupManager;->loadAllGroups()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->isAutoLoadAllConversations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMChatManager;->loadAllConversationsFromDB()V

    :cond_0
    return-void
.end method

.method synthetic lambda$renewToken$0$com-hyphenate-chat-EMClient(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 7

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getTokenExpiredTs(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v3

    const-string v4, "EMClient"

    if-nez v3, :cond_0

    const-string v0, "getTokenExpiredTs success"

    invoke-static {v4, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->renewToken(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    const/4 p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v5, v6}, Lcom/hyphenate/chat/EMClient;->initLoginWithToken(ZLjava/lang/String;J)V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->saveToken()V

    invoke-interface {p2}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "renewToken(): expireTimestamp = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " tokenAvailablePeriod = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result p1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getChatTokenbyAgoraToken failed error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  errorMessage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x6e

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "please setup your App Key  either in AndroidManifest.xml or through the EMOptions"

    invoke-interface {p3, v0, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    if-nez v0, :cond_2

    const/4 p1, 0x1

    const-string p2, "sdk not initialized"

    invoke-interface {p3, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hyphenate/chat/EMClient;->initLoginWithToken(ZLjava/lang/String;J)V

    const/4 v4, 0x0

    sget-object v5, Lcom/hyphenate/chat/EMLoginType;->LOGIN_PASSWORD:Lcom/hyphenate/chat/EMLoginType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/EMClient;->_login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;ZLcom/hyphenate/chat/EMLoginType;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "username or password is null or empty!"

    invoke-interface {p3, v0, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public loginWithAgoraToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMClient;->loginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method

.method public loginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 9

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x6e

    if-eqz v0, :cond_0

    const-string p1, "please setup your App Key  either in AndroidManifest.xml or through the EMOptions"

    invoke-interface {p3, v1, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string p1, "sdk not initialized"

    invoke-interface {p3, v2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {p0, v2, v0, v5, v6}, Lcom/hyphenate/chat/EMClient;->initLoginWithToken(ZLjava/lang/String;J)V

    const/4 v7, 0x0

    sget-object v8, Lcom/hyphenate/chat/EMLoginType;->LOGIN_TOKEN:Lcom/hyphenate/chat/EMLoginType;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/hyphenate/chat/EMClient;->_login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;ZLcom/hyphenate/chat/EMLoginType;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "username or token is null or empty!"

    invoke-interface {p3, v1, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public logout(Z)I
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->isLogout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xd4

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPushManager;->unBindDeviceToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/push/EMPushHelper;->unregister(Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_1
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hyphenate/push/EMPushHelper;->unregister(Z)Z

    const-string p1, "EMClient"

    const-string v0, "already logout, skip unbind token"

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->logout()V

    return v1
.end method

.method logout()V
    .locals 2

    const-string v0, "EMClient"

    const-string v1, " SDK Logout"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginUser()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginToken()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLoginWithTokenData()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->releaseWakelock()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->logout()V

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatManager:Lcom/hyphenate/chat/EMChatManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMChatManager;->onLogout()V

    :cond_2
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->groupManager:Lcom/hyphenate/chat/EMGroupManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroupManager;->onLogout()V

    :cond_3
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->contactManager:Lcom/hyphenate/chat/EMContactManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMContactManager;->onLogout()V

    :cond_4
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->chatroomManager:Lcom/hyphenate/chat/EMChatRoomManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->onLogout()V

    :cond_5
    invoke-static {}, Lcom/hyphenate/chat/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/hyphenate/a/a;->c()V

    :cond_6
    return-void
.end method

.method logout(Lcom/hyphenate/EMCallBack;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMClient$3;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/chat/EMClient$3;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/EMCallBack;)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public logout(ZLcom/hyphenate/EMCallBack;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/chat/EMClient$2;-><init>(Lcom/hyphenate/chat/EMClient;ZLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient$2;->start()V

    return-void
.end method

.method public notifyTokenExpired(Ljava/lang/String;)V
    .locals 3

    const-string v0, "EMClient"

    const-string v1, "notifyTokenExpired--errorDescription:"

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/hyphenate/chat/EMClient;->mIsLoginWithToken:Z

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_description"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "milliseconds ago"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "has expired"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unable to authenticate due to expired access Token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMClient;->connectionListener:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    const/16 v1, 0x191

    invoke-virtual {p1, v1}, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->onTokenNotification(I)V

    const-string p1, "notifyTokenExpired--onTokenNotification(401) "

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method onNetworkChanged()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "EMClient"

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isOthersConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "has mobile connection"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isEthernetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "has ethernet connection"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V

    return-void

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const-string v0, "no data connection"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "has wifi connection"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->currentNetworkType:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V

    return-void
.end method

.method onNewLogin()V
    .locals 4

    const-string v0, "EMClient"

    const-string v1, "on new login created"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/hyphenate/util/PathUtil;->initDirs(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->create(Landroid/content/Context;)Lcom/hyphenate/chat/EMSmartHeartBeat;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->hasHeartBeatCustomizedParams()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getWifiHeartBeatCustomizedParams()Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getMobileHeartBeatCustomizedParams()Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat;->setCustomizedParams(Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;)V

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->onInit()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->getFixedInterval()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->smartHeartbeat:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMOptions;->getFixedInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->setFixedInterval(I)V

    :cond_2
    return-void
.end method

.method public presenceManager()Lcom/hyphenate/chat/EMPresenceManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->presenceManager:Lcom/hyphenate/chat/EMPresenceManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->presenceManager:Lcom/hyphenate/chat/EMPresenceManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMPresenceManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPresenceManager()Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/EMPresenceManager;-><init>(Lcom/hyphenate/chat/adapter/EMAPresenceManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->presenceManager:Lcom/hyphenate/chat/EMPresenceManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->presenceManager:Lcom/hyphenate/chat/EMPresenceManager;

    return-object v0
.end method

.method public pushManager()Lcom/hyphenate/chat/EMPushManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->pushManager:Lcom/hyphenate/chat/EMPushManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->pushManager:Lcom/hyphenate/chat/EMPushManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMPushManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPushMnager()Lcom/hyphenate/chat/adapter/EMAPushManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMPushManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAPushManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->pushManager:Lcom/hyphenate/chat/EMPushManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->pushManager:Lcom/hyphenate/chat/EMPushManager;

    return-object v0
.end method

.method reconnect()V
    .locals 2

    const-string v0, "reconnect"

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->reconnect()V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMClient;->releaseWakelock()V

    return-void
.end method

.method public removeConnectionListener(Lcom/hyphenate/EMConnectionListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLogListener(Lcom/hyphenate/EMLogListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->logListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMultiDeviceListener(Lcom/hyphenate/EMMultiDeviceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->multiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public renewToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/chat/EMClient;->renewToken(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMClient;->sdkInited:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const-string v0, "SDK not initialized"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0xc9

    const-string v0, "User has not loggin."

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x68

    const-string v0, "New token is invalid"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/chat/EMClient$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFCMTokenToServer(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendFCMTokenToServer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "No user login currently, stop upload the token."

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendHMSPushTokenToServer(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1, p1}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendHonorPushTokenToServer(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1, p1}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method sendPing(ZJ)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->sendPing(ZJ)Z

    move-result p1

    return p1
.end method

.method setAppStateListener(Lcom/hyphenate/chat/EMClient$AppStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->appStateListener:Lcom/hyphenate/chat/EMClient$AppStateListener;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    sput-boolean p1, Lcom/hyphenate/util/EMLog;->debugMode:Z

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->c(Z)V

    return-void
.end method

.method setEncryptProvider(Lcom/hyphenate/chat/EMEncryptProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient;->encryptProvider:Lcom/hyphenate/chat/EMEncryptProvider;

    return-void
.end method

.method setNatvieNetworkCallback()V
    .locals 2

    new-instance v0, Lcom/hyphenate/chat/EMClient$7;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMClient$7;-><init>(Lcom/hyphenate/chat/EMClient;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->mChatConfigPrivate:Lcom/hyphenate/chat/a/a;

    iget-object v1, v1, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setNetCallback(Lcom/hyphenate/chat/adapter/EMANetCallback;)V

    return-void
.end method

.method public statisticsManager()Lcom/hyphenate/chat/EMStatisticsManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->statisticsManager:Lcom/hyphenate/chat/EMStatisticsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->statisticsManager:Lcom/hyphenate/chat/EMStatisticsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMStatisticsManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getStatisticsManager()Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/hyphenate/chat/EMStatisticsManager;-><init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAStatisticsManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->statisticsManager:Lcom/hyphenate/chat/EMStatisticsManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->statisticsManager:Lcom/hyphenate/chat/EMStatisticsManager;

    return-object v0
.end method

.method public translationManager()Lcom/hyphenate/chat/EMTranslationManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->translationManager:Lcom/hyphenate/chat/EMTranslationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->translationManager:Lcom/hyphenate/chat/EMTranslationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMTranslationManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getTranslateManager()Lcom/hyphenate/chat/adapter/EMATranslateManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/EMTranslationManager;-><init>(Lcom/hyphenate/chat/adapter/EMATranslateManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->translationManager:Lcom/hyphenate/chat/EMTranslationManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->translationManager:Lcom/hyphenate/chat/EMTranslationManager;

    return-object v0
.end method

.method public uploadLog(Lcom/hyphenate/EMCallBack;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    iget-object p1, p1, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->uploadLog()V

    return-void
.end method

.method public userInfoManager()Lcom/hyphenate/chat/EMUserInfoManager;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->userInfoManager:Lcom/hyphenate/chat/EMUserInfoManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/hyphenate/chat/EMClient;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient;->userInfoManager:Lcom/hyphenate/chat/EMUserInfoManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMUserInfoManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getUserInfoManager()Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hyphenate/chat/EMUserInfoManager;-><init>(Lcom/hyphenate/chat/adapter/EMAUserInfoManager;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMClient;->userInfoManager:Lcom/hyphenate/chat/EMUserInfoManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient;->userInfoManager:Lcom/hyphenate/chat/EMUserInfoManager;

    return-object v0
.end method
