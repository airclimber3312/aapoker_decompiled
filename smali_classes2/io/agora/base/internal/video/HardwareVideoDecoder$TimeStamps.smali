.class Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/HardwareVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeStamps"
.end annotation


# instance fields
.field private final presentationTimeStampUs:J

.field private final prevElapsedRealtime:J

.field private final rotation:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->prevElapsedRealtime:J

    .line 100
    iput-wide p3, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->presentationTimeStampUs:J

    .line 101
    iput p5, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->rotation:I

    return-void
.end method

.method static synthetic access$1400(Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->prevElapsedRealtime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;)I
    .locals 0

    .line 97
    iget p0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->rotation:I

    return p0
.end method

.method static synthetic access$1600(Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$TimeStamps;->presentationTimeStampUs:J

    return-wide v0
.end method
