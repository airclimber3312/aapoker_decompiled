.class public Lcom/hyphenate/chat/EMCombineMessageBody;
.super Lcom/hyphenate/chat/EMFileMessageBody;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMCombineMessageBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMCombineMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMCombineMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMCombineMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    new-instance v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setDisplayName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setLocalPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setRemotePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setSecretKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setCompatibleText(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMCombineMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMCombineMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setCompatibleText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p1, p4}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setMessageList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCompatibleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getCompatibleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCompatibleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setCompatibleText(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setMessageList(Ljava/util/List;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "combine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", summary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compatibleText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getCompatibleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localurl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteurl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->displayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getSecret()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMCombineMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->getCompatibleText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
