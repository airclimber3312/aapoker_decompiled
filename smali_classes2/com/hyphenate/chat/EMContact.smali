.class public Lcom/hyphenate/chat/EMContact;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

.field protected remark:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMContact$1;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMContact$1;-><init>()V

    sput-object v0, Lcom/hyphenate/chat/EMContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAContact;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAContact;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMContact;->remark:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/hyphenate/chat/adapter/EMAContact;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAContact;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAContact;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAContact;->setUsername(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->remark:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAContact;->getRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAContact;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMContact;->remark:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAContact;->setRemark(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/chat/EMContact;->emaContact:Lcom/hyphenate/chat/adapter/EMAContact;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAContact;->setUsername(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMContact{username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMContact;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMContact;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hyphenate/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMContact;->remark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
