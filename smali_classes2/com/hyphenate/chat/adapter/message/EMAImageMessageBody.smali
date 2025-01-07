.class public Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;


# instance fields
.field public fileLength:J

.field public height:D

.field public thumbnailDownloadStatus:I

.field public thumbnailLocalPath:Ljava/lang/String;

.field public thumbnailRemotePath:Ljava/lang/String;

.field public thumbnailSecretKey:Ljava/lang/String;

.field public width:D


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/util/EMFileHelper;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeFinalize()V

    invoke-super {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->finalize()V

    return-void
.end method

.method public getOriginalLocalPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeGetOriginalLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public height()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeheight()I

    move-result v0

    return v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetOriginalLocalPath()Ljava/lang/String;
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;)V
.end method

.method native nativeInit(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeSetOriginalLocalPath(Ljava/lang/String;)V
.end method

.method native nativeheight()I
.end method

.method native nativesetSize(II)V
.end method

.method native nativesetThumbnailDisplayName(Ljava/lang/String;)V
.end method

.method native nativesetThumbnailDownloadStatus(I)V
.end method

.method native nativesetThumbnailFileLength(J)V
.end method

.method native nativesetThumbnailLocalPath(Ljava/lang/String;)V
.end method

.method native nativesetThumbnailRemotePath(Ljava/lang/String;)V
.end method

.method native nativesetThumbnailSecretKey(Ljava/lang/String;)V
.end method

.method native nativesetThumbnailSize(II)V
.end method

.method native nativethumbnailDisplayName()Ljava/lang/String;
.end method

.method native nativethumbnailDownloadStatus()I
.end method

.method native nativethumbnailFileLength()J
.end method

.method native nativethumbnailHeight()I
.end method

.method native nativethumbnailLocalPath()Ljava/lang/String;
.end method

.method native nativethumbnailRemotePath()Ljava/lang/String;
.end method

.method native nativethumbnailSecretKey()Ljava/lang/String;
.end method

.method native nativethumbnailWidth()I
.end method

.method native nativewidth()I
.end method

.method public setOriginalLocalPath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativeSetOriginalLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetSize(II)V

    return-void
.end method

.method public setThumbnailDisplayName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailDownloadStatus(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailDownloadStatus(I)V

    return-void
.end method

.method public setThumbnailFileLength(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailFileLength(J)V

    return-void
.end method

.method public setThumbnailLocalPath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailRemotePath(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailRemotePath(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailSecretKey(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailSecretKey(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailSize(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativesetThumbnailSize(II)V

    return-void
.end method

.method public thumbnailDisplayName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailDownloadStatus()Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailDownloadStatus()I

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

.method public thumbnailFileLength()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailFileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method thumbnailHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailHeight()I

    move-result v0

    return v0
.end method

.method public thumbnailLocalPath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailRemotePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailRemotePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailSecretKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativethumbnailWidth()I

    move-result v0

    return v0
.end method

.method public width()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->nativewidth()I

    move-result v0

    return v0
.end method
