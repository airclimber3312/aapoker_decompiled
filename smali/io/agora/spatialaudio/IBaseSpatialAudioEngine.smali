.class public abstract Lio/agora/spatialaudio/IBaseSpatialAudioEngine;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearRemotePositions()I
.end method

.method public abstract muteAllRemoteAudioStreams(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalAudioStream(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteRemoteAudioStream(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "mute"
        }
    .end annotation
.end method

.method protected abstract release()I
.end method

.method public abstract setAudioRecvRange(F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation
.end method

.method public abstract setDistanceUnit(F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation
.end method

.method public abstract setMaxAudioRecvCount(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCount"
        }
    .end annotation
.end method

.method public abstract setPlayerAttenuation(IDZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerId",
            "attenuation",
            "forceSet"
        }
    .end annotation
.end method

.method public abstract setZones([Lio/agora/spatialaudio/SpatialAudioZone;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zones"
        }
    .end annotation
.end method

.method public abstract updatePlayerPositionInfo(ILio/agora/spatialaudio/RemoteVoicePositionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playerId",
            "positionInfo"
        }
    .end annotation
.end method

.method public abstract updateSelfPosition([F[F[F[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "axisForward",
            "axisRight",
            "axisUp"
        }
    .end annotation
.end method

.method public abstract updateSelfPositionEx([F[F[F[FLio/agora/rtc2/RtcConnection;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "axisForward",
            "axisRight",
            "axisUp",
            "connection"
        }
    .end annotation
.end method
