.class Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordRouteCallback;
.implements Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackRouteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerAudioDeviceChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc2/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;->this$0:Lio/agora/rtc2/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public onAudioRecordRouteNotify(ILandroid/media/AudioDeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "audioRecord"
        }
    .end annotation

    const-string p1, "AudioRoute"

    const-string v0, "[ADM] Enter ControllerAudioDeviceChangeCallback.onAudioRecordRouteNotify"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;->AudioDeviceChangeCallback(ZLandroid/media/AudioDeviceInfo;)V

    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;->this$0:Lio/agora/rtc2/internal/AudioRoutingController;

    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2, v0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3400(Lio/agora/rtc2/internal/AudioRoutingController;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onAudioTrackRouteNotify(ILandroid/media/AudioDeviceInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "audioTrack"
        }
    .end annotation

    const-string p1, "AudioRoute"

    const-string v0, "[ADM] Enter ControllerAudioDeviceChangeCallback.onAudioTrackRouteNotify"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;->AudioDeviceChangeCallback(ZLandroid/media/AudioDeviceInfo;)V

    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;->this$0:Lio/agora/rtc2/internal/AudioRoutingController;

    invoke-static {}, Lio/agora/rtc2/internal/AudioRoutingController;->access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    move-result-object p2

    invoke-interface {p2}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;->GetUSBRouteType()I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lio/agora/rtc2/internal/AudioRoutingController;->sendEvent(II)V

    :cond_0
    return-void
.end method
