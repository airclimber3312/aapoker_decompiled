.class public Lcom/tencent/imsdk/v2/V2TIMSoundElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMSoundElem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 77
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 79
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadUrl(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 81
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_AUDIO:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 82
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 83
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/DownloadParam;->setFileSavePath(Ljava/lang/String;)V

    .line 85
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMSoundElem$1;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMSoundElem$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 102
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 118
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMSoundElem$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMSoundElem$4;

    invoke-direct {p1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, v1, v2, p1}, Lcom/tencent/imsdk/message/MessageCenter;->downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getDataSize()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 48
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundFileSize()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 61
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDuration()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 22
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 35
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1781

    const-string v1, "elem is null"

    .line 149
    invoke-interface {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/SoundElement;

    .line 153
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDownloadFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 157
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 159
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_FILE:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 160
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/SoundElement;->getSoundBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 161
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMSoundElem$5;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMSoundElem--->uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sender local path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
