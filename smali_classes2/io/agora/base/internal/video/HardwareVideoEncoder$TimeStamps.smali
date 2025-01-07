.class Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/HardwareVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeStamps"
.end annotation


# instance fields
.field private final encodecStartTimeMs:J

.field private final presentationTimeStampUs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;->encodecStartTimeMs:J

    .line 133
    iput-wide p3, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;->presentationTimeStampUs:J

    return-void
.end method

.method static synthetic access$1800(Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;->presentationTimeStampUs:J

    return-wide v0
.end method

.method static synthetic access$1900(Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$TimeStamps;->encodecStartTimeMs:J

    return-wide v0
.end method
