.class public abstract Lcom/hyphenate/chat/EMFileMessageBody;
.super Lcom/hyphenate/chat/EMMessageBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;-><init>(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-direct {p2, p1, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-direct {p2, p1, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    :goto_0
    iput-object p2, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    :goto_1
    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/EMFileMessageBody;->setFileLength(J)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public displayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->downloadStatus()Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMFileMessageBody$1;->$SwitchMap$com$hyphenate$chat$adapter$message$EMAFileMessageBody$EMADownloadStatus:[I

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->PENDING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object v0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->FAILED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object v0

    :cond_3
    sget-object v0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setDownloadStatus(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;)V

    return-void
.end method

.method public setFileLength(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setFileLength(J)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalUrl(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setRemotePath(Ljava/lang/String;)V

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFileMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setSecretKey(Ljava/lang/String;)V

    return-void
.end method
