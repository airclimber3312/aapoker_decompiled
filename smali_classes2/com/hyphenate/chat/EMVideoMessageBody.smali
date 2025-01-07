.class public Lcom/hyphenate/chat/EMVideoMessageBody;
.super Lcom/hyphenate/chat/EMFileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMVideoMessageBody;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EMVideoMessageBody"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMVideoMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMVideoMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMVideoMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;IJ)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p3}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setDuration(I)V

    iget-object p3, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p3, p4, p5}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setFileLength(J)V

    iget-object p3, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailFileLength(J)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "create video, message body for:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " filename = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "videomsg"

    invoke-static {p3, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "EMVideoMessageBody thumbPath = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMClient"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setDuration(I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setFileLength(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v2, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setSize(II)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMVideoMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMVideoMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v1, p0

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMVideoMessageBody;-><init>(Landroid/net/Uri;Landroid/net/Uri;IJ)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "EMVideoMessageBody thumbPath = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMClient"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p3}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setFileLength(J)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->duration()I

    move-result v0

    return v0
.end method

.method public getLocalThumb()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutLocalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalThumbUri()Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatOutUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->height()I

    move-result v0

    return v0
.end method

.method public getThumbnailSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailRemotePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->width()I

    move-result v0

    return v0
.end method

.method public getVideoFileLength()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->fileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public setLocalThumb(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method public setLocalThumb(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->formatInUriToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailFileLength(J)V

    return-void
.end method

.method public setThumbnailDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;->valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailDownloadStatus(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;)V

    return-void
.end method

.method public setThumbnailSecret(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailSecretKey(Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setSize(II)V

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setThumbnailRemotePath(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFileLength(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->setFileLength(J)V

    return-void
.end method

.method public thumbnailDownloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailDownloadStatus()Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody$EMADownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMVideoMessageBody$2;->$SwitchMap$com$hyphenate$chat$adapter$message$EMAFileMessageBody$EMADownloadStatus:[I

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

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->fileLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->displayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->duration()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->fileLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->width()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->height()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVideoMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVideoMessageBody;->thumbnailFileLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
