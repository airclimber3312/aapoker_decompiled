.class Lio/agora/rtc2/extensions/ScreenCapture$4;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/extensions/ScreenCapture;->changeCaptureFormat(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/extensions/ScreenCapture;


# direct methods
.method constructor <init>(Lio/agora/rtc2/extensions/ScreenCapture;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "ScreenCapture"

    const-string v1, "VirtualDisplay resize, "

    const-string v2, "createVirtualDisplay, "

    .line 361
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x22

    const-string v5, " , densityDpi: "

    const-string v6, " , orientation: "

    const-string v7, " x "

    if-lt v3, v4, :cond_1

    :try_start_1
    iget-object v3, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v3}, Lio/agora/rtc2/extensions/ScreenCapture;->access$600(Lio/agora/rtc2/extensions/ScreenCapture;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 382
    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$700(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$800(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 383
    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$900(Lio/agora/rtc2/extensions/ScreenCapture;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$1000(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$700(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    iget-object v3, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v3}, Lio/agora/rtc2/extensions/ScreenCapture;->access$800(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v3

    const/16 v4, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 385
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$700(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    iget-object v3, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v3}, Lio/agora/rtc2/extensions/ScreenCapture;->access$800(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setTextureSize(II)V

    goto/16 :goto_1

    .line 362
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 363
    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$700(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$800(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 364
    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$900(Lio/agora/rtc2/extensions/ScreenCapture;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$1000(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->stopListening()V

    .line 366
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 368
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1, v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$402(Lio/agora/rtc2/extensions/ScreenCapture;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 370
    :cond_2
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v1

    invoke-virtual {v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->dispose()V

    .line 372
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v1, v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$302(Lio/agora/rtc2/extensions/ScreenCapture;Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    :cond_3
    const-string v1, "ScreenCapturerThread"

    .line 374
    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    .line 375
    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$1100(Lio/agora/rtc2/extensions/ScreenCapture;)Z

    move-result v2

    invoke-static {}, Lio/agora/rtc2/gl/EglBaseProvider;->instance()Lio/agora/rtc2/gl/EglBaseProvider;

    move-result-object v3

    invoke-virtual {v3}, Lio/agora/rtc2/gl/EglBaseProvider;->getLocalEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v3

    .line 374
    invoke-static {v1, v2, v3}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->create(Ljava/lang/String;ZLio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/ScreenCapture;->access$1200(Lio/agora/rtc2/extensions/ScreenCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setFrameRate(I)V

    .line 377
    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2, v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$1300(Lio/agora/rtc2/extensions/ScreenCapture;Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V

    .line 378
    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-virtual {v1, v2}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->startListening(Lio/agora/base/internal/video/VideoSink;)V

    .line 379
    iget-object v2, p0, Lio/agora/rtc2/extensions/ScreenCapture$4;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v2, v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$302(Lio/agora/rtc2/extensions/ScreenCapture;Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "virtualDisplay resize error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
