.class public Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
.super Ljava/lang/Object;
.source "V2TIMOfflinePushInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IOS_OFFLINE_PUSH_DEFAULT_SOUND:Ljava/lang/String; = "default"

.field public static final IOS_OFFLINE_PUSH_NO_SOUND:Ljava/lang/String; = "push.no_sound"

.field public static final IOS_OFFLINE_PUSH_TYPE_APNS:I = 0x0

.field public static final IOS_OFFLINE_PUSH_TYPE_VOIP:I = 0x1


# instance fields
.field private messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    return-void
.end method


# virtual methods
.method public disablePush(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->setPushFlag(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->setPushFlag(I)V

    :goto_0
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExt()[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getExtension()[B

    move-result-object v0

    return-object v0
.end method

.method getMessageOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisablePush()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getPushFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAndroidOPPOChannelID(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getAndroidConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->setOppoChannelID(Ljava/lang/String;)V

    return-void
.end method

.method public setAndroidSound(Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getAndroidConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->setSoundFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setAndroidVIVOClassification(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getAndroidConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$AndroidOfflinePushInfo;->setVivoClassification(I)V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setExt([B)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->setExtension([B)V

    return-void
.end method

.method public setIOSPushType(I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getApnsConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->setIOSPushType(I)V

    return-void
.end method

.method public setIOSSound(Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getApnsConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->setSoundFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setIgnoreIOSBadge(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getApnsConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->setBadgeMode(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->getApnsConfig()Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo$APNSOfflinePushInfo;->setBadgeMode(I)V

    :goto_0
    return-void
.end method

.method setMessageOfflinePushInfo(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->messageOfflinePushInfo:Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageOfflinePushInfo;->setTitle(Ljava/lang/String;)V

    return-void
.end method
