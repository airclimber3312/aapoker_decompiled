.class public Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;
.super Ljava/lang/Object;
.source "VideoCaptureCameraFallbackWrapper.java"

# interfaces
.implements Lio/agora/rtc2/video/IVideoCaptureCamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCaptureCameraFallbackWrapper"


# instance fields
.field private captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

.field private events:Lio/agora/rtc2/video/IVideoCapture$Events;

.field private fallbackListener:Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;

.field private format:Lio/agora/rtc2/video/VideoCaptureFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/agora/rtc2/video/IVideoCaptureCamera;Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    .line 37
    iput-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->fallbackListener:Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;

    return-void
.end method

.method private createFallbackCamera()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->needFallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->TAG:Ljava/lang/String;

    const-string v1, "capture fallback to low level camera. "

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->fallbackListener:Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;

    invoke-interface {v0}, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper$OnCameraFallbackListener;->createFallbackCamera()Lio/agora/rtc2/video/IVideoCaptureCamera;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    .line 178
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->events:Lio/agora/rtc2/video/IVideoCapture$Events;

    invoke-interface {v0, v1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setEventsCallback(Lio/agora/rtc2/video/IVideoCapture$Events;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z
    .locals 1

    .line 161
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->format:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 162
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->dispose()V

    .line 165
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->createFallbackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public deallocate()V
    .locals 1

    .line 206
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->deallocate()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 211
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->dispose()V

    return-void
.end method

.method public getCaptureFormat()Lio/agora/rtc2/video/VideoCaptureFormat;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->getCaptureFormat()Lio/agora/rtc2/video/VideoCaptureFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 62
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->getMaxZoom()F

    move-result v0

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isAutoFaceFocusSupported()Z

    move-result v0

    return v0
.end method

.method public isCameraExposureSupported()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isExposureSupported()Z

    move-result v0

    return v0
.end method

.method public isExposureSupported()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isExposureSupported()Z

    move-result v0

    return v0
.end method

.method public isFaceDetectSupported()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isFaceDetectSupported()Z

    move-result v0

    return v0
.end method

.method public isFocusSupported()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isFocusSupported()Z

    move-result v0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isTorchSupported()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public needFallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAntiBandingMode(I)I
    .locals 1

    .line 102
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setAntiBandingMode(I)I

    move-result p1

    return p1
.end method

.method public setAutoFaceFocus(Z)I
    .locals 1

    .line 82
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setAutoFaceFocus(Z)I

    move-result p1

    return p1
.end method

.method public setEdgeEnhanceMode(I)I
    .locals 1

    .line 97
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setEdgeEnhanceMode(I)I

    move-result p1

    return p1
.end method

.method public setEventsCallback(Lio/agora/rtc2/video/IVideoCapture$Events;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->events:Lio/agora/rtc2/video/IVideoCapture$Events;

    .line 31
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setEventsCallback(Lio/agora/rtc2/video/IVideoCapture$Events;)V

    return-void
.end method

.method public setExposure(FF)I
    .locals 1

    .line 147
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1, p2}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setExposure(FF)I

    move-result p1

    return p1
.end method

.method public setExposureCompensation(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setExposureCompensation(I)I

    move-result p1

    return p1
.end method

.method public setFaceDetection(Z)I
    .locals 1

    .line 87
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setFaceDetection(Z)I

    move-result p1

    return p1
.end method

.method public setFocus(FF)I
    .locals 1

    .line 72
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1, p2}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setFocus(FF)I

    move-result p1

    return p1
.end method

.method public setNoiseReductionMode(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setNoiseReductionMode(I)I

    move-result p1

    return p1
.end method

.method public setPreviewInfo(Ljava/lang/Object;ZI)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1, p2, p3}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setPreviewInfo(Ljava/lang/Object;ZI)V

    return-void
.end method

.method public setTorchMode(Z)I
    .locals 1

    .line 132
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setTorchMode(Z)I

    move-result p1

    return p1
.end method

.method public setVideoEdgeMode(I)I
    .locals 1

    .line 107
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setVideoEdgeMode(I)I

    move-result p1

    return p1
.end method

.method public setVideoStabilityMode(I)I
    .locals 1

    .line 92
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setVideoStabilityMode(I)I

    move-result p1

    return p1
.end method

.method public setZoom(F)I
    .locals 1

    .line 57
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCaptureCamera;->setZoom(F)I

    move-result p1

    return p1
.end method

.method public startCaptureMaybeAsync()Z
    .locals 3

    .line 188
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->startCaptureMaybeAsync()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->deallocate()V

    .line 191
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->dispose()V

    .line 192
    invoke-direct {p0}, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->createFallbackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->format:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-interface {v0, v2}, Lio/agora/rtc2/video/IVideoCaptureCamera;->allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->startCaptureMaybeAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public stopCaptureAndBlockUntilStopped()V
    .locals 1

    .line 201
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCameraFallbackWrapper;->captuer:Lio/agora/rtc2/video/IVideoCaptureCamera;

    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCaptureCamera;->stopCaptureAndBlockUntilStopped()V

    return-void
.end method
