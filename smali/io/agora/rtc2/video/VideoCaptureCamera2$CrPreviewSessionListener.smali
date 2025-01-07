.class Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrPreviewSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;Lio/agora/rtc2/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 466
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object p1

    invoke-virtual {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 467
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrPreviewSessionListener.onClosed"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$802(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 453
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object p1

    invoke-virtual {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 454
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrPreviewSessionListener.onConfigureFailed"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    .line 459
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$802(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 460
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/16 v0, 0x65

    const-string v1, "Camera session configuration error"

    invoke-virtual {p1, v0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 8

    const-string v0, "Fail to setup capture session"

    const-string v1, "setRepeatingRequest: "

    .line 383
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 384
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CrPreviewSessionListener.onConfigured"

    invoke-static {v2, v3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$802(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    const/16 p1, 0x66

    .line 391
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v4}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1400(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1500(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 393
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    .line 394
    invoke-static {v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v4}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v5}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v5

    .line 393
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 396
    :cond_0
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsCameraTorchStarted:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mTorchMode:I

    if-eqz v2, :cond_2

    .line 397
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v5, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mTorchMode:I

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2, v5}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setTorchMode(Z)I

    .line 399
    :cond_2
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsmCameraExposureStarted:Z

    const/4 v5, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposurePositions:[F

    aget v2, v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposurePositions:[F

    aget v2, v2, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 401
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v6, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposurePositions:[F

    aget v6, v6, v3

    iget-object v7, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v7, v7, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposurePositions:[F

    aget v7, v7, v4

    invoke-virtual {v2, v6, v7}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setExposure(FF)I

    .line 403
    :cond_3
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsmCameraFocusStarted:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraFocusPositions:[F

    aget v2, v2, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraFocusPositions:[F

    aget v2, v2, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 405
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v6, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraFocusPositions:[F

    aget v3, v6, v3

    iget-object v6, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v6, v6, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraFocusPositions:[F

    aget v4, v6, v4

    invoke-virtual {v2, v3, v4}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setFocus(FF)I

    .line 407
    :cond_4
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsmCameraZoomStarted:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraZoomFactor:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 408
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v3, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraZoomFactor:F

    invoke-virtual {v2, v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setZoom(F)I

    .line 410
    :cond_5
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsExposureCompensationStarted:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposureCompensation:I

    if-eqz v2, :cond_6

    .line 411
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v3, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraExposureCompensation:I

    invoke-virtual {v2, v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setExposureCompensation(I)I

    .line 413
    :cond_6
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mIsNoiseReducationStarted:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraNoiseReduction:I

    if-eqz v2, :cond_7

    .line 414
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v3, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraNoiseReduction:I

    invoke-virtual {v2, v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setNoiseReductionMode(I)I

    .line 416
    :cond_7
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mAutoFaceDetectFocusStarted:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraAutoFaceFocus:Z

    if-eqz v2, :cond_8

    .line 417
    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v3, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraAutoFaceFocus:Z

    invoke-virtual {v2, v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->setAutoFaceFocus(Z)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_8
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    .line 447
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onStarted()V

    return-void

    :catch_0
    move-exception v2

    .line 440
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {v1, p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void

    :catch_1
    move-exception v2

    .line 435
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {v1, p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void

    :catch_2
    move-exception v2

    .line 430
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {v1, p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void

    :catch_3
    move-exception v2

    .line 425
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {v1, p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void

    :catch_4
    move-exception v2

    .line 420
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {v1, p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    return-void
.end method
