.class Lcom/hyphenate/notification/EMNotificationMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/notification/EMNotificationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/hyphenate/notification/EMNotificationMessage;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/notification/EMNotificationMessage;
    .locals 1

    new-instance v0, Lcom/hyphenate/notification/EMNotificationMessage;

    invoke-direct {v0, p1}, Lcom/hyphenate/notification/EMNotificationMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/notification/EMNotificationMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hyphenate/notification/EMNotificationMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/hyphenate/notification/EMNotificationMessage;
    .locals 0

    new-array p1, p1, [Lcom/hyphenate/notification/EMNotificationMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/notification/EMNotificationMessage$1;->newArray(I)[Lcom/hyphenate/notification/EMNotificationMessage;

    move-result-object p1

    return-object p1
.end method
