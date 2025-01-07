.class public interface abstract Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioDeviceChangedCallback"
.end annotation


# virtual methods
.method public abstract onAudioDeviceChanged(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "connect",
            "route"
        }
    .end annotation
.end method

.method public abstract onAudioDeviceEvent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evt"
        }
    .end annotation
.end method
