.class Lio/agora/rtc2/video/VideoCaptureCamera2$4;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureCamera2;->stopCaptureAndBlockUntilStopped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1780
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1788
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    .line 1789
    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1791
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc2/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1793
    :try_start_2
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptureStartedEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1796
    :cond_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc2/video/VideoCaptureCamera2;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_2

    .line 1797
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    if-eqz v1, :cond_1

    .line 1798
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v1}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->stopListening()V

    .line 1799
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v1}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->dispose()V

    .line 1800
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iput-object v2, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    .line 1802
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1804
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1805
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    .line 1806
    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 1805
    invoke-static {v0, v1, v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1500(Lio/agora/rtc2/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1807
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/rtc2/video/VideoCaptureCamera2$StopCaptureTask;

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-direct {v1, v3, v2}, Lio/agora/rtc2/video/VideoCaptureCamera2$StopCaptureTask;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera2;Lio/agora/rtc2/video/VideoCaptureCamera2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1808
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc2/video/VideoCaptureCamera2;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1809
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseCamera done!"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    if-eqz v0, :cond_3

    .line 1811
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v0}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->stopListening()V

    .line 1812
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v0}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->dispose()V

    .line 1813
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$4;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iput-object v2, v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    :cond_3
    return-object v2

    :catchall_0
    move-exception v1

    .line 1804
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
