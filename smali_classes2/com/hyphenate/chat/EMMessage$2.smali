.class Lcom/hyphenate/chat/EMMessage$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hyphenate/chat/EMMessage;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/chat/EMMessage;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, p1, v0}, Lcom/hyphenate/chat/EMMessage;-><init>(Landroid/os/Parcel;Lcom/hyphenate/chat/EMMessage$1;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMMessage$2;->createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hyphenate/chat/EMMessage;
    .locals 0

    new-array p1, p1, [Lcom/hyphenate/chat/EMMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMMessage$2;->newArray(I)[Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    return-object p1
.end method
