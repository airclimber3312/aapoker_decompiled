.class Lio/agora/base/internal/video/VideoDecoderWrapper;
.super Ljava/lang/Object;
.source "VideoDecoderWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JLio/agora/base/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;IIILio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)V
    .locals 0

    .line 20
    invoke-static/range {p0 .. p9}, Lio/agora/base/internal/video/VideoDecoderWrapper;->nativeOnDecodedFrame(JLio/agora/base/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;IIILio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lio/agora/base/internal/video/VideoDecoderWrapper;->nativeOnDecodeReset(J)V

    return-void
.end method

.method static synthetic access$200(JJ)V
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lio/agora/base/internal/video/VideoDecoderWrapper;->nativeOnDecodeBufferPrepared(JJ)V

    return-void
.end method

.method static createDecoderCallback(J)Lio/agora/base/internal/video/VideoDecoder$Callback;
    .locals 1

    .line 23
    new-instance v0, Lio/agora/base/internal/video/VideoDecoderWrapper$1;

    invoke-direct {v0, p0, p1}, Lio/agora/base/internal/video/VideoDecoderWrapper$1;-><init>(J)V

    return-object v0
.end method

.method private static native nativeOnDecodeBufferPrepared(JJ)V
.end method

.method private static native nativeOnDecodeReset(J)V
.end method

.method private static native nativeOnDecodedFrame(JLio/agora/base/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;IIILio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)V
.end method
