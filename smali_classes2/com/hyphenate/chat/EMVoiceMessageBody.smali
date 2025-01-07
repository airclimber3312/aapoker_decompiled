.class public Lcom/hyphenate/chat/EMVoiceMessageBody;
.super Lcom/hyphenate/chat/EMFileMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMVoiceMessageBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMVoiceMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMVoiceMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMVoiceMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setDuration(I)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setDisplayName(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "create voice, message body for:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "voicemsg"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setDuration(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMVoiceMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->fileLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->duration()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",localurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",remoteurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->duration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->displayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMVoiceMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->duration()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
