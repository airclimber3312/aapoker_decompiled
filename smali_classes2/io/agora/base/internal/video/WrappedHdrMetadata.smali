.class public Lio/agora/base/internal/video/WrappedHdrMetadata;
.super Ljava/lang/Object;
.source "WrappedHdrMetadata.java"

# interfaces
.implements Lio/agora/base/VideoFrame$HdrMetadata;


# instance fields
.field private luminanceMax:I

.field private luminanceMin:I

.field private maxContentLightLevel:I

.field private maxFrameAverageLightLevel:I

.field private primaryB:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

.field private primaryG:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

.field private primaryR:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

.field private whitePoint:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->maxContentLightLevel:I

    .line 23
    iput p2, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->maxFrameAverageLightLevel:I

    .line 24
    new-instance p1, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    invoke-direct {p1, p3, p4}, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;-><init>(II)V

    iput-object p1, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryR:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    .line 25
    new-instance p1, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    invoke-direct {p1, p5, p6}, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;-><init>(II)V

    iput-object p1, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryG:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    .line 26
    new-instance p1, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    invoke-direct {p1, p7, p8}, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;-><init>(II)V

    iput-object p1, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryB:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    .line 27
    new-instance p1, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    invoke-direct {p1, p9, p10}, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;-><init>(II)V

    iput-object p1, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->whitePoint:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    .line 28
    iput p11, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->luminanceMax:I

    .line 29
    iput p12, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->luminanceMin:I

    return-void
.end method


# virtual methods
.method public getLuminanceMax()I
    .locals 1

    .line 64
    iget v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->luminanceMax:I

    return v0
.end method

.method public getLuminanceMin()I
    .locals 1

    .line 69
    iget v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->luminanceMin:I

    return v0
.end method

.method public getMaxContentLightLevel()I
    .locals 1

    .line 34
    iget v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->maxContentLightLevel:I

    return v0
.end method

.method public getMaxFrameAverageLightLevel()I
    .locals 1

    .line 39
    iget v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->maxFrameAverageLightLevel:I

    return v0
.end method

.method public getWhitePoint()Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->whitePoint:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    return-object v0
.end method

.method public getprimaryB()Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryB:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    return-object v0
.end method

.method public getprimaryG()Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryG:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    return-object v0
.end method

.method public getprimaryR()Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedHdrMetadata;->primaryR:Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;

    return-object v0
.end method
