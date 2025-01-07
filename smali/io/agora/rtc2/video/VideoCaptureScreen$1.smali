.class Lio/agora/rtc2/video/VideoCaptureScreen$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "VideoCaptureScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureScreen;
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

    .line 48
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureScreen$1;->this$0:Lio/agora/rtc2/video/VideoCaptureScreen;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string v0, "VideoCaptureScreen"

    const-string v1, "media projection stopped"

    .line 51
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
