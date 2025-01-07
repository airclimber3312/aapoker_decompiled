.class public Lio/agora/base/internal/video/FrameExtraInfo;
.super Ljava/lang/Object;
.source "FrameExtraInfo.java"


# instance fields
.field public final captureTimeNs:J

.field public final captureTimeRtp:J

.field public final ntpTimestamp:J

.field public final qp:I

.field public final rtpTimestampMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeNs:J

    .line 25
    iput-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeRtp:J

    .line 26
    iput-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->rtpTimestampMs:J

    .line 27
    iput-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->ntpTimestamp:J

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->qp:I

    return-void
.end method

.method private constructor <init>(JJJJI)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeNs:J

    .line 34
    iput-wide p3, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeRtp:J

    .line 35
    iput-wide p5, p0, Lio/agora/base/internal/video/FrameExtraInfo;->rtpTimestampMs:J

    .line 36
    iput-wide p7, p0, Lio/agora/base/internal/video/FrameExtraInfo;->ntpTimestamp:J

    .line 37
    iput p9, p0, Lio/agora/base/internal/video/FrameExtraInfo;->qp:I

    return-void
.end method


# virtual methods
.method public getCaptureTimeNs()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeNs:J

    return-wide v0
.end method

.method public getCaptureTimeRtp()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->captureTimeRtp:J

    return-wide v0
.end method

.method public getNtpTimestamp()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->ntpTimestamp:J

    return-wide v0
.end method

.method public getQp()I
    .locals 1

    .line 62
    iget v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->qp:I

    return v0
.end method

.method public getRtpTimestampMs()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lio/agora/base/internal/video/FrameExtraInfo;->rtpTimestampMs:J

    return-wide v0
.end method
