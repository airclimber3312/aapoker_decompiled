.class public interface abstract Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;
.super Ljava/lang/Object;
.source "MediaProjectionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRecordErrorCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioRecordError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordStartError(Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;Ljava/lang/String;)V
.end method
