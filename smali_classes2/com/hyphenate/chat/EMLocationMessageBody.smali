.class public Lcom/hyphenate/chat/EMLocationMessageBody;
.super Lcom/hyphenate/chat/EMMessageBody;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMLocationMessageBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMLocationMessageBody$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMLocationMessageBody$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMLocationMessageBody;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v7, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v5, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->setLatitude(D)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0, v3, v4}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->setLongitude(D)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->setBuildingName(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMLocationMessageBody$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMLocationMessageBody;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 8

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v7, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    const-string v6, ""

    move-object v0, v7

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/hyphenate/chat/EMMessageBody;-><init>()V

    new-instance v7, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    move-object v0, v7

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->buildingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->latitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->longitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "location:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",build:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->buildingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->address()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->latitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->longitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMLocationMessageBody;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/message/EMALocationMessageBody;->buildingName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
