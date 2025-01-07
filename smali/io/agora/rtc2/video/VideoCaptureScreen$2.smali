.class Lio/agora/rtc2/video/VideoCaptureScreen$2;
.super Ljava/lang/Object;
.source "VideoCaptureScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureScreen;->stopCaptureAndBlockUntilStopped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureScreen;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureScreen;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Exception when stopCaptureAndBlockUntilStopped: "

    .line 149
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    iget-object v1, v1, Lio/agora/rtc2/video/VideoCaptureScreen;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    invoke-interface {v1}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->stopListening()V

    .line 150
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$000(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$000(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 152
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1, v2}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$002(Lio/agora/rtc2/video/VideoCaptureScreen;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 155
    :cond_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$100(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$100(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v3}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$200(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 161
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$100(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v0, v2}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$102(Lio/agora/rtc2/video/VideoCaptureScreen;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "VideoCaptureScreen"

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v3, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :goto_1
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v1, v2}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$102(Lio/agora/rtc2/video/VideoCaptureScreen;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    throw v0

    .line 169
    :cond_1
    :goto_2
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureScreen$2;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$300(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
