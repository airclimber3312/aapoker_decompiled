.class Lio/agora/rtc2/video/VideoCaptureParameter;
.super Ljava/lang/Object;
.source "VideoCaptureParameter.java"


# instance fields
.field final autoWhiteBalance:Z

.field final camera1FocusMode:I

.field final camera1FpsRange:Z

.field final camera2FocusMode:I

.field final extraSurface:Z

.field final faceFocusing:Z

.field final focalLengthType:I

.field final hardwareLevelSelected:I

.field final lowCameraSelected:I

.field final noiseReduce:I

.field final physicalId:I

.field final templateType:I


# direct methods
.method public constructor <init>(IIIIZZIIZZII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->lowCameraSelected:I

    .line 34
    iput p2, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->hardwareLevelSelected:I

    .line 35
    iput p3, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->templateType:I

    .line 36
    iput p4, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->noiseReduce:I

    .line 37
    iput-boolean p5, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->faceFocusing:Z

    .line 38
    iput-boolean p6, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->extraSurface:Z

    .line 39
    iput p7, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera1FocusMode:I

    .line 40
    iput p8, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera2FocusMode:I

    .line 41
    iput-boolean p9, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->autoWhiteBalance:Z

    .line 42
    iput-boolean p10, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->camera1FpsRange:Z

    .line 43
    iput p11, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->focalLengthType:I

    .line 44
    iput p12, p0, Lio/agora/rtc2/video/VideoCaptureParameter;->physicalId:I

    return-void
.end method
