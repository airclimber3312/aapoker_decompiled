.class Lio/agora/rtc2/extensions/ScreenCapture$3;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/extensions/ScreenCapture;->stopCaptureAndBlockUntilStopped()V
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

    .line 292
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->stopListening()V

    .line 296
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 298
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/ScreenCapture;->access$402(Lio/agora/rtc2/extensions/ScreenCapture;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 300
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture$3;->this$0:Lio/agora/rtc2/extensions/ScreenCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->access$500(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
