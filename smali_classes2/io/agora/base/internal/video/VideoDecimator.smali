.class public Lio/agora/base/internal/video/VideoDecimator;
.super Ljava/lang/Object;
.source "VideoDecimator.java"


# static fields
.field private static FrameCountHistorySize:I = 0x5a

.field private static FrameShitoryWindowMs:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "VideoDecimator"


# instance fields
.field private dropCount:I

.field private dropNextFrame:Z

.field private enableTemoralDecimation:Z

.field private incomingFrameRate:F

.field private incomingFrameTimes:[J

.field private keepCount:I

.field private maxFrameRate:I

.field private overshootModifier:F

.field private targetFrameRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a

    .line 12
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->maxFrameRate:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->enableTemoralDecimation:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->dropNextFrame:Z

    .line 20
    sget v0, Lio/agora/base/internal/video/VideoDecimator;->FrameCountHistorySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    return-void
.end method

.method private processIncomingFramerate(J)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 148
    :goto_0
    sget v3, Lio/agora/base/internal/video/VideoDecimator;->FrameCountHistorySize:I

    sub-int/2addr v3, v1

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 149
    iget-object v3, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    aget-wide v6, v3, v2

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    sub-long v6, p1, v6

    sget v3, Lio/agora/base/internal/video/VideoDecimator;->FrameShitoryWindowMs:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    if-le v2, v1, :cond_2

    .line 156
    iget-object v6, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    sub-int/2addr v2, v1

    aget-wide v1, v6, v2

    sub-long/2addr p1, v1

    .line 157
    iput v3, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    cmp-long v1, p1, v4

    if-lez v1, :cond_3

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    long-to-float p1, p1

    mul-float p1, p1, v3

    div-float/2addr v0, p1

    .line 159
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    goto :goto_2

    :cond_2
    int-to-float p1, v0

    mul-float p1, p1, v3

    .line 162
    iput p1, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public decimatedFramerate()I
    .locals 2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/agora/base/internal/video/VideoDecimator;->processIncomingFramerate(J)V

    .line 125
    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->enableTemoralDecimation:Z

    if-nez v0, :cond_0

    .line 126
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    float-to-int v0, v0

    iget v1, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public dropFrame()Z
    .locals 7

    .line 67
    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->enableTemoralDecimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    return v1

    .line 71
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 72
    iget v3, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    const/4 v4, 0x1

    cmpl-float v5, v3, v2

    if-nez v5, :cond_2

    return v4

    :cond_2
    int-to-float v5, v0

    cmpl-float v6, v5, v3

    if-lez v6, :cond_8

    .line 76
    iget v6, p0, Lio/agora/base/internal/video/VideoDecimator;->overshootModifier:F

    sub-float/2addr v5, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    if-gez v5, :cond_3

    .line 79
    iput v2, p0, Lio/agora/base/internal/video/VideoDecimator;->overshootModifier:F

    const/4 v5, 0x0

    :cond_3
    if-eqz v5, :cond_6

    mul-int/lit8 v2, v5, 0x2

    if-ge v2, v0, :cond_6

    .line 82
    iget v2, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    if-eqz v2, :cond_4

    .line 83
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    return v4

    .line 87
    :cond_4
    div-int v2, v0, v5

    .line 88
    iget v3, p0, Lio/agora/base/internal/video/VideoDecimator;->keepCount:I

    if-le v3, v2, :cond_5

    .line 90
    rem-int/2addr v0, v5

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->overshootModifier:F

    .line 91
    iput v4, p0, Lio/agora/base/internal/video/VideoDecimator;->keepCount:I

    goto :goto_0

    :cond_5
    add-int/2addr v3, v4

    .line 93
    iput v3, p0, Lio/agora/base/internal/video/VideoDecimator;->keepCount:I

    goto :goto_1

    .line 96
    :cond_6
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->keepCount:I

    int-to-float v0, v5

    div-float v2, v0, v3

    float-to-int v2, v2

    .line 98
    iget v5, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    if-ge v5, v2, :cond_7

    add-int/2addr v5, v4

    .line 100
    iput v5, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    div-float v2, v0, v3

    float-to-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    .line 102
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->overshootModifier:F

    .line 104
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    :cond_8
    :goto_1
    return v1
.end method

.method public dropNextFrame()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->dropNextFrame:Z

    return v0
.end method

.method public enableTemporalDecimation(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lio/agora/base/internal/video/VideoDecimator;->enableTemoralDecimation:Z

    return-void
.end method

.method public getTargetFrameRate()I
    .locals 1

    .line 63
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    float-to-int v0, v0

    return v0
.end method

.method public inputFramerate()I
    .locals 2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/agora/base/internal/video/VideoDecimator;->processIncomingFramerate(J)V

    .line 133
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public needDropNextFrame(Z)Z
    .locals 0

    .line 141
    iput-boolean p1, p0, Lio/agora/base/internal/video/VideoDecimator;->dropNextFrame:Z

    return p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->overshootModifier:F

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->dropCount:I

    .line 26
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->keepCount:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 27
    iput v1, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    .line 28
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameRate:F

    const/16 v0, 0x5a

    .line 29
    iput v0, p0, Lio/agora/base/internal/video/VideoDecimator;->maxFrameRate:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoDecimator;->enableTemoralDecimation:Z

    .line 31
    sget v0, Lio/agora/base/internal/video/VideoDecimator;->FrameCountHistorySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    return-void
.end method

.method public setMaxFramerate(I)I
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "VideoDecimator"

    const-string v0, "setMaxFramerate invalid max frame rate"

    .line 40
    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 43
    :cond_0
    iput p1, p0, Lio/agora/base/internal/video/VideoDecimator;->maxFrameRate:I

    .line 44
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 45
    iput p1, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setTargetFramerate(F)I
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-string p1, "VideoDecimator"

    const-string v0, "setTargetFramerate invalid frame rate "

    .line 51
    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 54
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/VideoDecimator;->maxFrameRate:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    int-to-float p1, v0

    .line 55
    iput p1, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    goto :goto_0

    .line 57
    :cond_1
    iput p1, p0, Lio/agora/base/internal/video/VideoDecimator;->targetFrameRate:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateIncomingFramerate()V
    .locals 8

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    iget-object v2, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    sget v2, Lio/agora/base/internal/video/VideoDecimator;->FrameCountHistorySize:I

    add-int/lit8 v2, v2, -0x2

    :goto_0
    if-ltz v2, :cond_1

    .line 116
    iget-object v4, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v4, v2

    aput-wide v6, v4, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    iget-object v2, p0, Lio/agora/base/internal/video/VideoDecimator;->incomingFrameTimes:[J

    aput-wide v0, v2, v3

    .line 120
    invoke-direct {p0, v0, v1}, Lio/agora/base/internal/video/VideoDecimator;->processIncomingFramerate(J)V

    return-void
.end method
