.class Lio/agora/base/internal/video/FramerateBitrateAdjuster;
.super Lio/agora/base/internal/video/BaseBitrateAdjuster;
.source "FramerateBitrateAdjuster.java"


# static fields
.field private static final INITIAL_FPS:I = 0x1e


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/agora/base/internal/video/BaseBitrateAdjuster;-><init>()V

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

    .line 22
    iget v0, p0, Lio/agora/base/internal/video/FramerateBitrateAdjuster;->targetFps:I

    const/16 v1, 0x1e

    if-nez v0, :cond_0

    const/16 p2, 0x1e

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/BaseBitrateAdjuster;->setTargets(II)V

    .line 28
    iget p1, p0, Lio/agora/base/internal/video/FramerateBitrateAdjuster;->targetBitrateBps:I

    mul-int/lit8 p1, p1, 0x1e

    iget p2, p0, Lio/agora/base/internal/video/FramerateBitrateAdjuster;->targetFps:I

    div-int/2addr p1, p2

    iput p1, p0, Lio/agora/base/internal/video/FramerateBitrateAdjuster;->targetBitrateBps:I

    return-void
.end method
