.class interface abstract Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;
.super Ljava/lang/Object;
.source "MediaProjectionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IScreenCapture"
.end annotation


# virtual methods
.method public abstract changeCaptureFormatAsync(II)V
.end method

.method public abstract changeCaptureFrameRate(I)V
.end method

.method public abstract changeConfigurationAsync(Landroid/content/res/Configuration;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract startCaptureMaybeAsync()Z
.end method

.method public abstract stopCaptureAndBlockUntilStopped()V
.end method
