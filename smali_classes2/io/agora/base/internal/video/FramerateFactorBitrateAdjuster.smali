.class Lio/agora/base/internal/video/FramerateFactorBitrateAdjuster;
.super Lio/agora/base/internal/video/FactorBitrateAdjuster;
.source "FramerateFactorBitrateAdjuster.java"


# static fields
.field private static final INITIAL_FPS:I = 0x1e


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/FactorBitrateAdjuster;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCodecConfigFramerate()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public setTargets(II)V
    .locals 2

    .line 26
    iget v0, p0, Lio/agora/base/internal/video/FramerateFactorBitrateAdjuster;->targetFps:I

    const/16 v1, 0x1e

    if-nez v0, :cond_0

    const/16 p2, 0x1e

    :cond_0
    mul-int/lit8 p1, p1, 0x1e

    .line 31
    div-int/2addr p1, p2

    .line 32
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/FactorBitrateAdjuster;->setTargets(II)V

    return-void
.end method
