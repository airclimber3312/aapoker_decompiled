.class public Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAMessageBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;
    }
.end annotation


# static fields
.field public static final EMDownloadStatus_DOWNLOADING:I = 0x0

.field public static final EMDownloadStatus_FAILED:I = 0x2

.field public static final EMDownloadStatus_PENDING:I = 0x3

.field public static final EMDownloadStatus_SUCCESSED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativeInit(Ljava/lang/String;I)V

    :cond_0
    iput p2, p0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public displayName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativedisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadStatus()Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativedownloadStatus()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    return-object v0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    return-object v0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->FAILED:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->FAILED:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->PENDING:Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    return-object v0
.end method

.method public fileLength()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativefileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativeFinalize()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativelocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativeremotePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V
.end method

.method native nativeInit(Ljava/lang/String;I)V
.end method

.method native nativeSetDownloadCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V
.end method

.method native nativedisplayName()Ljava/lang/String;
.end method

.method native nativedownloadStatus()I
.end method

.method native nativefileLength()J
.end method

.method native nativelocalPath()Ljava/lang/String;
.end method

.method native nativeremotePath()Ljava/lang/String;
.end method

.method native nativesecretKey()Ljava/lang/String;
.end method

.method native nativesetDisplayName(Ljava/lang/String;)V
.end method

.method native nativesetDownloadStatus(I)V
.end method

.method native nativesetFileLength(J)V
.end method

.method native nativesetLocalPath(Ljava/lang/String;)V
.end method

.method native nativesetRemotePath(Ljava/lang/String;)V
.end method

.method native nativesetSecretKey(Ljava/lang/String;)V
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativeSetDownloadCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V

    return-void
.end method

.method public setDownloadStatus(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetDownloadStatus(I)V

    return-void
.end method

.method public setFileLength(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetFileLength(J)V

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setRemotePath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetRemotePath(Ljava/lang/String;)V

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->nativesetSecretKey(Ljava/lang/String;)V

    return-void
.end method
