.class Lio/agora/rtc2/video/VideoCaptureCamera$CameraAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "VideoCaptureCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CameraAvailabilityCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .locals 2

    .line 362
    invoke-super {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAccessPrioritiesChanged()V

    .line 363
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera Access Priorities Changed"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onCameraAvailable: "

    monitor-enter p0

    .line 348
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CameraAvailabilityCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera;->onCameraAvailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    const-string v0, "onCameraUnavailable: "

    monitor-enter p0

    .line 355
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CameraAvailabilityCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera;->onCameraUnavailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
