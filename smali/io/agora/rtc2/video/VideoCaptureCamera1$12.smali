.class Lio/agora/rtc2/video/VideoCaptureCamera1$12;
.super Ljava/lang/Object;
.source "VideoCaptureCamera1.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureCamera1;->listenForBytebufferFrames()V
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

    .line 1767
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .line 1770
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1771
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1300(Lio/agora/rtc2/video/VideoCaptureCamera1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1775
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1500(Lio/agora/rtc2/video/VideoCaptureCamera1;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1776
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1777
    new-instance v2, Lio/agora/base/NV21Buffer;

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-object v3, v3, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    .line 1778
    invoke-virtual {v3}, Lio/agora/rtc2/video/VideoCaptureFormat;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    iget-object v4, v4, Lio/agora/rtc2/video/VideoCaptureCamera1;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    invoke-virtual {v4}, Lio/agora/rtc2/video/VideoCaptureFormat;->getHeight()I

    move-result v4

    new-instance v5, Lio/agora/rtc2/video/VideoCaptureCamera1$12$1;

    invoke-direct {v5, p0, p2, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1$12$1;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera1$12;Landroid/hardware/Camera;[B)V

    invoke-direct {v2, p1, v3, v4, v5}, Lio/agora/base/NV21Buffer;-><init>([BIILjava/lang/Runnable;)V

    .line 1792
    new-instance p1, Lio/agora/base/VideoFrame;

    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->getCameraRotation()I

    move-result p2

    invoke-direct {p1, v2, p2, v0, v1}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    .line 1793
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p2, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->attachPerFrameMetaInfos(Lio/agora/base/VideoFrame;)V

    .line 1794
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p2, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFrameCaptured(Lio/agora/base/VideoFrame;)V

    .line 1795
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->release()V

    .line 1796
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1798
    :cond_1
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onFrameDropped(I)V

    .line 1799
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$12;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$1200(Lio/agora/rtc2/video/VideoCaptureCamera1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_2

    .line 1801
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_2
    :goto_0
    return-void
.end method
