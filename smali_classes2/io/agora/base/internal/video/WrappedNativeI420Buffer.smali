.class Lio/agora/base/internal/video/WrappedNativeI420Buffer;
.super Ljava/lang/Object;
.source "WrappedNativeI420Buffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$I420Buffer;


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
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->width:I

    .line 38
    iput p2, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->height:I

    .line 39
    iput-object p3, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 40
    iput p4, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideY:I

    .line 41
    iput-object p5, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 42
    iput p6, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideU:I

    .line 43
    iput-object p7, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 44
    iput p8, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideV:I

    .line 45
    iput-wide p9, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 47
    invoke-virtual {p0}, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->retain()V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    .line 112
    invoke-static/range {p0 .. p6}, Lio/agora/base/JavaI420Buffer;->cropAndScaleI420(Lio/agora/base/VideoFrame$I420Buffer;IIIIII)Lio/agora/base/VideoFrame$Buffer;

    move-result-object p1

    return-object p1
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 85
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 90
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 80
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 52
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->width:I

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
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeAddRef(J)V

    return-void
.end method

.method public rotate(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toI420()Lio/agora/base/VideoFrame$I420Buffer;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lio/agora/base/internal/video/WrappedNativeI420Buffer;->retain()V

    return-object p0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
