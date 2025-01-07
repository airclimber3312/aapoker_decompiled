.class public Lcom/hyphenate/notification/EMNotificationMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hyphenate/notification/EMNotificationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field badgeAdd:I

.field badgeClass:Ljava/lang/String;

.field badgeSet:I

.field extras:Ljava/lang/String;

.field needNotification:Z

.field notificationAutoClear:Z

.field notificationBigPicPath:Ljava/lang/String;

.field notificationBigText:Ljava/lang/String;

.field notificationCancelTime:J

.field notificationChannelId:Ljava/lang/String;

.field notificationChannelLevel:I

.field notificationChannelName:Ljava/lang/String;

.field notificationContent:Ljava/lang/String;

.field notificationExpiresTime:J

.field notificationIconUrl:Ljava/lang/String;

.field notificationNotifyId:I

.field notificationSound:Z

.field notificationStyle:I

.field notificationTitle:Ljava/lang/String;

.field notificationVibrate:Z

.field openAction:Ljava/lang/String;

.field openActivity:Ljava/lang/String;

.field openType:I

.field openUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hyphenate/notification/EMNotificationMessage$1;

    invoke-direct {v0}, Lcom/hyphenate/notification/EMNotificationMessage$1;-><init>()V

    sput-object v0, Lcom/hyphenate/notification/EMNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeAdd()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    return v0
.end method

.method public getBadgeClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeSet()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    return v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationBigPicPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationBigText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationCancelTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    return-wide v0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelLevel()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    return v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationExpiresTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    return-wide v0
.end method

.method public getNotificationIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationNotifyId()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    return v0
.end method

.method public getNotificationStyle()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    return v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenType()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    return v0
.end method

.method public getOpenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    return v0
.end method

.method public isNotificationAutoClear()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    return v0
.end method

.method public isNotificationSound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    return v0
.end method

.method public isNotificationVibrate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    return-void
.end method

.method public setBadgeAdd(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    return-void
.end method

.method public setBadgeClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    return-void
.end method

.method public setBadgeSet(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    return-void
.end method

.method public setNeedNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    return-void
.end method

.method public setNotificationAutoClear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    return-void
.end method

.method public setNotificationBigPicPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    return-void
.end method

.method public setNotificationBigText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    return-void
.end method

.method public setNotificationCancelTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    return-void
.end method

.method public setNotificationChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    return-void
.end method

.method public setNotificationChannelLevel(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    return-void
.end method

.method public setNotificationChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    return-void
.end method

.method public setNotificationContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    return-void
.end method

.method public setNotificationExpiresTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    return-void
.end method

.method public setNotificationIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setNotificationNotifyId(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    return-void
.end method

.method public setNotificationSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    return-void
.end method

.method public setNotificationStyle(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    return-void
.end method

.method public setNotificationVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    return-void
.end method

.method public setOpenAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    return-void
.end method

.method public setOpenActivity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    return-void
.end method

.method public setOpenType(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    return-void
.end method

.method public setOpenUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMNotificationMessage{notificationTitle=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationBigPicPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationBigText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationChannelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationChannelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notificationChannelLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationNotifyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationAutoClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationExpiresTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", notificationCancelTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", openType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', openAction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', openActivity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extras=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', badgeAdd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", badgeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", badgeClass=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', needNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigPicPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationBigText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationChannelLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationNotifyId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationAutoClear:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationSound:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationVibrate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationExpiresTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/hyphenate/notification/EMNotificationMessage;->notificationCancelTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->openActivity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->extras:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeAdd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeSet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->badgeClass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hyphenate/notification/EMNotificationMessage;->needNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
