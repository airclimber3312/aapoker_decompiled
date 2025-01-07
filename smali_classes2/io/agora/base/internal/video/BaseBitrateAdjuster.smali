.class Lio/agora/base/internal/video/BaseBitrateAdjuster;
.super Ljava/lang/Object;
.source "BaseBitrateAdjuster.java"

# interfaces
.implements Lio/agora/base/internal/video/BitrateAdjuster;


# instance fields
.field protected targetBitrateBps:I

.field protected targetFps:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 16
    iput v0, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetFps:I

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 1

    .line 31
    iget v0, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getCodecConfigFramerate()I
    .locals 1

    .line 36
    iget v0, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetFps:I

    return v0
.end method

.method public reportEncodedFrame(I)V
    .locals 0

    return-void
.end method

.method public setTargets(II)V
    .locals 0

    .line 20
    iput p1, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 21
    iput p2, p0, Lio/agora/base/internal/video/BaseBitrateAdjuster;->targetFps:I

    return-void
.end method
