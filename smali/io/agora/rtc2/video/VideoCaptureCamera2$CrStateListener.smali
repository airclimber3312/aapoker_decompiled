.class Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 177
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cameraDevice closed"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$802(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 186
    :cond_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 109
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object p1

    invoke-virtual {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 110
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cameraDevice was closed unexpectedly"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 114
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 115
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 116
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDevice close done!"

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cameraDevice close error"

    invoke-static {v2, v3, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 122
    :cond_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v1, 0x6

    const-string v2, "Camera disconnected"

    invoke-virtual {p1, v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    :cond_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    .line 130
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object p1

    invoke-virtual {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 131
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cameraDevice encountered an error, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cameraDevice close error"

    invoke-static {v2, v3, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :goto_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 143
    :cond_1
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1, v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    const-string p1, "Camera In Use"

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/16 v0, 0x385

    const-string p1, "Camera runtime erro"

    goto :goto_1

    :cond_2
    const-string p1, "Camera service error"

    goto :goto_1

    :cond_3
    const-string p1, "Camera device error"

    goto :goto_1

    :cond_4
    const-string p1, "Camera disabled"

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    .line 172
    :goto_1
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {p2, v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onError(ILjava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 88
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDevice.StateCallback onOpened"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 92
    :try_start_1
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraDevice state error,  should manual close!"

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    :try_start_2
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraDevice close error"

    invoke-static {v1, v2, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 101
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 102
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    .line 103
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
