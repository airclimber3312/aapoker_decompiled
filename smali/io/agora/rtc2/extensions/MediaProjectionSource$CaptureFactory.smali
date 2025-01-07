.class public interface abstract Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureFactory"
.end annotation


# virtual methods
.method public abstract createAudioCapture(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;
.end method

.method public abstract createScreenCapture(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;
.end method

.method public abstract isAudioCaptureSupported()Z
.end method

.method public abstract isScreenCaptureSupported()Z
.end method
