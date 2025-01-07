.class public Lcom/tencent/imsdk/v2/V2TIMVideoElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMVideoElem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadSnapshot(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 258
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 259
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 260
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadUrl(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 262
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_VIDEO_THUMB:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 263
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 264
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/DownloadParam;->setFileSavePath(Ljava/lang/String;)V

    .line 266
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMVideoElem$6;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 283
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$7;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 299
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMVideoElem$8;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMVideoElem$9;

    invoke-direct {p1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, v1, v2, p1}, Lcom/tencent/imsdk/message/MessageCenter;->downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public downloadVideo(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "getTIMElem is null"

    .line 74
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 81
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 82
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 83
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadUrl(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 85
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_VIDEO:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 86
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 87
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/DownloadParam;->setFileSavePath(Ljava/lang/String;)V

    .line 89
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 106
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 122
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMVideoElem$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMVideoElem$4;

    invoke-direct {p1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, v1, v2, p1}, Lcom/tencent/imsdk/message/MessageCenter;->downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 61
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public getSnapshotHeight()I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 241
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotHeight()I

    move-result v0

    return v0
.end method

.method public getSnapshotPath()Ljava/lang/String;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 189
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotSize()I
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 215
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotFileSize()I

    move-result v0

    return v0
.end method

.method public getSnapshotUUID()Ljava/lang/String;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 202
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1781

    const-string v1, "elem is null"

    .line 330
    invoke-interface {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 334
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 335
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_2
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 338
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 339
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 340
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_FILE:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 341
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 342
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMVideoElem$10;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public getSnapshotWidth()I
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 228
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotWidth()I

    move-result v0

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 22
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 48
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoFileSize()I

    move-result v0

    return v0
.end method

.method public getVideoUUID()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 35
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1781

    const-string v1, "elem is null"

    .line 153
    invoke-interface {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/VideoElement;

    .line 157
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getSnapshotDownloadFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 161
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getVideoUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 163
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_FILE:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 164
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/VideoElement;->getVideoBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 165
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMVideoElem$5;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMVideoElem--->video uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getVideoUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshot uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sender local video path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video size:"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getVideoSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sender local snapshot path"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshot height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", snapshot width:"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", snapshot size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->getSnapshotSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
