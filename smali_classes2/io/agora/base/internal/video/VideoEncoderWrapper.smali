.class Lio/agora/base/internal/video/VideoEncoderWrapper;
.super Ljava/lang/Object;
.source "VideoEncoderWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;IIIIILio/agora/base/internal/video/CodecSpecificInfo;)V
    .locals 0

    .line 23
    invoke-static/range {p0 .. p16}, Lio/agora/base/internal/video/VideoEncoderWrapper;->nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;IIIIILio/agora/base/internal/video/CodecSpecificInfo;)V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lio/agora/base/internal/video/VideoEncoderWrapper;->nativeOnEncodeReset(J)V

    return-void
.end method

.method static synthetic access$200(JJ)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3}, Lio/agora/base/internal/video/VideoEncoderWrapper;->nativeOnEncodeBufferPrepared(JJ)V

    return-void
.end method

.method static createEncoderCallback(J)Lio/agora/base/internal/video/VideoEncoder$Callback;
    .locals 1

    .line 43
    new-instance v0, Lio/agora/base/internal/video/VideoEncoderWrapper$1;

    invoke-direct {v0, p0, p1}, Lio/agora/base/internal/video/VideoEncoderWrapper$1;-><init>(J)V

    return-object v0
.end method

.method static getScalingSettingsHigh(Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-object p0
.end method

.method static getScalingSettingsLow(Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    return-object p0
.end method

.method static getScalingSettingsOn(Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;->on:Z

    return p0
.end method

.method private static native nativeOnEncodeBufferPrepared(JJ)V
.end method

.method private static native nativeOnEncodeReset(J)V
.end method

.method private static native nativeOnEncodedFrame(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;IIIIILio/agora/base/internal/video/CodecSpecificInfo;)V
.end method

.method private static native nativeRewriteSpsInConfigBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
.end method

.method private static native nativeShouldUseBaseline()Z
.end method

.method static rewriteSpsInConfigBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
    .locals 0

    .line 75
    invoke-static {p0, p1, p2, p3}, Lio/agora/base/internal/video/VideoEncoderWrapper;->nativeRewriteSpsInConfigBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static shouldUseBaseline()Z
    .locals 1

    .line 79
    invoke-static {}, Lio/agora/base/internal/video/VideoEncoderWrapper;->nativeShouldUseBaseline()Z

    move-result v0

    return v0
.end method
