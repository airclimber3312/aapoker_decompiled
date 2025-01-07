.class final enum Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$1;
.super Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1324
    invoke-direct {p0, p1, p2, v0}, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;-><init>(Ljava/lang/String;ILio/agora/base/internal/video/HardwareVideoEncoder$1;)V

    return-void
.end method


# virtual methods
.method fillBuffer(Ljava/nio/ByteBuffer;IILio/agora/base/VideoFrame$Buffer;)V
    .locals 15

    move-object/from16 v0, p1

    .line 1328
    invoke-interface/range {p4 .. p4}, Lio/agora/base/VideoFrame$Buffer;->toI420()Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object v14

    add-int/lit8 v1, p2, 0x1

    .line 1329
    div-int/lit8 v11, v1, 0x2

    add-int/lit8 v1, p3, 0x1

    .line 1330
    div-int/lit8 v1, v1, 0x2

    mul-int v2, p2, p3

    mul-int v1, v1, v11

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    .line 1333
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, v3, :cond_0

    add-int/2addr v1, v2

    const/4 v3, 0x0

    .line 1342
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1343
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1344
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1345
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1346
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1347
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1349
    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    .line 1350
    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    .line 1351
    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getWidth()I

    move-result v12

    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->getHeight()I

    move-result v13

    move/from16 v7, p2

    move v9, v11

    .line 1349
    invoke-static/range {v0 .. v13}, Lio/agora/base/internal/video/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 1352
    invoke-interface {v14}, Lio/agora/base/VideoFrame$I420Buffer;->release()V

    return-void

    .line 1334
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Expected destination buffer capacity to be at least "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
