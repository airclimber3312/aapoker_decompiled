.class public Lcom/hyphenate/chat/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/a/a$b;,
        Lcom/hyphenate/chat/a/a$a;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "uuid"

.field static final c:Ljava/lang/String; = "share-secret"

.field static final d:Ljava/lang/String; = "entities"

.field private static final f:Ljava/lang/String; = "conf"

.field private static final g:Ljava/lang/String; = "EASEMOB_APPKEY"

.field private static final h:Ljava/lang/String; = "EASEMOB_CHAT_ADDRESS"

.field private static final i:Ljava/lang/String; = "EASEMOB_CHAT_DOMAIN"

.field private static final j:Ljava/lang/String; = "EASEMOB_GROUP_DOMAIN"

.field private static final k:Ljava/lang/String; = "EASEMOB_CHAT_PORT"

.field private static final l:Ljava/lang/String; = "EASEMOB_API_URL"


# instance fields
.field public a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

.field e:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/hyphenate/chat/EMOptions;

.field private u:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/hyphenate/chat/a/a;->o:I

    iput-object v0, p0, Lcom/hyphenate/chat/a/a;->u:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/a/a;->e:Z

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    return-void
.end method

.method private S()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " APPKEY:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CHATSERVER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getChatAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conf"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "STORAGE_URL:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getRestServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTCSERVER: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/hyphenate/chat/EMOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/hyphenate/chat/a/a;->t:Lcom/hyphenate/chat/EMOptions;

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getRequireAck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRequireReadAck(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getRequireDeliveryAck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRequireDeliveryAck(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAcceptInvitationAlways()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoAccept(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isDeleteMessagesAsExitGroup()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeleteMessageAsExitGroup(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isChatroomOwnerLeaveAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setIsChatroomOwnerLeaveAllowed(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isDeleteMessagesAsExitChatRoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeleteMessageAsExitChatRoom(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isAutoAcceptGroupInvitation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoAcceptGroupInvitation(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getEnableDNSConfig()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->enableDnsConfig(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isSortMessageByServerTime()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setSortMessageByServerTime(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getUsingHttpsOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUsingHttpsOnly(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAutoTransferMessageAttachments()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setTransferAttachments(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAutodownloadThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutodownloadThumbnail(Z)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getDnsUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getDnsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getDnsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDnsUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getRestServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getImServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->enableDnsConfig(Z)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getRestServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/a/a;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getImServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/a/a;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getImPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getImPort()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/chat/a/a;->o:I

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAreaCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAreaCode(I)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isEnableStatistics()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setEnableStatistics(Z)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getCustomOSPlatform()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getCustomOSPlatform()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setCustomOSPlatform(I)V

    :cond_2
    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getCustomDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeviceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getLoginCustomExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setLoginCustomExt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isLoadEmptyConversations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setLoadEmptyConversations(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isUseReplacedMessageContents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUseReplacedMessageContents(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isIncludeSendMessageInMessageListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setCallbackSendMessageInMessageListener(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->regardImportedMsgAsRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRegardImportedMsgAsRead(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isEnableTLSConnection()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setEnableTLSConnection(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->isAutoLoadAllConversations()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoConversationLoaded(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getTransferAttachments()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAutodownloadThumbnail()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getUseRtcConfig()Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getRtcConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getLoginInfoCustomExt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getDnsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getUsingSQLCipher()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isNewLoginOnDevice()Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isEnableStatistics()Z

    move-result v0

    return v0
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getCustomOSPlatform()I

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isLoadEmptyConversations()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isUseReplacedMessageContents()Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isCallbackSendMessageInMessageListener()Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->regardImportedMsgAsRead()Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isEnableTLSConnection()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAutoConversationLoaded()Z

    move-result v0

    return v0
.end method

.method public a(ZZ)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getBaseUrl(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setChatPort(I)V

    return-void
.end method

.method public a(Lcom/hyphenate/EMCallBack;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/adapter/EMACallback;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMACallback;-><init>(Lcom/hyphenate/EMCallBack;)V

    iget-object p1, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->uploadLog(Lcom/hyphenate/chat/adapter/EMACallback;)V

    return-void
.end method

.method a(Lcom/hyphenate/chat/a/a$b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->u:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->u:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conf"

    invoke-static {v2, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/core_log"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-object p1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setLogPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDownloadPath(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->updateConversationUnreadCount(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importConversation(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V
    .locals 10
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

    move-object v0, p0

    iget-object v1, v0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importGroup(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 7
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

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importBlackList(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->enableDnsConfig(Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/hyphenate/chat/EMOptions;)Z
    .locals 6

    const-string v0, "conf"

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lcom/hyphenate/chat/a/a;->u:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/hyphenate/chat/a/a;->u:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "\u627e\u4e0d\u5230ApplicationInfo"

    invoke-static {v0, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMOptions;->getAppKey()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const-string/jumbo v2, "\u8bf7\u786e\u8ba4meta\u5c5e\u6027\u5199\u5728\u6e05\u5355\u6587\u4ef6\u91cc\u7684application\u8282\u70b9\u4ee5\u5185"

    invoke-static {v0, v2}, Lcom/hyphenate/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v4, "EASEMOB_APPKEY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v4, "EASEMOB_APPKEY is not set in AndroidManifest file"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    :cond_3
    :goto_1
    const-string v4, "EASEMOB_CHAT_ADDRESS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-object v4, p0, Lcom/hyphenate/chat/a/a;->n:Ljava/lang/String;

    :cond_4
    const-string v4, "EASEMOB_CHAT_PORT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_5

    iput v4, p0, Lcom/hyphenate/chat/a/a;->o:I

    :cond_5
    const-string v4, "EASEMOB_API_URL"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object v4, p0, Lcom/hyphenate/chat/a/a;->p:Ljava/lang/String;

    :cond_6
    const-string v4, "EASEMOB_CHAT_DOMAIN"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iput-object v4, p0, Lcom/hyphenate/chat/a/a;->r:Ljava/lang/String;

    :cond_7
    const-string v4, "EASEMOB_GROUP_DOMAIN"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iput-object v2, p0, Lcom/hyphenate/chat/a/a;->s:Ljava/lang/String;

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v4, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    invoke-virtual {v2, v1, v1, v4}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/hyphenate/chat/a/a;->a(Lcom/hyphenate/chat/EMOptions;)V

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/hyphenate/chat/a/a;->a(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "EASEMOB_APPKEY is set to:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->n:Ljava/lang/String;

    const-string v1, ""

    if-eqz p2, :cond_9

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->n:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setChatServer(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->p:Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRestServer(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->q:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->q:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRtcServer(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->r:Ljava/lang/String;

    if-eqz p2, :cond_c

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v2, p0, Lcom/hyphenate/chat/a/a;->r:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setChatDomain(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->s:Ljava/lang/String;

    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->s:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setGroupDomain(Ljava/lang/String;)V

    :cond_d
    iget p2, p0, Lcom/hyphenate/chat/a/a;->o:I

    if-eq p2, v3, :cond_e

    iget-object v1, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v1, p2}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setChatPort(I)V

    :cond_e
    iget-boolean p2, p0, Lcom/hyphenate/chat/a/a;->e:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->enableDnsConfig(Z)V

    :cond_f
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    const-string v1, "4.7.0"

    invoke-virtual {p2, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setSDKVersion(Ljava/lang/String;)V

    :try_start_1
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setOSVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p2, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAppId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hyphenate/chat/a/a;->S()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/hyphenate/chat/EMOptions;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->t:Lcom/hyphenate/chat/EMOptions;

    return-object v0
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAccessToken(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAreaCode(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importContacts(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->openDatabase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method c()Lcom/hyphenate/chat/a/a$b;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/a/a$b;->a:Lcom/hyphenate/chat/a/a$b;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setCustomOSPlatform(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setChatServer(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->importMessages(Ljava/util/List;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDebugMode(Z)V

    return-void
.end method

.method d()Lcom/hyphenate/chat/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getIsSandboxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/a/a$a;->a:Lcom/hyphenate/chat/a/a$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/a/a$a;->b:Lcom/hyphenate/chat/a/a$a;

    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRestServer(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRequireDeliveryAck(Z)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "4.7.0"

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRtcConfigUrl(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRequireReadAck(Z)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeviceUuid(Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoAccept(Z)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->useHttps()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->retrieveDNSConfig()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDid(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeleteMessageAsExitGroup(Z)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setServiceId(Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoAcceptGroupInvitation(Z)V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isEnableDnsConfig()Z

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setIsChatroomOwnerLeaveAllowed(Z)V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->isGcmEnabled()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getRestServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setLoginCustomExt(Ljava/lang/String;)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDeleteMessageAsExitChatRoom(Z)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setDnsUrl(Ljava/lang/String;)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setSortMessageByServerTime(Z)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getNextAvailableBaseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUseHttps(Z)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUsingHttpsOnly(Z)V

    return-void
.end method

.method public n()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getTokenSaveTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setTransferAttachments(Z)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutodownloadThumbnail(Z)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getRequireDeliveryAck()Z

    move-result v0

    return v0
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUseRtcConfig(Z)V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getRequireReadAck()Z

    move-result v0

    return v0
.end method

.method public q(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setEnableStatistics(Z)V

    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAutoAccept()Z

    move-result v0

    return v0
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setLoadEmptyConversations(Z)V

    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getDeleteMessageAsExitGroup()Z

    move-result v0

    return v0
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setUseReplacedMessageContents(Z)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getAutoAcceptGroupInvitation()Z

    move-result v0

    return v0
.end method

.method public t(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setCallbackSendMessageInMessageListener(Z)V

    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getIsChatroomOwnerLeaveAllowed()Z

    move-result v0

    return v0
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setRegardImportedMsgAsRead(Z)V

    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getDeleteMessageAsExitChatRoom()Z

    move-result v0

    return v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->reloadAll()V

    return-void
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setEnableTLSConnection(Z)V

    return-void
.end method

.method public w(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->setAutoConversationLoaded(Z)V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getSortMessageByServerTime()Z

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getGaoDeDiscoverKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getGaoDeLocationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/a/a;->a:Lcom/hyphenate/chat/adapter/EMAChatConfig;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatConfig;->getUsingHttpsOnly()Z

    move-result v0

    return v0
.end method
