.class public Lcom/hyphenate/chat/EMImageMessageBody;
.super Lcom/hyphenate/chat/EMFileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMImageMessageBody;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EMImageMessageBody"


# instance fields
.field private sendOriginalImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMImageMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMImageMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMImageMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1, v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setSize(II)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMImageMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMImageMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    new-instance v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-direct {v1, v0, v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->fileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->height()I

    move-result v0

    return v0
.end method

.method getOriginalLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getOriginalLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailRemotePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->width()I

    move-result v0

    return v0
.end method

.method public isSendOriginalImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    return v0
.end method

.method setOriginalLocalPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setOriginalLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method public setSendOriginalImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->sendOriginalImage:Z

    return-void
.end method

.method setSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setSize(II)V

    return-void
.end method

.method public setThumbnailDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailDownloadStatus(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;)V

    return-void
.end method

.method public setThumbnailLocalPath(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method public setThumbnailLocalPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method public setThumbnailSecret(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailSecretKey(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailSize(II)V

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    return-void
.end method

.method public thumbnailDownloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailDownloadStatus()Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMImageMessageBody$2;->$SwitchMap$com$hyphenate$chat$adapter$message$EMAFileMessageBody$EMADownloadStatus:[I

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

.method public thumbnailLocalPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailLocalUri()Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localurl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteurl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailRemotePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->displayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->thumbnailRemotePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->width()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMImageMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->height()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
