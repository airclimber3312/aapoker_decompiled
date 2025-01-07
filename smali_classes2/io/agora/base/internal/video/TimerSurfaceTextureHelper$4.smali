.class Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;
.super Ljava/lang/Object;
.source "TimerSurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/TimerSurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$600(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$700(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$200(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoSink;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$800(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoDecimator;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/VideoDecimator;->updateIncomingFramerate()V

    .line 145
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$800(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoDecimator;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/VideoDecimator;->dropFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TSurfaceTextureHelper"

    const-string v1, "systemGenerate dropFrame."

    .line 146
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$900(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget-object v1, v1, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->timerNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1002(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;J)J

    .line 151
    :goto_0
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1100(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget-object v1, v1, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->supplementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$800(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoDecimator;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/VideoDecimator;->inputFramerate()I

    move-result v0

    iget-object v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1200(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoDecimator;

    move-result-object v1

    invoke-virtual {v1}, Lio/agora/base/internal/video/VideoDecimator;->getTargetFrameRate()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 153
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 154
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1200(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/VideoDecimator;

    move-result-object v2

    invoke-virtual {v2}, Lio/agora/base/internal/video/VideoDecimator;->getTargetFrameRate()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 155
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1000(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1300(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1100(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget-object v1, v1, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->supplementRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1300(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
