.class Lcom/hyphenate/chat/EMVoiceMessageBody$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMVoiceMessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hyphenate/chat/EMVoiceMessageBody;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/chat/EMVoiceMessageBody;
    .locals 2

    new-instance v0, Lcom/hyphenate/chat/EMVoiceMessageBody;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMVoiceMessageBody$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMVoiceMessageBody$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/chat/EMVoiceMessageBody;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hyphenate/chat/EMVoiceMessageBody;
    .locals 0

    new-array p1, p1, [Lcom/hyphenate/chat/EMVoiceMessageBody;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMVoiceMessageBody$1;->newArray(I)[Lcom/hyphenate/chat/EMVoiceMessageBody;

    move-result-object p1

    return-object p1
.end method
