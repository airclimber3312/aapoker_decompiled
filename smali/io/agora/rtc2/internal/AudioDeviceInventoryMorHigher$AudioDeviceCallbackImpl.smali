.class Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher$AudioDeviceCallbackImpl;
.super Landroid/media/AudioDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioDeviceCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher$AudioDeviceCallbackImpl;->this$0:Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    const-string p1, "AudioRoute"

    const-string v0, "AudioDeviceCallbackImpl ctor!"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "devices"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher$AudioDeviceCallbackImpl;->this$0:Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;->access$000(Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;[Landroid/media/AudioDeviceInfo;Z)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "devices"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher$AudioDeviceCallbackImpl;->this$0:Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;->access$000(Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;[Landroid/media/AudioDeviceInfo;Z)V

    return-void
.end method
