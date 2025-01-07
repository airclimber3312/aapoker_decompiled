.class public Lio/agora/rtc2/SimulcastStreamConfig;
.super Ljava/lang/Object;


# instance fields
.field public bitrate:I

.field public dimensions:Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

.field public framerate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;-><init>(II)V

    iput-object v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->dimensions:Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

    iput v1, p0, Lio/agora/rtc2/SimulcastStreamConfig;->bitrate:I

    const/4 v0, 0x5

    iput v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->framerate:I

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimensions",
            "bitrate",
            "framerate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/SimulcastStreamConfig;->dimensions:Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

    iput p2, p0, Lio/agora/rtc2/SimulcastStreamConfig;->bitrate:I

    iput p3, p0, Lio/agora/rtc2/SimulcastStreamConfig;->framerate:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->bitrate:I

    return v0
.end method

.method public getDimensionsHeight()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->dimensions:Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

    iget v0, v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;->height:I

    return v0
.end method

.method public getDimensionsWidth()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->dimensions:Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;

    iget v0, v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$VideoDimensions;->width:I

    return v0
.end method

.method public getFramerate()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/SimulcastStreamConfig;->framerate:I

    return v0
.end method
