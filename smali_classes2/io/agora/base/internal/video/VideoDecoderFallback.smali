.class public Lio/agora/base/internal/video/VideoDecoderFallback;
.super Lio/agora/base/internal/video/WrappedNativeVideoDecoder;
.source "VideoDecoderFallback.java"


# instance fields
.field private final fallback:Lio/agora/base/internal/video/VideoDecoder;

.field private final primary:Lio/agora/base/internal/video/VideoDecoder;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/VideoDecoder;Lio/agora/base/internal/video/VideoDecoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;-><init>()V

    .line 21
    iput-object p1, p0, Lio/agora/base/internal/video/VideoDecoderFallback;->fallback:Lio/agora/base/internal/video/VideoDecoder;

    .line 22
    iput-object p2, p0, Lio/agora/base/internal/video/VideoDecoderFallback;->primary:Lio/agora/base/internal/video/VideoDecoder;

    return-void
.end method

.method private static native nativeCreateDecoder(Lio/agora/base/internal/video/VideoDecoder;Lio/agora/base/internal/video/VideoDecoder;)J
.end method


# virtual methods
.method public bridge synthetic attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public createNativeVideoDecoder()J
    .locals 2

    .line 27
    iget-object v0, p0, Lio/agora/base/internal/video/VideoDecoderFallback;->fallback:Lio/agora/base/internal/video/VideoDecoder;

    iget-object v1, p0, Lio/agora/base/internal/video/VideoDecoderFallback;->primary:Lio/agora/base/internal/video/VideoDecoder;

    invoke-static {v0, v1}, Lio/agora/base/internal/video/VideoDecoderFallback;->nativeCreateDecoder(Lio/agora/base/internal/video/VideoDecoder;Lio/agora/base/internal/video/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic decode(Lio/agora/base/internal/video/EncodedImage;Lio/agora/base/internal/video/VideoDecoder$DecodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->decode(Lio/agora/base/internal/video/EncodedImage;Lio/agora/base/internal/video/VideoDecoder$DecodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImplementationName()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrefersLateDecoding()Z
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->getPrefersLateDecoding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic initDecode(Lio/agora/base/internal/video/VideoDecoder$Settings;Lio/agora/base/internal/video/VideoDecoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->initDecode(Lio/agora/base/internal/video/VideoDecoder$Settings;Lio/agora/base/internal/video/VideoDecoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public isHardwareDecoder()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lio/agora/base/internal/video/VideoDecoderFallback;->primary:Lio/agora/base/internal/video/VideoDecoder;

    invoke-interface {v0}, Lio/agora/base/internal/video/VideoDecoder;->isHardwareDecoder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic release()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;->release()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
