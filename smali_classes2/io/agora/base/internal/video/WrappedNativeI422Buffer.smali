.class Lio/agora/base/internal/video/WrappedNativeI422Buffer;
.super Ljava/lang/Object;
.source "WrappedNativeI422Buffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$I422Buffer;


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->width:I

    .line 37
    iput p2, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->height:I

    .line 38
    iput-object p3, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 39
    iput p4, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideY:I

    .line 40
    iput-object p5, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 41
    iput p6, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideU:I

    .line 42
    iput-object p7, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 43
    iput p8, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideV:I

    .line 44
    iput-wide p9, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->nativeBuffer:J

    .line 46
    invoke-virtual {p0}, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->retain()V

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

    .line 68
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 84
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 89
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 79
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->width:I

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
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeI422Buffer;->nativeBuffer:J

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
