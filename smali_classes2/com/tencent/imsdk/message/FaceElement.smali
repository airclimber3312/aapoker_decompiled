.class public Lcom/tencent/imsdk/message/FaceElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "FaceElement.java"


# instance fields
.field private faceData:[B

.field private faceIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/FaceElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getFaceData()[B
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tencent/imsdk/message/FaceElement;->faceData:[B

    return-object v0
.end method

.method public getFaceIndex()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/tencent/imsdk/message/FaceElement;->faceIndex:I

    return v0
.end method

.method public setFaceData([B)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/imsdk/message/FaceElement;->faceData:[B

    return-void
.end method

.method public setFaceIndex(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/imsdk/message/FaceElement;->faceIndex:I

    return-void
.end method
