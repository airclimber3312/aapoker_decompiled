.class Lio/agora/rtc2/video/VideoCaptureScreen$3;
.super Ljava/lang/Object;
.source "VideoCaptureScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureScreen;->changeCaptureFormat(III)V
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

    .line 207
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$3;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 210
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureScreen$3;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$000(Lio/agora/rtc2/video/VideoCaptureScreen;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 211
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureScreen$3;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-static {v0}, Lio/agora/rtc2/video/VideoCaptureScreen;->access$400(Lio/agora/rtc2/video/VideoCaptureScreen;)V

    return-void
.end method
