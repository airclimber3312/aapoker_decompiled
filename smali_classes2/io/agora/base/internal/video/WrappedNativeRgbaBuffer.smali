.class Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;
.super Ljava/lang/Object;
.source "WrappedNativeRgbaBuffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$RgbaBuffer;


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final height:I

.field private nativeBuffer:J

.field private final width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p4, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->nativeBuffer:J

    .line 34
    iput p1, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->width:I

    .line 35
    iput p2, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->height:I

    .line 36
    iput-object p3, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {p0}, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->retain()V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 46
    iget v0, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->width:I

    return v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 96
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lio/agora/base/internal/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    .line 91
    iget-wide v0, p0, Lio/agora/base/internal/video/WrappedNativeRgbaBuffer;->nativeBuffer:J

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
