.class public Lio/agora/base/internal/video/VideoEncoderFallback;
.super Lio/agora/base/internal/video/WrappedNativeVideoEncoder;
.source "VideoEncoderFallback.java"


# instance fields
.field private final fallback:Lio/agora/base/internal/video/VideoEncoder;

.field private final primary:Lio/agora/base/internal/video/VideoEncoder;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/VideoEncoder;Lio/agora/base/internal/video/VideoEncoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;-><init>()V

    .line 21
    iput-object p1, p0, Lio/agora/base/internal/video/VideoEncoderFallback;->fallback:Lio/agora/base/internal/video/VideoEncoder;

    .line 22
    iput-object p2, p0, Lio/agora/base/internal/video/VideoEncoderFallback;->primary:Lio/agora/base/internal/video/VideoEncoder;

    return-void
.end method

.method private static native nativeCreateEncoder(Lio/agora/base/internal/video/VideoEncoder;Lio/agora/base/internal/video/VideoEncoder;)J
.end method


# virtual methods
.method public bridge synthetic attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public createNativeVideoEncoder()J
    .locals 2

    .line 27
    iget-object v0, p0, Lio/agora/base/internal/video/VideoEncoderFallback;->fallback:Lio/agora/base/internal/video/VideoEncoder;

    iget-object v1, p0, Lio/agora/base/internal/video/VideoEncoderFallback;->primary:Lio/agora/base/internal/video/VideoEncoder;

    invoke-static {v0, v1}, Lio/agora/base/internal/video/VideoEncoderFallback;->nativeCreateEncoder(Lio/agora/base/internal/video/VideoEncoder;Lio/agora/base/internal/video/VideoEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encode(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->encode(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic flush()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->flush()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncoderStyle()Lio/agora/base/internal/video/VideoEncoder$EncoderStyle;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->getEncoderStyle()Lio/agora/base/internal/video/VideoEncoder$EncoderStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImplementationName()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResetCoolDownTimeMs()J
    .locals 2

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->getResetCoolDownTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getScalingSettings()Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->getScalingSettings()Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initEncode(Lio/agora/base/internal/video/VideoEncoder$Settings;Lio/agora/base/internal/video/VideoEncoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->initEncode(Lio/agora/base/internal/video/VideoEncoder$Settings;Lio/agora/base/internal/video/VideoEncoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public isHardwareEncoder()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lio/agora/base/internal/video/VideoEncoderFallback;->primary:Lio/agora/base/internal/video/VideoEncoder;

    invoke-interface {v0}, Lio/agora/base/internal/video/VideoEncoder;->isHardwareEncoder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isQcomHardware()Z
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->isQcomHardware()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic release()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->release()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resume()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->resume()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setChannelParameters(SJ)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2, p3}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->setChannelParameters(SJ)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRateAllocation(Lio/agora/base/internal/video/VideoEncoder$BitrateAllocation;I)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/WrappedNativeVideoEncoder;->setRateAllocation(Lio/agora/base/internal/video/VideoEncoder$BitrateAllocation;I)Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method
