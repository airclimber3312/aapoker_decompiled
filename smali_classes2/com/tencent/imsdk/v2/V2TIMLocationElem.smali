.class public Lcom/tencent/imsdk/v2/V2TIMLocationElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMLocationElem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->longitude:D

    .line 8
    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->latitude:D

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->description:Ljava/lang/String;

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 19
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/LocationElement;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->latitude:D

    return-wide v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 73
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/LocationElement;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->longitude:D

    return-wide v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 46
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/LocationElement;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->description:Ljava/lang/String;

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 33
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/LocationElement;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->latitude:D

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/message/LocationElement;->setLatitude(D)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->longitude:D

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/LocationElement;

    .line 60
    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/message/LocationElement;->setLongitude(D)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMLocationElem--->longitude:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", desc:"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
