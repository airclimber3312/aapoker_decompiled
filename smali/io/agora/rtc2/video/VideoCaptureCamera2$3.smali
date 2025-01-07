.class Lio/agora/rtc2/video/VideoCaptureCamera2$3;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureCamera2;->startCaptureMaybeAsync()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

.field final synthetic val$manager:Landroid/hardware/camera2/CameraManager;

.field final synthetic val$stateListener:Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraManager;Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iput-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$manager:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$stateListener:Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "allocate: manager.openCamera: "

    const-string v1, "Invalid camera Id: "

    const-string v2, "allocate openCamera: "

    const-string v3, "allocate openCamera camera name:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1692
    :try_start_0
    iget-object v6, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 1693
    iget-object v7, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v7}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1694
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$manager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$stateListener:Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;

    iget-object v6, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v6}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 1696
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2402(Lio/agora/rtc2/video/VideoCaptureCamera2;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1698
    :cond_0
    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v3, v3, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    array-length v7, v6

    if-lt v3, v7, :cond_1

    .line 1699
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1702
    :cond_1
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " camera name:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    aget-object v2, v6, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$manager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v2, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    aget-object v2, v6, v2

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$stateListener:Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;

    iget-object v7, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v7}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v1, v2, v3, v7}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 1704
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mId:I

    aget-object v2, v6, v2

    invoke-static {v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2402(Lio/agora/rtc2/video/VideoCaptureCamera2;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1721
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1723
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    .line 1714
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1716
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v1

    .line 1707
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1709
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 1728
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$manager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->val$stateListener:Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;

    invoke-static {v0, v1, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$2500(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraManager;Lio/agora/rtc2/video/VideoCaptureCamera2$CrStateListener;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1729
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1731
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1687
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
