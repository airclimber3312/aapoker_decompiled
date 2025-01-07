.class Lio/agora/rtc2/video/VideoCaptureCamera1$11;
.super Ljava/lang/Object;
.source "VideoCaptureCamera1.java"

# interfaces
.implements Lio/agora/base/internal/video/SurfaceTextureHelper$IVideoCapture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureCamera1;->listenForTextureFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V
    .locals 0

    .line 1721
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 6

    .line 1724
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1726
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera1;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1755
    :goto_0
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1729
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    .line 1730
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-boolean v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableTextureCopy:Z

    if-eqz v1, :cond_1

    .line 1731
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera1;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    check-cast v0, Lio/agora/base/internal/video/SurfaceTextureHelper;

    .line 1732
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lio/agora/base/VideoFrame$TextureBuffer;

    invoke-virtual {v0, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/16 p1, 0x9

    .line 1735
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->onFrameDropped(I)V

    .line 1736
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureVideoSinkListener copy frame error"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    :cond_2
    new-instance v1, Lio/agora/base/VideoFrame;

    move-object v2, v0

    check-cast v2, Lio/agora/base/TextureBuffer;

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-boolean v3, v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->mInvertDeviceOrientationReadings:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 1742
    :goto_1
    invoke-static {v2, v3, v4}, Lio/agora/rtc2/video/VideoCapture;->createTextureBufferWithModifiedTransformMatrix(Lio/agora/base/TextureBuffer;ZI)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    .line 1745
    invoke-virtual {v3}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result v3

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    .line 1746
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p1, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->attachPerFrameMetaInfos(Lio/agora/base/VideoFrame;)V

    .line 1747
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p1, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFrameCaptured(Lio/agora/base/VideoFrame;)V

    .line 1748
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-boolean p1, p1, Lio/agora/rtc2/video/VideoCaptureCamera1;->mEnableTextureCopy:Z

    if-eqz p1, :cond_4

    .line 1751
    invoke-interface {v0}, Lio/agora/base/VideoFrame$Buffer;->release()V

    .line 1753
    :cond_4
    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1755
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onFrameDropped(I)V
    .locals 1

    .line 1761
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$11;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1401(Lio/agora/rtc2/video/VideoCaptureCamera1;I)V

    return-void
.end method
