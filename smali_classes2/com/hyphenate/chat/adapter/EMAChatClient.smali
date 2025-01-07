.class public Lcom/hyphenate/chat/adapter/EMAChatClient;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;,
        Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;
    }
.end annotation


# instance fields
.field private chatManager:Lcom/hyphenate/chat/adapter/EMAChatManager;

.field private chatRoomManager:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

.field private contactManager:Lcom/hyphenate/chat/adapter/EMAContactManager;

.field private groupManager:Lcom/hyphenate/chat/adapter/EMAGroupManager;

.field private presenceManager:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

.field private pushManager:Lcom/hyphenate/chat/adapter/EMAPushManager;

.field private reactionManager:Lcom/hyphenate/chat/adapter/EMAReactionManager;

.field private sessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

.field private statisticsManager:Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

.field private threadManager:Lcom/hyphenate/chat/adapter/EMAThreadManager;

.field private translateManager:Lcom/hyphenate/chat/adapter/EMATranslateManager;

.field private userInfoManager:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatManager:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatRoomManager:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->groupManager:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->contactManager:Lcom/hyphenate/chat/adapter/EMAContactManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->pushManager:Lcom/hyphenate/chat/adapter/EMAPushManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->userInfoManager:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->sessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->translateManager:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->presenceManager:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->reactionManager:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->threadManager:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->statisticsManager:Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    return-void
.end method

.method public static create(Lcom/hyphenate/chat/adapter/EMAChatConfig;)Lcom/hyphenate/chat/adapter/EMAChatClient;
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatClient;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;-><init>()V

    invoke-static {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_create(Lcom/hyphenate/chat/adapter/EMAChatConfig;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeHandler:J

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatManager()Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatManager:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatManager()Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getChatManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeHandler:J

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatRoomManager()Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatRoomManager:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getChatRoomManager()Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getChatRoomManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeHandler:J

    :cond_1
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getGroupManager()Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->groupManager:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getGroupManager()Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getGroupManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeHandler:J

    :cond_2
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getContactManager()Lcom/hyphenate/chat/adapter/EMAContactManager;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAContactManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->contactManager:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getContactManager()Lcom/hyphenate/chat/adapter/EMAContactManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getContactManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeHandler:J

    :cond_3
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPushMnager()Lcom/hyphenate/chat/adapter/EMAPushManager;

    move-result-object p0

    if-nez p0, :cond_4

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAPushManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->pushManager:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPushMnager()Lcom/hyphenate/chat/adapter/EMAPushManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getPushManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAPushManager;->nativeHandler:J

    :cond_4
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getUserInfoManager()Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->userInfoManager:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getUserInfoManager()Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getUserInfoManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;->nativeHandler:J

    :cond_5
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;

    move-result-object p0

    if-nez p0, :cond_6

    new-instance p0, Lcom/hyphenate/chat/adapter/EMASessionManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMASessionManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->sessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getSessionManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMASessionManager;->nativeHandler:J

    :cond_6
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getTranslateManager()Lcom/hyphenate/chat/adapter/EMATranslateManager;

    move-result-object p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMATranslateManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->translateManager:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getTranslateManager()Lcom/hyphenate/chat/adapter/EMATranslateManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getTranslateManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeHandler:J

    :cond_7
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPresenceManager()Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    move-result-object p0

    if-nez p0, :cond_8

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->presenceManager:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getPresenceManager()Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getPresenceManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeHandler:J

    :cond_8
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getReactionManager()Lcom/hyphenate/chat/adapter/EMAReactionManager;

    move-result-object p0

    if-nez p0, :cond_9

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAReactionManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->reactionManager:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getReactionManager()Lcom/hyphenate/chat/adapter/EMAReactionManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getReactionManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeHandler:J

    :cond_9
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getThreadManager()Lcom/hyphenate/chat/adapter/EMAThreadManager;

    move-result-object p0

    if-nez p0, :cond_a

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->threadManager:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getThreadManager()Lcom/hyphenate/chat/adapter/EMAThreadManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getThreadManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeHandler:J

    :cond_a
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getStatisticsManager()Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    move-result-object p0

    if-nez p0, :cond_b

    new-instance p0, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;-><init>()V

    iput-object p0, v0, Lcom/hyphenate/chat/adapter/EMAChatClient;->statisticsManager:Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getStatisticsManager()Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getStatisticsManager()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->nativeHandler:J

    :cond_b
    return-object v0
.end method

.method static native native_create(Lcom/hyphenate/chat/adapter/EMAChatConfig;)J
.end method


# virtual methods
.method public addConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_addConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    return-void
.end method

.method public addLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_addLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V

    return-void
.end method

.method public addMultiDeviceListener(Lcom/hyphenate/chat/adapter/EMAMultiDeviceListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_addMultiDeviceListener(Lcom/hyphenate/chat/adapter/EMAMultiDeviceListener;)V

    return-void
.end method

.method public changeAppkey(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_changeAppkey(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    return-object p1
.end method

.method public check(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeCheck(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;)V

    return-void
.end method

.method public compressLogs(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_compressLogs(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_disconnect()V

    return-void
.end method

.method public getChatManager()Lcom/hyphenate/chat/adapter/EMAChatManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatManager:Lcom/hyphenate/chat/adapter/EMAChatManager;

    return-object v0
.end method

.method public getChatRoomManager()Lcom/hyphenate/chat/adapter/EMAChatRoomManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->chatRoomManager:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    return-object v0
.end method

.method public getContactManager()Lcom/hyphenate/chat/adapter/EMAContactManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->contactManager:Lcom/hyphenate/chat/adapter/EMAContactManager;

    return-object v0
.end method

.method public getGroupManager()Lcom/hyphenate/chat/adapter/EMAGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->groupManager:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    return-object v0
.end method

.method public getLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMADeviceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeGetLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMADeviceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeGetLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPresenceManager()Lcom/hyphenate/chat/adapter/EMAPresenceManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->presenceManager:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    return-object v0
.end method

.method public getPushMnager()Lcom/hyphenate/chat/adapter/EMAPushManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->pushManager:Lcom/hyphenate/chat/adapter/EMAPushManager;

    return-object v0
.end method

.method public getReactionManager()Lcom/hyphenate/chat/adapter/EMAReactionManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->reactionManager:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    return-object v0
.end method

.method public getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->sessionManager:Lcom/hyphenate/chat/adapter/EMASessionManager;

    return-object v0
.end method

.method public getStatisticsManager()Lcom/hyphenate/chat/adapter/EMAStatisticsManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->statisticsManager:Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    return-object v0
.end method

.method public getThreadManager()Lcom/hyphenate/chat/adapter/EMAThreadManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->threadManager:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    return-object v0
.end method

.method public getTokenExpiredTs(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeGetTokenExpiredTs(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTranslateManager()Lcom/hyphenate/chat/adapter/EMATranslateManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->translateManager:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    return-object v0
.end method

.method public getUserInfoManager()Lcom/hyphenate/chat/adapter/EMAUserInfoManager;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatClient;->userInfoManager:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    return-object v0
.end method

.method public getUserToken(ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getUserToken(ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_isConnected()Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isLogout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_isLogout()Z

    move-result v0

    return v0
.end method

.method public kickAllDevices(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeKickAllDevices(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeKickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeKickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public kickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatClient;->nativeKickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;ZILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_login(Ljava/lang/String;Ljava/lang/String;ZILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public logout()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_logout()V

    return-void
.end method

.method native nativeCheck(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAChatClient$CheckResultListener;)V
.end method

.method native nativeGetLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMADeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMADeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetTokenExpiredTs(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)J
.end method

.method native nativeKickAllDevices(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeKickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeKickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeKickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native native_addConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
.end method

.method native native_addLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V
.end method

.method native native_addMultiDeviceListener(Lcom/hyphenate/chat/adapter/EMAMultiDeviceListener;)V
.end method

.method native native_changeAppkey(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;
.end method

.method native native_compressLogs(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native native_createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAError;
.end method

.method native native_disconnect()V
.end method

.method native native_getCallManager()J
.end method

.method native native_getChatManager()J
.end method

.method native native_getChatRoomManager()J
.end method

.method native native_getContactManager()J
.end method

.method native native_getGroupManager()J
.end method

.method native native_getPresenceManager()J
.end method

.method native native_getPushManager()J
.end method

.method native native_getReactionManager()J
.end method

.method native native_getRtcConfigManager()J
.end method

.method native native_getSessionManager()J
.end method

.method native native_getStatisticsManager()J
.end method

.method native native_getThreadManager()J
.end method

.method native native_getTranslateManager()J
.end method

.method native native_getUserInfoManager()J
.end method

.method native native_getUserToken(ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native native_getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native native_isConnected()Z
.end method

.method native native_isLoggedIn()Z
.end method

.method native native_isLogout()Z
.end method

.method native native_login(Ljava/lang/String;Ljava/lang/String;ZILcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native native_logout()V
.end method

.method native native_onNetworkChanged(I)V
.end method

.method native native_removeConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
.end method

.method native native_removeLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V
.end method

.method native native_removeMultiDeviceListener(Lcom/hyphenate/chat/adapter/EMAMultiDeviceListener;)V
.end method

.method native native_renewToken(Ljava/lang/String;)V
.end method

.method native native_sendPing(ZJ)Z
.end method

.method native natvie_reconnect()V
.end method

.method public onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_onNetworkChanged(I)V

    return-void
.end method

.method public reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->natvie_reconnect()V

    return-void
.end method

.method public removeConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_removeConnectionListener(Lcom/hyphenate/chat/adapter/EMAConnectionListener;)V

    return-void
.end method

.method public removeLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_removeLogCallbackListener(Lcom/hyphenate/chat/adapter/EMALogCallbackListener;)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_renewToken(Ljava/lang/String;)V

    return-void
.end method

.method public sendPing(ZJ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatClient;->native_sendPing(ZJ)Z

    move-result p1

    return p1
.end method
