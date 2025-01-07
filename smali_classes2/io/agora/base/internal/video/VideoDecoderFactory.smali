.class public interface abstract Lio/agora/base/internal/video/VideoDecoderFactory;
.super Ljava/lang/Object;
.source "VideoDecoderFactory.java"


# virtual methods
.method public abstract createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;
.end method

.method public abstract createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoDecoder;
.end method

.method public abstract createDecoder(Ljava/lang/String;)Lio/agora/base/internal/video/VideoDecoder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;
.end method
