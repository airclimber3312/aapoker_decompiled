.class Lio/agora/base/internal/Histogram;
.super Ljava/lang/Object;
.source "Histogram.java"


# instance fields
.field private final handle:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lio/agora/base/internal/Histogram;->handle:J

    return-void
.end method

.method public static createCounts(Ljava/lang/String;III)Lio/agora/base/internal/Histogram;
    .locals 1

    .line 30
    new-instance v0, Lio/agora/base/internal/Histogram;

    invoke-static {p0, p1, p2, p3}, Lio/agora/base/internal/Histogram;->nativeCreateCounts(Ljava/lang/String;III)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lio/agora/base/internal/Histogram;-><init>(J)V

    return-object v0
.end method

.method public static createEnumeration(Ljava/lang/String;I)Lio/agora/base/internal/Histogram;
    .locals 1

    .line 34
    new-instance v0, Lio/agora/base/internal/Histogram;

    invoke-static {p0, p1}, Lio/agora/base/internal/Histogram;->nativeCreateEnumeration(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lio/agora/base/internal/Histogram;-><init>(J)V

    return-object v0
.end method

.method private static native nativeAddSample(JI)V
.end method

.method private static native nativeCreateCounts(Ljava/lang/String;III)J
.end method

.method private static native nativeCreateEnumeration(Ljava/lang/String;I)J
.end method


# virtual methods
.method public addSample(I)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lio/agora/base/internal/Histogram;->handle:J

    invoke-static {v0, v1, p1}, Lio/agora/base/internal/Histogram;->nativeAddSample(JI)V

    return-void
.end method
