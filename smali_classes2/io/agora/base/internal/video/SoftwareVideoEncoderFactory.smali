.class public Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "SoftwareVideoEncoderFactory.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoEncoderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static supportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;
    .locals 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lio/agora/base/internal/video/VideoCodecInfo;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "VP8"

    invoke-direct {v1, v3, v2}, Lio/agora/base/internal/video/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lio/agora/base/internal/video/VP9Encoder;->nativeIsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lio/agora/base/internal/video/VideoCodecInfo;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "VP9"

    invoke-direct {v1, v3, v2}, Lio/agora/base/internal/video/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-static {}, Lio/agora/base/internal/video/H264Encoder;->nativeIsSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Lio/agora/base/internal/video/VideoCodecInfo;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "H264"

    invoke-direct {v1, v3, v2}, Lio/agora/base/internal/video/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/agora/base/internal/video/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoCodecInfo;

    return-object v0
.end method


# virtual methods
.method public createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;
    .locals 1

    .line 29
    iget-object p2, p1, Lio/agora/base/internal/video/VideoCodecInfo;->name:Ljava/lang/String;

    const-string v0, "VP8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    new-instance p1, Lio/agora/base/internal/video/VP8Encoder;

    invoke-direct {p1}, Lio/agora/base/internal/video/VP8Encoder;-><init>()V

    return-object p1

    .line 32
    :cond_0
    iget-object p2, p1, Lio/agora/base/internal/video/VideoCodecInfo;->name:Ljava/lang/String;

    const-string v0, "VP9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lio/agora/base/internal/video/VP9Encoder;->nativeIsSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 33
    new-instance p1, Lio/agora/base/internal/video/VP9Encoder;

    invoke-direct {p1}, Lio/agora/base/internal/video/VP9Encoder;-><init>()V

    return-object p1

    .line 35
    :cond_1
    iget-object p1, p1, Lio/agora/base/internal/video/VideoCodecInfo;->name:Ljava/lang/String;

    const-string p2, "H264"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lio/agora/base/internal/video/H264Encoder;->nativeIsSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    new-instance p1, Lio/agora/base/internal/video/H264Encoder;

    invoke-direct {p1}, Lio/agora/base/internal/video/H264Encoder;-><init>()V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;ZZ)Lio/agora/base/internal/video/VideoEncoder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;->createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCodecs(Z)[Lio/agora/base/internal/video/VideoCodecInfo;
    .locals 0

    .line 44
    invoke-static {}, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;->supportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;

    move-result-object p1

    return-object p1
.end method
