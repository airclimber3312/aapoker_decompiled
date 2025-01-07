.class Lio/agora/base/internal/video/HardwareVideoEncoder$5;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/HardwareVideoEncoder;->releaseInternal()Lio/agora/base/internal/video/VideoCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/base/internal/video/VideoCodecStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/HardwareVideoEncoder;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HardwareVideoEncoder"

    .line 724
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$000(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "stop media encoder..."

    .line 726
    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$100(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/MediaCodecWrapper;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/internal/video/MediaCodecWrapper;->stop()V

    const-string v2, "release media encoder..."

    .line 728
    invoke-static {v0, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$100(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/MediaCodecWrapper;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/internal/video/MediaCodecWrapper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$800(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/GlRectDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/GlRectDrawer;->release()V

    .line 736
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$900(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/VideoFrameDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoFrameDrawer;->release()V

    .line 737
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 738
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->release()V

    .line 739
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$602(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/EglBase;)Lio/agora/base/internal/video/EglBase;

    .line 741
    :cond_0
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 742
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 743
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$702(Lio/agora/base/internal/video/HardwareVideoEncoder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 745
    :cond_1
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$102(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/MediaCodecWrapper;)Lio/agora/base/internal/video/MediaCodecWrapper;

    .line 746
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1002(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 747
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1102(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 748
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1200(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 749
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1300(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 750
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1400(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 751
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$000(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v1, "release media encoder done"

    .line 753
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v0, Lio/agora/base/internal/video/VideoCodecStatus;->OK:Lio/agora/base/internal/video/VideoCodecStatus;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "Media encoder release failed"

    .line 732
    invoke-static {v0, v3, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 733
    sget-object v0, Lio/agora/base/internal/video/VideoCodecStatus;->ERROR:Lio/agora/base/internal/video/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$800(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/GlRectDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/GlRectDrawer;->release()V

    .line 736
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$900(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/VideoFrameDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoFrameDrawer;->release()V

    .line 737
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 738
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->release()V

    .line 739
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$602(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/EglBase;)Lio/agora/base/internal/video/EglBase;

    .line 741
    :cond_2
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 742
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 743
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$702(Lio/agora/base/internal/video/HardwareVideoEncoder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 745
    :cond_3
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$102(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/MediaCodecWrapper;)Lio/agora/base/internal/video/MediaCodecWrapper;

    .line 746
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1002(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 747
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1102(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 748
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1200(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 749
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1300(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 750
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1400(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 751
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$000(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 735
    :goto_0
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$800(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/GlRectDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/GlRectDrawer;->release()V

    .line 736
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$900(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/VideoFrameDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoFrameDrawer;->release()V

    .line 737
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 738
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$600(Lio/agora/base/internal/video/HardwareVideoEncoder;)Lio/agora/base/internal/video/EglBase;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->release()V

    .line 739
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$602(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/EglBase;)Lio/agora/base/internal/video/EglBase;

    .line 741
    :cond_4
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 742
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 743
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$702(Lio/agora/base/internal/video/HardwareVideoEncoder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 745
    :cond_5
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$102(Lio/agora/base/internal/video/HardwareVideoEncoder;Lio/agora/base/internal/video/MediaCodecWrapper;)Lio/agora/base/internal/video/MediaCodecWrapper;

    .line 746
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1002(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 747
    iget-object v2, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v2, v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1102(Lio/agora/base/internal/video/HardwareVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 748
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1200(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 749
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1300(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 750
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1400(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 751
    iget-object v1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v1}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$000(Lio/agora/base/internal/video/HardwareVideoEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Lio/agora/base/internal/video/HardwareVideoEncoder$5;->call()Lio/agora/base/internal/video/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
