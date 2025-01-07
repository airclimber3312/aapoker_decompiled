.class public Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;
.super Lio/agora/spatialaudio/ILocalSpatialAudioEngine;


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/agora/spatialaudio/ILocalSpatialAudioEngine;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    return-void
.end method

.method private CheckRemoteVoicePositionInfo(Lio/agora/spatialaudio/RemoteVoicePositionInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posInfo"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    if-eqz v0, :cond_2

    iget-object v0, p1, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    if-nez v0, :cond_1

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p1, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static getChannelId(Lio/agora/rtc2/RtcConnection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget-object p0, p0, Lio/agora/rtc2/RtcConnection;->channelId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getUserId(Lio/agora/rtc2/RtcConnection;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget p0, p0, Lio/agora/rtc2/RtcConnection;->localUid:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private native nativeClearRemotePositions(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid"
        }
    .end annotation
.end method

.method private native nativeClearRemotePositionsEx(JLjava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "channelId",
            "localUid"
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private native nativeMuteRemoteAudioStream(JIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid",
            "mute"
        }
    .end annotation
.end method

.method private native nativeObjectInit(Lio/agora/spatialaudio/LocalSpatialAudioConfig;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "rtcEngine"
        }
    .end annotation
.end method

.method private native nativeRemoveRemotePosition(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid"
        }
    .end annotation
.end method

.method private native nativeRemoveRemotePositionEx(JILjava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid",
            "channelId",
            "localUid"
        }
    .end annotation
.end method

.method private native nativeSetParameters(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "param"
        }
    .end annotation
.end method

.method private native nativeSetPlayerAttenuation(JIDZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "playerId",
            "attenuation",
            "forceSet"
        }
    .end annotation
.end method

.method private native nativeSetRemoteAudioAttenuation(JIDZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid",
            "attenuation",
            "forceSet"
        }
    .end annotation
.end method

.method private native nativeSetZones(J[Lio/agora/spatialaudio/SpatialAudioZone;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "zones"
        }
    .end annotation
.end method

.method private native nativeUpdatePlayerPositionInfo(JILio/agora/spatialaudio/RemoteVoicePositionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "playerId",
            "posInfo"
        }
    .end annotation
.end method

.method private native nativeUpdateRemotePosition(JI[F[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid",
            "position",
            "forward"
        }
    .end annotation
.end method

.method private native nativeUpdateRemotePositionEx(JI[F[FLjava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "uid",
            "position",
            "forward",
            "channelId",
            "localUid"
        }
    .end annotation
.end method

.method private native nativeUpdateSelfPosition(J[F[F[F[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "position",
            "axisForward",
            "axisRight",
            "axisUp"
        }
    .end annotation
.end method

.method private native nativeUpdateSelfPositionEx(J[F[F[F[FLjava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeLocalSpatialAudioAndroid",
            "position",
            "axisForward",
            "axisRight",
            "axisUp",
            "channelID",
            "uid"
        }
    .end annotation
.end method


# virtual methods
.method public clearRemotePositions()I
    .locals 5

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, -0x7

    return v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeClearRemotePositions(J)I

    move-result v0

    return v0
.end method

.method public clearRemotePositionsEx(Lio/agora/rtc2/RtcConnection;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connection"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-static {p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getChannelId(Lio/agora/rtc2/RtcConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getUserId(Lio/agora/rtc2/RtcConnection;)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeClearRemotePositionsEx(JLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public initialize(Lio/agora/spatialaudio/LocalSpatialAudioConfig;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-object v0, p1, Lio/agora/spatialaudio/LocalSpatialAudioConfig;->mRtcEngine:Lio/agora/rtc2/RtcEngine;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    iget-object v0, p1, Lio/agora/spatialaudio/LocalSpatialAudioConfig;->mRtcEngine:Lio/agora/rtc2/RtcEngine;

    invoke-virtual {v0}, Lio/agora/rtc2/RtcEngine;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeObjectInit(Lio/agora/spatialaudio/LocalSpatialAudioConfig;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, -0x7

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public muteAllRemoteAudioStreams(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo p1, "{\"rtc.local_spatial_audio.mute_all_remote_audio_streams\":%s}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteLocalAudioStream(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo p1, "{\"rtc.local_spatial_audio.mute_local_stream\":%s}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteRemoteAudioStream(IZ)I
    .locals 5
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

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeMuteRemoteAudioStream(JIZ)I

    move-result p1

    return p1
.end method

.method public release()I
    .locals 5

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeDestroy(J)I

    iput-wide v2, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeRemotePosition(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeRemoveRemotePosition(JI)I

    move-result p1

    return p1
.end method

.method public removeRemotePositionEx(ILio/agora/rtc2/RtcConnection;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "connection"
        }
    .end annotation

    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-static {p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getChannelId(Lio/agora/rtc2/RtcConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getUserId(Lio/agora/rtc2/RtcConnection;)I

    move-result v5

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeRemoveRemotePositionEx(JILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setAudioRecvRange(F)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    const-string/jumbo p1, "{\"rtc.local_spatial_audio.hear_range\":%f}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setDistanceUnit(F)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    const-string/jumbo p1, "{\"rtc.local_spatial_audio.distance_unit\":%f}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setMaxAudioRecvCount(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCount"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const-string/jumbo p1, "{\"rtc.local_spatial_audio.max_hear_count\":%d}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPlayerAttenuation(IDZ)I
    .locals 7
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

    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetPlayerAttenuation(JIDZ)I

    move-result p1

    return p1
.end method

.method public setRemoteAudioAttenuation(IDZ)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "attenuation",
            "forceSet"
        }
    .end annotation

    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetRemoteAudioAttenuation(JIDZ)I

    move-result p1

    return p1
.end method

.method public setZones([Lio/agora/spatialaudio/SpatialAudioZone;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zones"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    if-eqz p1, :cond_9

    array-length v2, p1

    if-gtz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    aget-object v1, p1, v0

    const/4 v2, -0x2

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->position:[F

    if-eqz v1, :cond_7

    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->position:[F

    array-length v1, v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->forward:[F

    if-eqz v1, :cond_7

    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->forward:[F

    array-length v1, v1

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->right:[F

    if-eqz v1, :cond_7

    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->right:[F

    array-length v1, v1

    if-eq v1, v3, :cond_5

    goto :goto_1

    :cond_5
    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->up:[F

    if-eqz v1, :cond_7

    aget-object v1, p1, v0

    iget-object v1, v1, Lio/agora/spatialaudio/SpatialAudioZone;->up:[F

    array-length v1, v1

    if-eq v1, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v2

    :cond_8
    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetZones(J[Lio/agora/spatialaudio/SpatialAudioZone;)I

    move-result p1

    return p1

    :cond_9
    :goto_2
    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeSetZones(J[Lio/agora/spatialaudio/SpatialAudioZone;)I

    move-result p1

    return p1
.end method

.method public updatePlayerPositionInfo(ILio/agora/spatialaudio/RemoteVoicePositionInfo;)I
    .locals 5
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

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    if-eqz v0, :cond_2

    iget-object v0, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    if-eqz v0, :cond_1

    iget-object v0, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    array-length v0, v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeUpdatePlayerPositionInfo(JILio/agora/spatialaudio/RemoteVoicePositionInfo;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public updateRemotePosition(ILio/agora/spatialaudio/RemoteVoicePositionInfo;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "posInfo"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->CheckRemoteVoicePositionInfo(Lio/agora/spatialaudio/RemoteVoicePositionInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    iget-object v4, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    iget-object v5, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeUpdateRemotePosition(JI[F[F)I

    move-result p1

    return p1
.end method

.method public updateRemotePositionEx(ILio/agora/spatialaudio/RemoteVoicePositionInfo;Lio/agora/rtc2/RtcConnection;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "posInfo",
            "connection"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->CheckRemoteVoicePositionInfo(Lio/agora/spatialaudio/RemoteVoicePositionInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    iget-object v4, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->position:[F

    iget-object v5, p2, Lio/agora/spatialaudio/RemoteVoicePositionInfo;->forward:[F

    invoke-static {p3}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getChannelId(Lio/agora/rtc2/RtcConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getUserId(Lio/agora/rtc2/RtcConnection;)I

    move-result v7

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeUpdateRemotePositionEx(JI[F[FLjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateSelfPosition([F[F[F[F)I
    .locals 7
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

    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    array-length v0, p2

    if-ne v0, v3, :cond_2

    array-length v0, p3

    if-ne v0, v3, :cond_2

    array-length v0, p4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeUpdateSelfPosition(J[F[F[F[F)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public updateSelfPositionEx([F[F[F[FLio/agora/rtc2/RtcConnection;)I
    .locals 9
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

    iget-wide v1, p0, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    array-length v0, p2

    if-ne v0, v3, :cond_2

    array-length v0, p3

    if-ne v0, v3, :cond_2

    array-length v0, p4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getChannelId(Lio/agora/rtc2/RtcConnection;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p5}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->getUserId(Lio/agora/rtc2/RtcConnection;)I

    move-result v8

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lio/agora/spatialaudio/internal/LocalSpatialAudioImpl;->nativeUpdateSelfPositionEx(J[F[F[F[FLjava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x2

    return p1
.end method
