.class public Lcom/tencent/imsdk/v2/V2TIMFaceElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMFaceElem.java"


# instance fields
.field private data:[B

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->index:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->data:[B

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FaceElement;

    .line 45
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FaceElement;->getFaceData()[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->index:I

    return v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FaceElement;

    .line 18
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FaceElement;->getFaceIndex()I

    move-result v0

    return v0
.end method

.method public setData([B)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->data:[B

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FaceElement;

    .line 60
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/FaceElement;->setFaceData([B)V

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->index:I

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FaceElement;

    .line 32
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/FaceElement;->setFaceIndex(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMFaceElem--->index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "false"

    goto :goto_0

    :cond_0
    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
