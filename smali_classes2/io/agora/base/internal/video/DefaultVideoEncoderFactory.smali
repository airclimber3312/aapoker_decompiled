.class public Lio/agora/base/internal/video/DefaultVideoEncoderFactory;
.super Ljava/lang/Object;
.source "DefaultVideoEncoderFactory.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoEncoderFactory;


# instance fields
.field private final hardwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

.field private final softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/EglBase$Context;ZZ)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 25
    new-instance v0, Lio/agora/base/internal/video/HardwareVideoEncoderFactory;

    invoke-direct {v0, p1, p2, p3}, Lio/agora/base/internal/video/HardwareVideoEncoderFactory;-><init>(Lio/agora/base/internal/video/EglBase$Context;ZZ)V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    return-void
.end method

.method constructor <init>(Lio/agora/base/internal/video/VideoEncoderFactory;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;

    invoke-direct {v0}, Lio/agora/base/internal/video/SoftwareVideoEncoderFactory;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 31
    iput-object p1, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    return-void
.end method


# virtual methods
.method public createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;
    .locals 2

    .line 37
    iget-object v0, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 38
    invoke-interface {v0, p1, p2}, Lio/agora/base/internal/video/VideoEncoderFactory;->createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 40
    invoke-interface {v1, p1, p2}, Lio/agora/base/internal/video/VideoEncoderFactory;->createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 43
    new-instance p2, Lio/agora/base/internal/video/VideoEncoderFallback;

    invoke-direct {p2, v0, p1}, Lio/agora/base/internal/video/VideoEncoderFallback;-><init>(Lio/agora/base/internal/video/VideoEncoder;Lio/agora/base/internal/video/VideoEncoder;)V

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;ZZ)Lio/agora/base/internal/video/VideoEncoder;
    .locals 0

    if-nez p3, :cond_0

    .line 54
    iget-object p3, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    invoke-interface {p3, p1, p2}, Lio/agora/base/internal/video/VideoEncoderFactory;->createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->createEncoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoEncoder;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCodecs(Z)[Lio/agora/base/internal/video/VideoCodecInfo;
    .locals 2

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->softwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 65
    invoke-interface {v1, p1}, Lio/agora/base/internal/video/VideoEncoderFactory;->getSupportedCodecs(Z)[Lio/agora/base/internal/video/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoEncoderFactory;->hardwareVideoEncoderFactory:Lio/agora/base/internal/video/VideoEncoderFactory;

    .line 67
    invoke-interface {v1, p1}, Lio/agora/base/internal/video/VideoEncoderFactory;->getSupportedCodecs(Z)[Lio/agora/base/internal/video/VideoCodecInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    new-array p1, p1, [Lio/agora/base/internal/video/VideoCodecInfo;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/agora/base/internal/video/VideoCodecInfo;

    return-object p1
.end method
