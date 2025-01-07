.class public interface abstract Lio/agora/mediaplayer/IMediaPlayerObserver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAgoraCDNTokenWillExpire()V
.end method

.method public abstract onAudioVolumeIndication(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract onMetaData(Lio/agora/mediaplayer/Constants$MediaPlayerMetadataType;[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "data"
        }
    .end annotation
.end method

.method public abstract onPlayBufferUpdated(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playCachedBuffer"
        }
    .end annotation
.end method

.method public abstract onPlayerCacheStats(Lio/agora/mediaplayer/data/CacheStatistics;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract onPlayerEvent(Lio/agora/mediaplayer/Constants$MediaPlayerEvent;JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventCode",
            "elapsedTime",
            "message"
        }
    .end annotation
.end method

.method public abstract onPlayerInfoUpdated(Lio/agora/mediaplayer/data/PlayerUpdatedInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract onPlayerPlaybackStats(Lio/agora/mediaplayer/data/PlayerPlaybackStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract onPlayerSrcInfoChanged(Lio/agora/mediaplayer/data/SrcInfo;Lio/agora/mediaplayer/data/SrcInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation
.end method

.method public abstract onPlayerStateChanged(Lio/agora/mediaplayer/Constants$MediaPlayerState;Lio/agora/mediaplayer/Constants$MediaPlayerReason;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "reason"
        }
    .end annotation
.end method

.method public abstract onPositionChanged(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionMs",
            "timestampMs"
        }
    .end annotation
.end method

.method public abstract onPreloadEvent(Ljava/lang/String;Lio/agora/mediaplayer/Constants$MediaPlayerPreloadEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "event"
        }
    .end annotation
.end method
