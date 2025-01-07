.class public final Lio/agora/base/FaceDetectionInfo;
.super Ljava/lang/Object;
.source "FaceDetectionInfo.java"

# interfaces
.implements Lio/agora/base/IMetaInfo;


# instance fields
.field private mDepth:D

.field private mFaceRect:Landroid/graphics/Rect;

.field private mId:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;D)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lio/agora/base/FaceDetectionInfo;->mId:I

    .line 14
    iput-object p2, p0, Lio/agora/base/FaceDetectionInfo;->mFaceRect:Landroid/graphics/Rect;

    .line 15
    iput-wide p3, p0, Lio/agora/base/FaceDetectionInfo;->mDepth:D

    return-void
.end method


# virtual methods
.method public getDepth()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lio/agora/base/FaceDetectionInfo;->mDepth:D

    return-wide v0
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/agora/base/FaceDetectionInfo;->mFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lio/agora/base/FaceDetectionInfo;->mId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceDetectionInfo{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/base/FaceDetectionInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFaceRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/base/FaceDetectionInfo;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/base/FaceDetectionInfo;->mDepth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
