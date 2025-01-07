.class public interface abstract Lio/agora/rtc2/IAudioFrameObserver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getEarMonitoringAudioParams()Lio/agora/rtc2/audio/AudioParams;
.end method

.method public abstract getMixedAudioParams()Lio/agora/rtc2/audio/AudioParams;
.end method

.method public abstract getObservedAudioFramePosition()I
.end method

.method public abstract getPlaybackAudioParams()Lio/agora/rtc2/audio/AudioParams;
.end method

.method public abstract getRecordAudioParams()Lio/agora/rtc2/audio/AudioParams;
.end method

.method public abstract onEarMonitoringAudioFrame(IIIIILjava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "samplesPerChannel",
            "bytesPerSample",
            "channels",
            "samplesPerSec",
            "buffer",
            "renderTimeMs",
            "avsync_type"
        }
    .end annotation
.end method

.method public abstract onMixedAudioFrame(Ljava/lang/String;IIIIILjava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "type",
            "samplesPerChannel",
            "bytesPerSample",
            "channels",
            "samplesPerSec",
            "buffer",
            "renderTimeMs",
            "avsync_type"
        }
    .end annotation
.end method

.method public abstract onPlaybackAudioFrame(Ljava/lang/String;IIIIILjava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "type",
            "samplesPerChannel",
            "bytesPerSample",
            "channels",
            "samplesPerSec",
            "buffer",
            "renderTimeMs",
            "avsync_type"
        }
    .end annotation
.end method

.method public abstract onPlaybackAudioFrameBeforeMixing(Ljava/lang/String;IIIIIILjava/nio/ByteBuffer;JII)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "uid",
            "type",
            "samplesPerChannel",
            "bytesPerSample",
            "channels",
            "samplesPerSec",
            "buffer",
            "renderTimeMs",
            "avsync_type",
            "rtpTimestamp"
        }
    .end annotation
.end method

.method public abstract onRecordAudioFrame(Ljava/lang/String;IIIIILjava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "type",
            "samplesPerChannel",
            "bytesPerSample",
            "channels",
            "samplesPerSec",
            "buffer",
            "renderTimeMs",
            "avsync_type"
        }
    .end annotation
.end method
