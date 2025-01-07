.class public final Landroidx/media2/MediaTimestamp2;
.super Ljava/lang/Object;
.source "MediaTimestamp2.java"


# static fields
.field public static final TIMESTAMP_UNKNOWN:Landroidx/media2/MediaTimestamp2;


# instance fields
.field private final mClockRate:F

.field private final mMediaTimeUs:J

.field private final mNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v6, Landroidx/media2/MediaTimestamp2;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaTimestamp2;-><init>(JJF)V

    sput-object v6, Landroidx/media2/MediaTimestamp2;->TIMESTAMP_UNKNOWN:Landroidx/media2/MediaTimestamp2;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    .line 102
    iput-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    iput v0, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    return-void
.end method

.method constructor <init>(JJF)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    .line 94
    iput-wide p3, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    .line 95
    iput p5, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    return-void
.end method

.method constructor <init>(Landroid/media/MediaTimestamp;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    .line 86
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorSytemNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    .line 87
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result p1

    iput p1, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    check-cast p1, Landroidx/media2/MediaTimestamp2;

    .line 112
    iget-wide v2, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    iget-wide v4, p1, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    iget-wide v4, p1, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    iget p1, p1, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAnchorMediaTimeUs()J
    .locals 2

    .line 55
    iget-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSystemNanoTime()J
    .locals 2

    .line 63
    iget-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    .line 74
    iget v0, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 119
    iget-wide v0, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    .line 120
    iget-wide v2, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    int-to-float v0, v1

    .line 121
    iget v1, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/MediaTimestamp2;->mMediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/MediaTimestamp2;->mNanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ClockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/MediaTimestamp2;->mClockRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
