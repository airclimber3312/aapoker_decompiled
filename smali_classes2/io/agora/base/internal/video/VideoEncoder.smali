.class public interface abstract Lio/agora/base/internal/video/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/VideoEncoder$EncoderStyle;,
        Lio/agora/base/internal/video/VideoEncoder$BitrateAdjustment;,
        Lio/agora/base/internal/video/VideoEncoder$Callback;,
        Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;,
        Lio/agora/base/internal/video/VideoEncoder$BitrateAllocation;,
        Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;,
        Lio/agora/base/internal/video/VideoEncoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract createNativeVideoEncoder()J
.end method

.method public abstract detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract encode(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;)Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract flush()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract getEncoderStyle()Lio/agora/base/internal/video/VideoEncoder$EncoderStyle;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getResetCoolDownTimeMs()J
.end method

.method public abstract getScalingSettings()Lio/agora/base/internal/video/VideoEncoder$ScalingSettings;
.end method

.method public abstract initEncode(Lio/agora/base/internal/video/VideoEncoder$Settings;Lio/agora/base/internal/video/VideoEncoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract isHardwareEncoder()Z
.end method

.method public abstract isQcomHardware()Z
.end method

.method public abstract release()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract resume()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract setChannelParameters(SJ)Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract setRateAllocation(Lio/agora/base/internal/video/VideoEncoder$BitrateAllocation;I)Lio/agora/base/internal/video/VideoCodecStatus;
.end method
