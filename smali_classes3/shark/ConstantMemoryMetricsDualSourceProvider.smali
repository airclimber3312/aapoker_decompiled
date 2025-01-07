.class public final Lshark/ConstantMemoryMetricsDualSourceProvider;
.super Ljava/lang/Object;
.source "ConstantMemoryMetricsDualSourceProvider.kt"

# interfaces
.implements Lshark/DualSourceProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0002R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\u000fR$\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lshark/ConstantMemoryMetricsDualSourceProvider;",
        "Lshark/DualSourceProvider;",
        "realSourceProvider",
        "(Lshark/DualSourceProvider;)V",
        "byteTravelRange",
        "",
        "getByteTravelRange",
        "()J",
        "lastRandomAccessPosition",
        "maxPosition",
        "minPosition",
        "<set-?>",
        "randomAccessByteReads",
        "getRandomAccessByteReads",
        "setRandomAccessByteReads$shark_hprof",
        "(J)V",
        "randomAccessByteTravel",
        "getRandomAccessByteTravel",
        "setRandomAccessByteTravel$shark_hprof",
        "randomAccessReadCount",
        "getRandomAccessReadCount",
        "setRandomAccessReadCount$shark_hprof",
        "openRandomAccessSource",
        "Lshark/RandomAccessSource;",
        "openStreamingSource",
        "Lokio/BufferedSource;",
        "updateRandomAccessStatsOnRead",
        "",
        "position",
        "bytesRead",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private lastRandomAccessPosition:J

.field private maxPosition:J

.field private minPosition:J

.field private randomAccessByteReads:J

.field private randomAccessByteTravel:J

.field private randomAccessReadCount:J

.field private final realSourceProvider:Lshark/DualSourceProvider;


# direct methods
.method public constructor <init>(Lshark/DualSourceProvider;)V
    .locals 2

    const-string v0, "realSourceProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->realSourceProvider:Lshark/DualSourceProvider;

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->lastRandomAccessPosition:J

    .line 23
    iput-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->minPosition:J

    .line 24
    iput-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->maxPosition:J

    return-void
.end method

.method public static final synthetic access$updateRandomAccessStatsOnRead(Lshark/ConstantMemoryMetricsDualSourceProvider;JJ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lshark/ConstantMemoryMetricsDualSourceProvider;->updateRandomAccessStatsOnRead(JJ)V

    return-void
.end method

.method private final updateRandomAccessStatsOnRead(JJ)V
    .locals 3

    .line 30
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteReads:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteReads:J

    .line 31
    iget-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessReadCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p3, v0

    iput-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessReadCount:J

    .line 32
    iget-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->lastRandomAccessPosition:J

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    .line 33
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteTravel:J

    sub-long p3, p1, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    add-long/2addr v0, p3

    iput-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteTravel:J

    .line 34
    iget-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->minPosition:J

    invoke-static {p3, p4, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->minPosition:J

    .line 35
    iget-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->maxPosition:J

    invoke-static {p3, p4, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->maxPosition:J

    goto :goto_0

    .line 37
    :cond_0
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->minPosition:J

    .line 38
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->maxPosition:J

    .line 42
    :goto_0
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->lastRandomAccessPosition:J

    return-void
.end method


# virtual methods
.method public final getByteTravelRange()J
    .locals 4

    .line 46
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->maxPosition:J

    iget-wide v2, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->minPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getRandomAccessByteReads()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteReads:J

    return-wide v0
.end method

.method public final getRandomAccessByteTravel()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteTravel:J

    return-wide v0
.end method

.method public final getRandomAccessReadCount()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessReadCount:J

    return-wide v0
.end method

.method public openRandomAccessSource()Lshark/RandomAccessSource;
    .locals 2

    .line 51
    iget-object v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->realSourceProvider:Lshark/DualSourceProvider;

    invoke-interface {v0}, Lshark/DualSourceProvider;->openRandomAccessSource()Lshark/RandomAccessSource;

    move-result-object v0

    .line 52
    new-instance v1, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;

    invoke-direct {v1, p0, v0}, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;-><init>(Lshark/ConstantMemoryMetricsDualSourceProvider;Lshark/RandomAccessSource;)V

    check-cast v1, Lshark/RandomAccessSource;

    return-object v1
.end method

.method public openStreamingSource()Lokio/BufferedSource;
    .locals 1

    .line 48
    iget-object v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->realSourceProvider:Lshark/DualSourceProvider;

    invoke-interface {v0}, Lshark/DualSourceProvider;->openStreamingSource()Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public final setRandomAccessByteReads$shark_hprof(J)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteReads:J

    return-void
.end method

.method public final setRandomAccessByteTravel$shark_hprof(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessByteTravel:J

    return-void
.end method

.method public final setRandomAccessReadCount$shark_hprof(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider;->randomAccessReadCount:J

    return-void
.end method
