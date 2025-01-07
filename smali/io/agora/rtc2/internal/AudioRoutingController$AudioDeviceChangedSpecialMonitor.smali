.class public interface abstract Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioDeviceChangedSpecialMonitor"
.end annotation


# virtual methods
.method public abstract AudioDeviceChangeCallback(ZLandroid/media/AudioDeviceInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isRecorder",
            "audioDevice"
        }
    .end annotation
.end method

.method public abstract GetUSBDevicePID(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mic_or_spk"
        }
    .end annotation
.end method

.method public abstract GetUSBDeviceVID(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mic_or_spk"
        }
    .end annotation
.end method

.method public abstract GetUSBRouteType()I
.end method
