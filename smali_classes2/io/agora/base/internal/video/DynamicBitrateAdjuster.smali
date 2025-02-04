.class Lio/agora/base/internal/video/DynamicBitrateAdjuster;
.super Lio/agora/base/internal/video/BaseBitrateAdjuster;
.source "DynamicBitrateAdjuster.java"


# static fields
.field private static final BITRATE_ADJUSTMENT_MAX_SCALE:D = 4.0

.field private static final BITRATE_ADJUSTMENT_SEC:D = 3.0

.field private static final BITRATE_ADJUSTMENT_STEPS:I = 0x14

.field private static final BITS_PER_BYTE:D = 8.0


# instance fields
.field private bitrateAdjustmentScaleExp:I

.field private deviationBytes:D

.field private timeSinceLastAdjustmentMs:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lio/agora/base/internal/video/BaseBitrateAdjuster;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    .line 30
    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    return-void
.end method

.method private getBitrateAdjustmentScale()D
    .locals 4

    .line 90
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 4

    .line 96
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, v0

    invoke-direct {p0}, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->getBitrateAdjustmentScale()D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public reportEncodedFrame(I)V
    .locals 8

    .line 44
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetFps:I

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    iget v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 50
    iget-wide v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    int-to-double v6, p1

    sub-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    .line 51
    iget-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    iget p1, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v4

    add-double/2addr v0, v6

    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    .line 55
    iget p1, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v0

    .line 60
    iget-wide v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    neg-double v2, v2

    .line 61
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    .line 65
    iget-wide v4, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const-wide v6, 0x40a7700000000000L    # 3000.0

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v2, v0

    if-lez p1, :cond_2

    div-double/2addr v2, v0

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 72
    iget v2, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    sub-int/2addr v2, p1

    iput v2, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    const/16 p1, -0x14

    .line 75
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 76
    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    goto :goto_0

    :cond_2
    neg-double v6, v0

    cmpg-double p1, v2, v6

    if-gez p1, :cond_3

    neg-double v2, v2

    div-double/2addr v2, v0

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 80
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    const/16 p1, 0x14

    .line 83
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 84
    iput-wide v6, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    return-void
.end method

.method public setTargets(II)V
    .locals 4

    .line 35
    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    if-ge p1, v0, :cond_0

    .line 37
    iget-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    int-to-double v2, p1

    mul-double v0, v0, v2

    iget v2, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lio/agora/base/internal/video/DynamicBitrateAdjuster;->deviationBytes:D

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/BaseBitrateAdjuster;->setTargets(II)V

    return-void
.end method
