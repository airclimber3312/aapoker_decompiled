.class public interface abstract Lio/agora/rtc2/video/IVideoCapture;
.super Ljava/lang/Object;
.source "IVideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/IVideoCapture$Events;
    }
.end annotation


# virtual methods
.method public abstract allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z
.end method

.method public abstract deallocate()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCaptureFormat()Lio/agora/rtc2/video/VideoCaptureFormat;
.end method

.method public abstract setEventsCallback(Lio/agora/rtc2/video/IVideoCapture$Events;)V
.end method

.method public abstract startCaptureMaybeAsync()Z
.end method

.method public abstract stopCaptureAndBlockUntilStopped()V
.end method
