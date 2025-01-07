.class public Lcom/hyphenate/chat/EMOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMOptions$AreaCode;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private acceptInvitationAlways:Z

.field private appkey:Ljava/lang/String;

.field private areaCode:I

.field private autoAcceptGroupInvitation:Z

.field private autoLoadAllConversations:Z

.field private config:Lcom/hyphenate/chat/a/a;

.field private customDeviceName:Ljava/lang/String;

.field private customExt:Ljava/lang/String;

.field private deleteMessagesAsExitChatRoom:Z

.field private deleteMessagesAsExitGroup:Z

.field private dnsUrl:Ljava/lang/String;

.field private enableAutoLogin:Z

.field private enableDNSConfig:Z

.field private enableStatistics:Z

.field private enableTLSConnection:Z

.field private enableUseRtcConfig:Z

.field private fcmNumber:Ljava/lang/String;

.field private fixedInterval:I

.field private imPort:I

.field private imServer:Ljava/lang/String;

.field private includeSendMessageInMessageListener:Z

.field private isAutodownload:Z

.field private isChatroomOwnerLeaveAllowed:Z

.field private isLoadEmptyConversations:Z

.field private nativeLibBasePath:Ljava/lang/String;

.field private osCustomPlatform:I

.field private pushConfig:Lcom/hyphenate/push/EMPushConfig;

.field private regardImportedMsgAsRead:Z

.field private reportServer:Ljava/lang/String;

.field private requireDeliveryAck:Z

.field private requireReadAck:Z

.field private restServer:Ljava/lang/String;

.field private rtcConfigUrl:Ljava/lang/String;

.field private serverTransfer:Z

.field private sortMessageByServerTime:Z

.field private useEncryption:Z

.field private useFCM:Z

.field private useHttps:Z

.field private useReplacedMessageContents:Z

.field private useStereoInput:Z

.field private usingHttpsOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMOptions;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/chat/EMOptions;->areaCode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->acceptInvitationAlways:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->autoAcceptGroupInvitation:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->useEncryption:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->requireReadAck:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->requireDeliveryAck:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitGroup:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->isChatroomOwnerLeaveAllowed:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitChatRoom:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->isLoadEmptyConversations:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->useReplacedMessageContents:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->includeSendMessageInMessageListener:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->regardImportedMsgAsRead:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/hyphenate/chat/EMOptions;->appkey:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->enableAutoLogin:Z

    iput-object v4, p0, Lcom/hyphenate/chat/EMOptions;->fcmNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->useFCM:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->enableDNSConfig:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->sortMessageByServerTime:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->useHttps:Z

    iput-object v3, p0, Lcom/hyphenate/chat/EMOptions;->dnsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->usingHttpsOnly:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->serverTransfer:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->isAutodownload:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->useStereoInput:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->enableStatistics:Z

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->enableUseRtcConfig:Z

    iput v0, p0, Lcom/hyphenate/chat/EMOptions;->osCustomPlatform:I

    iput-object v3, p0, Lcom/hyphenate/chat/EMOptions;->nativeLibBasePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMOptions;->enableTLSConnection:Z

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMOptions;->autoLoadAllConversations:Z

    iput v0, p0, Lcom/hyphenate/chat/EMOptions;->fixedInterval:I

    return-void
.end method


# virtual methods
.method public allowChatroomOwnerLeave(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->isChatroomOwnerLeaveAllowed:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->i(Z)V

    return-void
.end method

.method public autoAcceptGroupInvitations()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->autoAcceptGroupInvitation:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->s()Z

    move-result v0

    return v0
.end method

.method public canChatroomOwnerLeave()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->isChatroomOwnerLeaveAllowed:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->t()Z

    move-result v0

    return v0
.end method

.method public deleteMessagesOnLeaveChatroom()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitChatRoom:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->u()Z

    move-result v0

    return v0
.end method

.method public deleteMessagesOnLeaveGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitGroup:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->r()Z

    move-result v0

    return v0
.end method

.method public enableDNSConfig(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->enableDNSConfig:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->a(Z)V

    return-void
.end method

.method public getAcceptInvitationAlways()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->acceptInvitationAlways:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->q()Z

    move-result v0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->appkey:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMOptions;->areaCode:I

    return v0
.end method

.method public getAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->enableAutoLogin:Z

    return v0
.end method

.method public getAutoTransferMessageAttachments()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->serverTransfer:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->A()Z

    move-result v0

    return v0
.end method

.method public getAutodownloadThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->isAutodownload:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->B()Z

    move-result v0

    return v0
.end method

.method public getCustomDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->customDeviceName:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomOSPlatform()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hyphenate/chat/EMOptions;->osCustomPlatform:I

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->L()I

    move-result v0

    return v0
.end method

.method public getDnsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->dnsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableDNSConfig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->enableDNSConfig:Z

    return v0
.end method

.method public getFixedInterval()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMOptions;->fixedInterval:I

    return v0
.end method

.method public getImPort()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMOptions;->imPort:I

    return v0
.end method

.method public getImServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->imServer:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCustomExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->customExt:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibBasePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->nativeLibBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPushConfig()Lcom/hyphenate/push/EMPushConfig;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->pushConfig:Lcom/hyphenate/push/EMPushConfig;

    return-object v0
.end method

.method public getReportServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->reportServer:Ljava/lang/String;

    return-object v0
.end method

.method public getRequireAck()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->requireReadAck:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->p()Z

    move-result v0

    return v0
.end method

.method public getRequireDeliveryAck()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->requireDeliveryAck:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->o()Z

    move-result v0

    return v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->restServer:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingHttpsOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->z()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->usingHttpsOnly:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoAcceptGroupInvitation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMOptions;->autoAcceptGroupInvitations()Z

    move-result v0

    return v0
.end method

.method public isAutoLoadAllConversations()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->autoLoadAllConversations:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->R()Z

    move-result v0

    return v0
.end method

.method public isChatroomOwnerLeaveAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMOptions;->canChatroomOwnerLeave()Z

    move-result v0

    return v0
.end method

.method public isDeleteMessagesAsExitChatRoom()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMOptions;->deleteMessagesOnLeaveChatroom()Z

    move-result v0

    return v0
.end method

.method public isDeleteMessagesAsExitGroup()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMOptions;->deleteMessagesOnLeaveGroup()Z

    move-result v0

    return v0
.end method

.method public isEnableStatistics()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->enableStatistics:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->K()Z

    move-result v0

    return v0
.end method

.method public isEnableTLSConnection()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->enableTLSConnection:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->Q()Z

    move-result v0

    return v0
.end method

.method public isIncludeSendMessageInMessageListener()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->includeSendMessageInMessageListener:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->O()Z

    move-result v0

    return v0
.end method

.method public isLoadEmptyConversations()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->isLoadEmptyConversations:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->M()Z

    move-result v0

    return v0
.end method

.method public isSortMessageByServerTime()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->sortMessageByServerTime:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->w()Z

    move-result v0

    return v0
.end method

.method public isUseReplacedMessageContents()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->useReplacedMessageContents:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->N()Z

    move-result v0

    return v0
.end method

.method public regardImportedMsgAsRead()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMOptions;->regardImportedMsgAsRead:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->P()Z

    move-result v0

    return v0
.end method

.method public setAcceptInvitationAlways(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->acceptInvitationAlways:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->f(Z)V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->appkey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMOptions;->updatePath(Ljava/lang/String;)V

    return-void
.end method

.method public setAreaCode(I)V
    .locals 1

    iput p1, p0, Lcom/hyphenate/chat/EMOptions;->areaCode:I

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->b(I)V

    return-void
.end method

.method public setAutoAcceptGroupInvitation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->autoAcceptGroupInvitation:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->h(Z)V

    return-void
.end method

.method public setAutoDownloadThumbnail(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->isAutodownload:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->o(Z)V

    return-void
.end method

.method public setAutoLoadAllConversations(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->autoLoadAllConversations:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->w(Z)V

    return-void
.end method

.method public setAutoLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->enableAutoLogin:Z

    return-void
.end method

.method public setAutoTransferMessageAttachments(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->serverTransfer:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->n(Z)V

    return-void
.end method

.method setConfig(Lcom/hyphenate/chat/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    return-void
.end method

.method public setCustomDeviceName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->customDeviceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomOSPlatform(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/hyphenate/chat/EMOptions;->osCustomPlatform:I

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->c(I)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMOptions setCustomOSPlatform() error : platform ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeleteMessagesAsExitChatRoom(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitChatRoom:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->j(Z)V

    return-void
.end method

.method public setDeleteMessagesAsExitGroup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->deleteMessagesAsExitGroup:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->g(Z)V

    return-void
.end method

.method public setDnsUrl(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->dnsUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableStatistics(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->enableStatistics:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->q(Z)V

    return-void
.end method

.method public setEnableTLSConnection(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->enableTLSConnection:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->v(Z)V

    return-void
.end method

.method public setFixedHBInterval(I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/hyphenate/chat/EMOptions;->fixedInterval:I

    :cond_0
    const/16 v0, 0x12c

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/hyphenate/chat/EMOptions;->fixedInterval:I

    :cond_1
    iput p1, p0, Lcom/hyphenate/chat/EMOptions;->fixedInterval:I

    return-void
.end method

.method public setIMServer(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->imServer:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setImPort(I)V
    .locals 1

    iput p1, p0, Lcom/hyphenate/chat/EMOptions;->imPort:I

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->a(I)V

    return-void
.end method

.method public setIncludeSendMessageInMessageListener(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->includeSendMessageInMessageListener:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->t(Z)V

    return-void
.end method

.method public setLoadEmptyConversations(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->isLoadEmptyConversations:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->r(Z)V

    return-void
.end method

.method public setLoginCustomExt(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->customExt:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setNativeLibBasePath(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/+$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->nativeLibBasePath:Ljava/lang/String;

    return-void
.end method

.method public setPushConfig(Lcom/hyphenate/push/EMPushConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->pushConfig:Lcom/hyphenate/push/EMPushConfig;

    return-void
.end method

.method public setRegardImportedMsgAsRead(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->regardImportedMsgAsRead:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->u(Z)V

    return-void
.end method

.method public setReportServer(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->reportServer:Ljava/lang/String;

    return-void
.end method

.method public setRequireAck(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->requireReadAck:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->e(Z)V

    return-void
.end method

.method public setRequireDeliveryAck(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->requireDeliveryAck:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->d(Z)V

    return-void
.end method

.method public setRestServer(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMOptions;->restServer:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setSortMessageByServerTime(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->sortMessageByServerTime:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->k(Z)V

    return-void
.end method

.method public setUseReplacedMessageContents(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->useReplacedMessageContents:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->s(Z)V

    return-void
.end method

.method public setUsingHttpsOnly(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMOptions;->usingHttpsOnly:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->m(Z)V

    return-void
.end method

.method updatePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMOptions;->config:Lcom/hyphenate/chat/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
