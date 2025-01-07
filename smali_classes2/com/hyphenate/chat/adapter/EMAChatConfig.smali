.class public Lcom/hyphenate/chat/adapter/EMAChatConfig;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeLogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeLogE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeLogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeLogV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeLogW(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static native nativeLogD(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeLogE(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeLogI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeLogV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeLogW(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public enableDnsConfig(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeenableDnsConfig(Z)V

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAccessToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAccessToken(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoAccept()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAutoAccept()Z

    move-result v0

    return v0
.end method

.method public getAutoAcceptGroupInvitation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAutoAcceptGroupInvitation()Z

    move-result v0

    return v0
.end method

.method public getAutoConversationLoaded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAutoConversationLoaded()Z

    move-result v0

    return v0
.end method

.method public getAutoLogin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetAutoLogin()Z

    move-result v0

    return v0
.end method

.method public getAutodownloadThumbnail()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetAutodownloadThumbnail()Z

    move-result v0

    return v0
.end method

.method public getBaseUrl(ZZ)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetBaseUrl(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChatAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetChatAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatDomain()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetChatDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomOSPlatform()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetCustomOSPlatform()I

    move-result v0

    return v0
.end method

.method public getDeleteMessageAsExitChatRoom()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetDeleteMessageAsExitChatRoom()Z

    move-result v0

    return v0
.end method

.method public getDeleteMessageAsExitGroup()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetDeleteMessageAsExitGroup()Z

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetDnsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnableConsoleLog()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetEnableConsoleLog()Z

    move-result v0

    return v0
.end method

.method public getGaoDeDiscoverKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetGaoDeDiscoverKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGaoDeLocationKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetGaoDeLocationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupDomain()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetGroupDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsChatroomOwnerLeaveAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetIsChatroomOwnerLeaveAllowed()Z

    move-result v0

    return v0
.end method

.method public getIsSandboxMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetIsSandboxMode()Z

    move-result v0

    return v0
.end method

.method public getLoginInfoCustomExt()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetDeviceReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileHeartBeatCustomizedParams()Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetMobileHeartBeatCustomizedParams(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    invoke-direct {v3}, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->minInterval:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->maxInterval:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->defaultInterval:I

    return-object v3
.end method

.method public getNextAvailableBaseUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetNextAvailableBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequireDeliveryAck()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetRequireDeliveryAck()Z

    move-result v0

    return v0
.end method

.method public getRequireReadAck()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetRequireReadAck()Z

    move-result v0

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetRestServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtcConfigUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetRtcConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortMessageByServerTime()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetSortMessageByServerTime()Z

    move-result v0

    return v0
.end method

.method public getTokenSaveTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetTokenSaveTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransferAttachments()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetTransferAttachments()Z

    move-result v0

    return v0
.end method

.method public getUseAws()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetUseAws()Z

    move-result v0

    return v0
.end method

.method public getUseRtcConfig()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetUseRtcConfig()Z

    move-result v0

    return v0
.end method

.method public getUsingHttpsOnly()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetUsingHttpsOnly()Z

    move-result v0

    return v0
.end method

.method public getUsingSQLCipher()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetUsingSQLCipher()Z

    move-result v0

    return v0
.end method

.method public getWifiHeartBeatCustomizedParams()Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeGetWifiHeartBeatCustomizedParams(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    invoke-direct {v3}, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->minInterval:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->maxInterval:I

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->defaultInterval:I

    return-object v3
.end method

.method public getWorkPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativegetWorkPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHeartBeatCustomizedParams()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeHasHeartBeatCustomizedParams()Z

    move-result v0

    return v0
.end method

.method public importBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportBlackList(Ljava/util/List;)V

    return-void
.end method

.method public importChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public importContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportContacts(Ljava/util/List;)V

    return-void
.end method

.method public importConversation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportConversation(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public importGroup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p8}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportGroup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method public importMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeImportMessages(Ljava/util/List;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCallbackSendMessageInMessageListener()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsCallbackSendMessageInMessageListener()Z

    move-result v0

    return v0
.end method

.method public isEnableDnsConfig()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeisEnableDnsConfig()Z

    move-result v0

    return v0
.end method

.method public isEnableStatistics()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsEnableStatistics()Z

    move-result v0

    return v0
.end method

.method public isEnableTLSConnection()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsEnableTLSConnection()Z

    move-result v0

    return v0
.end method

.method public isGcmEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsGcmEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoadEmptyConversations()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsLoadEmptyConversations()Z

    move-result v0

    return v0
.end method

.method public isNewLoginOnDevice()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsNewLoginOnDevice()Z

    move-result v0

    return v0
.end method

.method public isUseReplacedMessageContents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeIsUseReplacedMessageContents()Z

    move-result v0

    return v0
.end method

.method native nativeCustomOSPlatform(I)V
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetAutodownloadThumbnail()Z
.end method

.method native nativeGetCustomOSPlatform()I
.end method

.method native nativeGetDeviceName()Ljava/lang/String;
.end method

.method native nativeGetDeviceReason()Ljava/lang/String;
.end method

.method native nativeGetDnsUrl()Ljava/lang/String;
.end method

.method native nativeGetGaoDeDiscoverKey()Ljava/lang/String;
.end method

.method native nativeGetGaoDeLocationKey()Ljava/lang/String;
.end method

.method native nativeGetMobileHeartBeatCustomizedParams(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
.end method

.method native nativeGetRtcConfigUrl()Ljava/lang/String;
.end method

.method native nativeGetSortMessageByServerTime()Z
.end method

.method native nativeGetTransferAttachments()Z
.end method

.method native nativeGetUseAws()Z
.end method

.method native nativeGetUseRtcConfig()Z
.end method

.method native nativeGetUsingHttpsOnly()Z
.end method

.method native nativeGetUsingSQLCipher()Z
.end method

.method native nativeGetWifiHeartBeatCustomizedParams(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
.end method

.method native nativeHasHeartBeatCustomizedParams()Z
.end method

.method native nativeImportBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeImportChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method native nativeImportContacts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeImportConversation(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method native nativeImportGroup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method native nativeImportMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeIsCallbackSendMessageInMessageListener()Z
.end method

.method native nativeIsEnableStatistics()Z
.end method

.method native nativeIsEnableTLSConnection()Z
.end method

.method native nativeIsGcmEnabled()Z
.end method

.method native nativeIsLoadEmptyConversations()Z
.end method

.method native nativeIsNewLoginOnDevice()Z
.end method

.method native nativeIsUseReplacedMessageContents()Z
.end method

.method native nativeOpenDatabase(Ljava/lang/String;)Z
.end method

.method native nativeRegardImportedMsgAsRead()Z
.end method

.method native nativeReloadAll()V
.end method

.method native nativeSetAppId(Ljava/lang/String;)V
.end method

.method native nativeSetAreaCode(I)V
.end method

.method native nativeSetAutodownloadThumbnail(Z)V
.end method

.method native nativeSetCallbackNet(Lcom/hyphenate/chat/adapter/EMANetCallback;)V
.end method

.method native nativeSetCallbackSendMessageInMessageListener(Z)V
.end method

.method native nativeSetDebugMode(Z)V
.end method

.method native nativeSetDnsUrl(Ljava/lang/String;)V
.end method

.method native nativeSetEnableStatistics(Z)V
.end method

.method native nativeSetEnableTLSConnection(Z)V
.end method

.method native nativeSetLoadEmptyConversations(Z)V
.end method

.method native nativeSetOSVersion(Ljava/lang/String;)V
.end method

.method native nativeSetRegardImportedMsgAsRead(Z)V
.end method

.method native nativeSetRtcConfigUrl(Ljava/lang/String;)V
.end method

.method native nativeSetSDKVersion(Ljava/lang/String;)V
.end method

.method native nativeSetSortMessageByServerTime(Z)V
.end method

.method native nativeSetTransferAttachments(Z)V
.end method

.method native nativeSetUseAws(Z)V
.end method

.method native nativeSetUseHttps(Z)V
.end method

.method native nativeSetUseReplacedMessageContents(Z)V
.end method

.method native nativeSetUseRtcConfig(Z)V
.end method

.method native nativeSetUsingHttpsOnly(Z)V
.end method

.method native nativeUpdateConversationUnreadCount(Ljava/lang/String;I)V
.end method

.method native nativeUploadLog(Lcom/hyphenate/chat/adapter/EMACallback;)V
.end method

.method native nativeenableDnsConfig(Z)V
.end method

.method native nativegetAccessToken(Z)Ljava/lang/String;
.end method

.method native nativegetAppKey()Ljava/lang/String;
.end method

.method native nativegetAutoAccept()Z
.end method

.method native nativegetAutoAcceptGroupInvitation()Z
.end method

.method native nativegetAutoConversationLoaded()Z
.end method

.method native nativegetAutoLogin()Z
.end method

.method native nativegetBaseUrl(ZZ)Ljava/lang/String;
.end method

.method native nativegetChatAddress()Ljava/lang/String;
.end method

.method native nativegetChatDomain()Ljava/lang/String;
.end method

.method native nativegetDeleteMessageAsExitChatRoom()Z
.end method

.method native nativegetDeleteMessageAsExitGroup()Z
.end method

.method native nativegetDownloadPath()Ljava/lang/String;
.end method

.method native nativegetEnableConsoleLog()Z
.end method

.method native nativegetGroupDomain()Ljava/lang/String;
.end method

.method native nativegetIsChatroomOwnerLeaveAllowed()Z
.end method

.method native nativegetIsSandboxMode()Z
.end method

.method native nativegetNextAvailableBaseUrl()Ljava/lang/String;
.end method

.method native nativegetRequireDeliveryAck()Z
.end method

.method native nativegetRequireReadAck()Z
.end method

.method native nativegetResourcePath()Ljava/lang/String;
.end method

.method native nativegetRestServer()Ljava/lang/String;
.end method

.method native nativegetTokenSaveTime()J
.end method

.method native nativegetWorkPath()Ljava/lang/String;
.end method

.method native nativeisEnableDnsConfig()Z
.end method

.method native nativeretrieveDNSConfig()V
.end method

.method native nativesetAppKey(Ljava/lang/String;)V
.end method

.method native nativesetAutoAccept(Z)V
.end method

.method native nativesetAutoAcceptGroupInvitation(Z)V
.end method

.method native nativesetAutoConversationLoaded(Z)V
.end method

.method native nativesetAutoLogin(Z)V
.end method

.method native nativesetChatDomain(Ljava/lang/String;)V
.end method

.method native nativesetChatPort(I)V
.end method

.method native nativesetChatServer(Ljava/lang/String;)V
.end method

.method native nativesetDeleteMessageAsExitChatRoom(Z)V
.end method

.method native nativesetDeleteMessageAsExitGroup(Z)V
.end method

.method native nativesetDeviceName(Ljava/lang/String;)V
.end method

.method native nativesetDeviceReason(Ljava/lang/String;)V
.end method

.method native nativesetDeviceUuid(Ljava/lang/String;)V
.end method

.method native nativesetDid(Ljava/lang/String;)V
.end method

.method native nativesetDownloadPath(Ljava/lang/String;)V
.end method

.method native nativesetEnableConsoleLog(Z)V
.end method

.method native nativesetGroupDomain(Ljava/lang/String;)V
.end method

.method native nativesetIsChatroomOwnerLeaveAllowed(Z)V
.end method

.method native nativesetIsSandboxMode(Z)V
.end method

.method native nativesetLogPath(Ljava/lang/String;)V
.end method

.method native nativesetRequireDeliveryAck(Z)V
.end method

.method native nativesetRequireReadAck(Z)V
.end method

.method native nativesetRestServer(Ljava/lang/String;)V
.end method

.method native nativesetRtcServer(Ljava/lang/String;)V
.end method

.method native nativesetServiceId(Ljava/lang/String;)V
.end method

.method native nativeuseHttps()Z
.end method

.method public openDatabase(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeOpenDatabase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public regardImportedMsgAsRead()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeRegardImportedMsgAsRead()Z

    move-result v0

    return v0
.end method

.method public reloadAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeReloadAll()V

    return-void
.end method

.method public retrieveDNSConfig()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeretrieveDNSConfig()V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetAppId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public setAreaCode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetAreaCode(I)V

    return-void
.end method

.method public setAutoAccept(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetAutoAccept(Z)V

    return-void
.end method

.method public setAutoAcceptGroupInvitation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetAutoAcceptGroupInvitation(Z)V

    return-void
.end method

.method public setAutoConversationLoaded(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetAutoConversationLoaded(Z)V

    return-void
.end method

.method public setAutoLogin(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetAutoLogin(Z)V

    return-void
.end method

.method public setAutodownloadThumbnail(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetAutodownloadThumbnail(Z)V

    return-void
.end method

.method public setCallbackSendMessageInMessageListener(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetCallbackSendMessageInMessageListener(Z)V

    return-void
.end method

.method public setChatDomain(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetChatDomain(Ljava/lang/String;)V

    return-void
.end method

.method public setChatPort(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetChatPort(I)V

    return-void
.end method

.method public setChatServer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetChatServer(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomOSPlatform(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeCustomOSPlatform(I)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetDebugMode(Z)V

    return-void
.end method

.method public setDeleteMessageAsExitChatRoom(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDeleteMessageAsExitChatRoom(Z)V

    return-void
.end method

.method public setDeleteMessageAsExitGroup(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDeleteMessageAsExitGroup(Z)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceUuid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDeviceUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDid(Ljava/lang/String;)V

    return-void
.end method

.method public setDnsUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetDnsUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDownloadPath(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableConsoleLog(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetEnableConsoleLog(Z)V

    return-void
.end method

.method public setEnableStatistics(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetEnableStatistics(Z)V

    return-void
.end method

.method public setEnableTLSConnection(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetEnableTLSConnection(Z)V

    return-void
.end method

.method public setGroupDomain(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetGroupDomain(Ljava/lang/String;)V

    return-void
.end method

.method public setIsChatroomOwnerLeaveAllowed(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetIsChatroomOwnerLeaveAllowed(Z)V

    return-void
.end method

.method public setIsSandboxMode(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetIsSandboxMode(Z)V

    return-void
.end method

.method public setLoadEmptyConversations(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetLoadEmptyConversations(Z)V

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetLogPath(Ljava/lang/String;)V

    return-void
.end method

.method public setLoginCustomExt(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetDeviceReason(Ljava/lang/String;)V

    return-void
.end method

.method public setNetCallback(Lcom/hyphenate/chat/adapter/EMANetCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetCallbackNet(Lcom/hyphenate/chat/adapter/EMANetCallback;)V

    return-void
.end method

.method public setOSVersion(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetOSVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setRegardImportedMsgAsRead(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetRegardImportedMsgAsRead(Z)V

    return-void
.end method

.method public setRequireDeliveryAck(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetRequireDeliveryAck(Z)V

    return-void
.end method

.method public setRequireReadAck(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetRequireReadAck(Z)V

    return-void
.end method

.method public setRestServer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetRestServer(Ljava/lang/String;)V

    return-void
.end method

.method public setRtcConfigUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetRtcConfigUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setRtcServer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetRtcServer(Ljava/lang/String;)V

    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetSDKVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativesetServiceId(Ljava/lang/String;)V

    return-void
.end method

.method public setSortMessageByServerTime(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetSortMessageByServerTime(Z)V

    return-void
.end method

.method public setTransferAttachments(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetTransferAttachments(Z)V

    return-void
.end method

.method public setUseAws(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetUseAws(Z)V

    return-void
.end method

.method public setUseHttps(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetUseHttps(Z)V

    return-void
.end method

.method public setUseReplacedMessageContents(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetUseReplacedMessageContents(Z)V

    return-void
.end method

.method public setUseRtcConfig(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetUseRtcConfig(Z)V

    return-void
.end method

.method public setUsingHttpsOnly(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeSetUsingHttpsOnly(Z)V

    return-void
.end method

.method public updateConversationUnreadCount(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeUpdateConversationUnreadCount(Ljava/lang/String;I)V

    return-void
.end method

.method public uploadLog(Lcom/hyphenate/chat/adapter/EMACallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->nativeUploadLog(Lcom/hyphenate/chat/adapter/EMACallback;)V

    return-void
.end method

.method public useHttps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
