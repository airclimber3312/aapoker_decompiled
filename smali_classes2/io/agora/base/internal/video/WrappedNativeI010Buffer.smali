.class Lio/agora/base/internal/video/WrappedNativeI010Buffer;
.super Lio/agora/base/JavaI010Buffer;
.source "WrappedNativeI010Buffer.java"


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final nativeBuffer:J

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IJ)V
    .locals 11

    move-object v10, p0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 38
    invoke-direct/range {v0 .. v9}, Lio/agora/base/JavaI010Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    move v0, p1

    .line 39
    iput v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->width:I

    move v0, p2

    .line 40
    iput v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->height:I

    move-object v0, p3

    .line 41
    iput-object v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataY:Ljava/nio/ByteBuffer;

    move v0, p4

    .line 42
    iput v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideY:I

    move-object/from16 v0, p5

    .line 43
    iput-object v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataU:Ljava/nio/ByteBuffer;

    move/from16 v0, p6

    .line 44
    iput v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideU:I

    move-object/from16 v0, p7

    .line 45
    iput-object v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataV:Ljava/nio/ByteBuffer;

    move/from16 v0, p8

    .line 46
    iput v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideV:I

    move-wide/from16 v0, p9

    .line 47
    iput-wide v0, v10, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->nativeBuffer:J

    .line 48
    invoke-virtual {p0}, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->retain()V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 58
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 86
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 91
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 81
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 53
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->width:I

    return v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 106
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI010Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeAddRef(J)V

    return-void
.end method

.method public rotate(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toI420()Lio/agora/base/VideoFrame$I420Buffer;
    .locals 1

    .line 96
    invoke-super {p0}, Lio/agora/base/JavaI010Buffer;->toI420()Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
