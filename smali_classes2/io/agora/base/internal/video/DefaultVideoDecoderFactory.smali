.class public Lio/agora/base/internal/video/DefaultVideoDecoderFactory;
.super Ljava/lang/Object;
.source "DefaultVideoDecoderFactory.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultVideoDecoderFactory"


# instance fields
.field private final hardwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

.field private final softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/EglBase$Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/agora/base/internal/video/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lio/agora/base/internal/video/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    .line 27
    new-instance v0, Lio/agora/base/internal/video/HardwareVideoDecoderFactory;

    invoke-direct {v0, p1}, Lio/agora/base/internal/video/HardwareVideoDecoderFactory;-><init>(Lio/agora/base/internal/video/EglBase$Context;)V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    return-void
.end method

.method constructor <init>(Lio/agora/base/internal/video/VideoDecoderFactory;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/agora/base/internal/video/SoftwareVideoDecoderFactory;

    invoke-direct {v0}, Lio/agora/base/internal/video/SoftwareVideoDecoderFactory;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    .line 32
    iput-object p1, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    return-void
.end method


# virtual methods
.method public createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;
    .locals 3

    .line 37
    iget-object v0, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    invoke-interface {v0, p1}, Lio/agora/base/internal/video/VideoDecoderFactory;->createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    invoke-interface {v1, p1}, Lio/agora/base/internal/video/VideoDecoderFactory;->createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lio/agora/base/internal/video/VideoDecoderFallback;

    invoke-direct {v1, v0, p1}, Lio/agora/base/internal/video/VideoDecoderFallback;-><init>(Lio/agora/base/internal/video/VideoDecoder;Lio/agora/base/internal/video/VideoDecoder;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "hardware"

    goto :goto_0

    :cond_1
    const-string v1, "software"

    :goto_0
    const-string v2, "using decoder:"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultVideoDecoderFactory"

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method public createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;Z)Lio/agora/base/internal/video/VideoDecoder;
    .locals 0

    if-nez p2, :cond_0

    .line 52
    iget-object p2, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    invoke-interface {p2, p1}, Lio/agora/base/internal/video/VideoDecoderFactory;->createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->createDecoder(Lio/agora/base/internal/video/VideoCodecInfo;)Lio/agora/base/internal/video/VideoDecoder;

    move-result-object p1

    return-object p1
.end method

.method public createDecoder(Ljava/lang/String;)Lio/agora/base/internal/video/VideoDecoder;
    .locals 1

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated and not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSupportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;
    .locals 2

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->softwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    invoke-interface {v1}, Lio/agora/base/internal/video/VideoDecoderFactory;->getSupportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v1, p0, Lio/agora/base/internal/video/DefaultVideoDecoderFactory;->hardwareVideoDecoderFactory:Lio/agora/base/internal/video/VideoDecoderFactory;

    invoke-interface {v1}, Lio/agora/base/internal/video/VideoDecoderFactory;->getSupportedCodecs()[Lio/agora/base/internal/video/VideoCodecInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lio/agora/base/internal/video/VideoCodecInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoCodecInfo;

    return-object v0
.end method
