.class Lio/agora/base/internal/video/FactorBitrateAdjuster;
.super Lio/agora/base/internal/video/BaseBitrateAdjuster;
.source "FactorBitrateAdjuster.java"


# static fields
.field public static final FACTOR_BASE:I = 0x3e8

.field public static final FACTOR_LEVEL1:I = 0x3b6


# instance fields
.field private factorLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lio/agora/base/internal/video/BaseBitrateAdjuster;-><init>()V

    const/16 v0, 0x3e8

    .line 20
    iput v0, p0, Lio/agora/base/internal/video/FactorBitrateAdjuster;->factorLevel:I

    const/16 v0, 0x3b6

    if-ne p1, v0, :cond_0

    .line 23
    iput v0, p0, Lio/agora/base/internal/video/FactorBitrateAdjuster;->factorLevel:I

    :cond_0
    return-void
.end method

.method private getBitrateAdjustmentScale()D
    .locals 4

    .line 28
    iget v0, p0, Lio/agora/base/internal/video/FactorBitrateAdjuster;->factorLevel:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public setTargets(II)V
    .locals 2

    .line 33
    invoke-super {p0, p1, p2}, Lio/agora/base/internal/video/BaseBitrateAdjuster;->setTargets(II)V

    .line 35
    iget p1, p0, Lio/agora/base/internal/video/FactorBitrateAdjuster;->targetBitrateBps:I

    int-to-double p1, p1

    invoke-direct {p0}, Lio/agora/base/internal/video/FactorBitrateAdjuster;->getBitrateAdjustmentScale()D

    move-result-wide v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lio/agora/base/internal/video/FactorBitrateAdjuster;->targetBitrateBps:I

    return-void
.end method
