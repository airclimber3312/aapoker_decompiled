.class public interface abstract Lio/agora/base/internal/video/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/VideoDecoder$Callback;,
        Lio/agora/base/internal/video/VideoDecoder$DecodeInfo;,
        Lio/agora/base/internal/video/VideoDecoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract attachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract createNativeVideoDecoder()J
.end method

.method public abstract decode(Lio/agora/base/internal/video/EncodedImage;Lio/agora/base/internal/video/VideoDecoder$DecodeInfo;Lio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract detachProxyThread()Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getPrefersLateDecoding()Z
.end method

.method public abstract initDecode(Lio/agora/base/internal/video/VideoDecoder$Settings;Lio/agora/base/internal/video/VideoDecoder$Callback;)Lio/agora/base/internal/video/VideoCodecStatus;
.end method

.method public abstract isHardwareDecoder()Z
.end method

.method public abstract release()Lio/agora/base/internal/video/VideoCodecStatus;
.end method
