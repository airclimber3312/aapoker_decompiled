.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeader;
.super Ljava/lang/Object;
.source "WavHeader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# instance fields
.field private final averageBytesPerSecond:I

.field private final bitsPerSample:I

.field private final blockAlignment:I

.field private dataSize:J

.field private dataStartPosition:J

.field private final encoding:I

.field private final numChannels:I

.field private final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 48
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    .line 49
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    .line 50
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    .line 51
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    .line 52
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->encoding:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 2

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    mul-int v0, v0, v1

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    .line 82
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 83
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getEncoding()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->encoding:I

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    return v0
.end method

.method public getSampleRateHz()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->sampleRateHz:I

    return v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 11

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 90
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    int-to-long v3, v2

    mul-long v5, v0, v3

    const-wide/16 v7, 0x0

    .line 91
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    int-to-long v2, v2

    sub-long v9, v0, v2

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 92
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    add-long/2addr v2, v0

    .line 93
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v4

    .line 94
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v7, v4, p1

    if-gez v7, :cond_1

    .line 95
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockAlignment:I

    int-to-long v7, v4

    sub-long/2addr p1, v7

    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p1, v4

    add-long/2addr v2, p1

    .line 99
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide p1

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 101
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6, v0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 96
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->averageBytesPerSecond:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public hasDataBounds()Z
    .locals 5

    .line 70
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDataBounds(JJ)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataStartPosition:J

    .line 65
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->dataSize:J

    return-void
.end method
