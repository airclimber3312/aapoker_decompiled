.class public Lio/agora/rtc2/video/FocalLengthInfo;
.super Ljava/lang/Object;
.source "FocalLengthInfo.java"


# instance fields
.field public cameraDirection:I

.field public cameraId:I

.field public focalLengthType:I

.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    .line 18
    iput p2, p0, Lio/agora/rtc2/video/FocalLengthInfo;->index:I

    .line 19
    iput p3, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraId:I

    .line 20
    iput p4, p0, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lio/agora/rtc2/video/FocalLengthInfo;

    .line 54
    iget v2, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    iget v3, p1, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    iget p1, p1, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCameraDirection()I
    .locals 1

    .line 25
    iget v0, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .line 35
    iget v0, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraId:I

    return v0
.end method

.method public getFocalLengthType()I
    .locals 1

    .line 40
    iget v0, p0, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 30
    iget v0, p0, Lio/agora/rtc2/video/FocalLengthInfo;->index:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    iget v1, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{cameraDirection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/video/FocalLengthInfo;->cameraDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/video/FocalLengthInfo;->focalLengthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
