.class public abstract Landroidx/media2/MediaPlayerConnector;
.super Ljava/lang/Object;
.source "MediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;,
        Landroidx/media2/MediaPlayerConnector$BuffState;,
        Landroidx/media2/MediaPlayerConnector$PlayerState;
    }
.end annotation


# static fields
.field public static final BUFFERING_STATE_BUFFERING_AND_PLAYABLE:I = 0x1

.field public static final BUFFERING_STATE_BUFFERING_AND_STARVED:I = 0x2

.field public static final BUFFERING_STATE_BUFFERING_COMPLETE:I = 0x3

.field public static final BUFFERING_STATE_UNKNOWN:I = 0x0

.field public static final PLAYER_STATE_ERROR:I = 0x3

.field public static final PLAYER_STATE_IDLE:I = 0x0

.field public static final PLAYER_STATE_PAUSED:I = 0x1

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final UNKNOWN_TIME:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioAttributes()Landroidx/media/AudioAttributesCompat;
.end method

.method public getBufferedPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getBufferingState()I
.end method

.method public abstract getCurrentDataSource()Landroidx/media2/DataSourceDesc2;
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMaxPlayerVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getPlayerState()I
.end method

.method public abstract getPlayerVolume()F
.end method

.method public isReversePlaybackSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract loopCurrent(Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V
.end method

.method public abstract setDataSource(Landroidx/media2/DataSourceDesc2;)V
.end method

.method public abstract setNextDataSource(Landroidx/media2/DataSourceDesc2;)V
.end method

.method public abstract setNextDataSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/DataSourceDesc2;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setPlayerVolume(F)V
.end method

.method public abstract skipToNext()V
.end method

.method public abstract unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
.end method
