.class public Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;
.super Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicContentCenterImpl"


# instance fields
.field private final mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeHandle:J

.field private final mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/RtcEngine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngine"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/musiccontentcenter/IAgoraMusicContentCenter;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    instance-of v0, p1, Lio/agora/rtc2/internal/RtcEngineImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/agora/rtc2/internal/RtcEngineImpl;

    iput-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lio/agora/rtc2/RtcEngine;->getNativeHandle()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeObjectInit(J)J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    :goto_0
    return-void
.end method

.method private native nativeCreateMusicPlayer(J)Lio/agora/musiccontentcenter/internal/MusicPlayerProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid"
        }
    .end annotation
.end method

.method private static native nativeDestroy(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "rtcEngine"
        }
    .end annotation
.end method

.method private native nativeDestroyMusicPlayer(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "playerId"
        }
    .end annotation
.end method

.method private native nativeGetCaches(J)[Lio/agora/musiccontentcenter/MusicCacheInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid"
        }
    .end annotation
.end method

.method private native nativeGetInternalSongCode(JJLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode",
            "jsonOption"
        }
    .end annotation
.end method

.method private native nativeGetLyric(JJI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode",
            "lyricType"
        }
    .end annotation
.end method

.method private native nativeGetMusicCharts(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid"
        }
    .end annotation
.end method

.method private native nativeGetMusicCollectionByMusicChartId(JIIILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "type",
            "page",
            "pageSize",
            "option"
        }
    .end annotation
.end method

.method private native nativeGetSongSimpleInfo(JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode"
        }
    .end annotation
.end method

.method private native nativeInitialize(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "configuration"
        }
    .end annotation
.end method

.method private native nativeIsPreloaded(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode"
        }
    .end annotation
.end method

.method private native nativeObjectInit(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngine"
        }
    .end annotation
.end method

.method private native nativePreload(JJLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode",
            "jsonOption"
        }
    .end annotation
.end method

.method private native nativePreloadWithSongCode(JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode"
        }
    .end annotation
.end method

.method private native nativeRegisterEventHandler(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "handler"
        }
    .end annotation
.end method

.method private native nativeRemoveCache(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "songCode"
        }
    .end annotation
.end method

.method private native nativeRenewToken(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "token"
        }
    .end annotation
.end method

.method private native nativeSearchMusic(JLjava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid",
            "keyword",
            "page",
            "pageSize",
            "option"
        }
    .end annotation
.end method

.method private native nativeUnregisterEventHandler(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMusicContentCenterImplAndroid"
        }
    .end annotation
.end method


# virtual methods
.method public createMusicPlayer()Lio/agora/musiccontentcenter/IAgoraMusicPlayer;
    .locals 8

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v2}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeCreateMusicPlayer(J)Lio/agora/musiccontentcenter/internal/MusicPlayerProperty;

    move-result-object v2

    iget-wide v6, v2, Lio/agora/musiccontentcenter/internal/MusicPlayerProperty;->handler:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    new-instance v1, Lio/agora/musiccontentcenter/internal/AgoraMusicPlayerImpl;

    iget-object v3, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    iget-wide v4, v2, Lio/agora/musiccontentcenter/internal/MusicPlayerProperty;->handler:J

    iget v2, v2, Lio/agora/musiccontentcenter/internal/MusicPlayerProperty;->id:I

    invoke-direct {v1, v3, v4, v5, v2}, Lio/agora/musiccontentcenter/internal/AgoraMusicPlayerImpl;-><init>(Lio/agora/rtc2/internal/RtcEngineImpl;JI)V

    :cond_2
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_0
    const-string v2, "MusicContentCenterImpl"

    const-string v3, "MusicContentCenter does not initialize or it may be destroyed (createMusicPlayer)"

    invoke-static {v2, v3}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public destroyMusicPlayer(Lio/agora/musiccontentcenter/IAgoraMusicPlayer;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-interface {p1}, Lio/agora/musiccontentcenter/IAgoraMusicPlayer;->getMediaPlayerId()I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeDestroyMusicPlayer(JI)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string v1, "MusicContentCenter does not initialize or it may be destroyed (destroyMusicPlayer)"

    invoke-static {p1, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method protected doDestroy()V
    .locals 7

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    iget-object v5, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v5}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeDestroy(JJ)I

    iput-wide v3, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaches()[Lio/agora/musiccontentcenter/MusicCacheInfo;
    .locals 7

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v2}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetCaches(J)[Lio/agora/musiccontentcenter/MusicCacheInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const-string v2, "MusicContentCenterImpl"

    const-string v3, "MusicContentCenter does not initialize or it may be destroyed (getCaches)"

    invoke-static {v2, v3}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [Lio/agora/musiccontentcenter/MusicCacheInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    new-array v0, v1, [Lio/agora/musiccontentcenter/MusicCacheInfo;

    return-object v0
.end method

.method public getInternalSongCode(JLjava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "jsonOption"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v3, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    iget-object v3, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v3}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    move-object v6, p0

    move-wide v9, p1

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetInternalSongCode(JJLjava/lang/String;)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (getInternalSongCode)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public getLyric(JI)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "lyricType"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v7, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v7

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetLyric(JJI)Ljava/lang/String;

    move-result-object v0

    monitor-exit v7

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "MusicContentCenterImpl"

    const-string v2, "MusicContentCenter does not initialize or it may be destroyed (getLyric)"

    invoke-static {v0, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v7

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getMusicCharts()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v2}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetMusicCharts(J)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const-string v2, "MusicContentCenterImpl"

    const-string v3, "MusicContentCenter does not initialize or it may be destroyed (getMusicCharts)"

    invoke-static {v2, v3}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getMusicCollectionByMusicChartId(IIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "musicChartId",
            "page",
            "pageSize",
            "option"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v8, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v8

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetMusicCollectionByMusicChartId(JIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "MusicContentCenterImpl"

    const-string v2, "MusicContentCenter does not initialize or it may be destroyed (getMusicCollectionByMusicChartId)"

    invoke-static {v0, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSongSimpleInfo(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v2}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeGetSongSimpleInfo(JJ)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (getSongSimpleInfo)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public initialize(Lio/agora/musiccontentcenter/MusicContentCenterConfiguration;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeInitialize(JLjava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string v1, "MusicContentCenter does not initialize or it may be destroyed (initialize)"

    invoke-static {p1, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public isPreloaded(J)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeIsPreloaded(JJ)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (isPreloaded)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public preload(JLjava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "jsonOption"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    move-object v6, p0

    move-wide v9, p1

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativePreload(JJLjava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (preload)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public preload(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-object v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v2}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativePreloadWithSongCode(JJ)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (preload)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public registerEventHandler(Lio/agora/musiccontentcenter/IMusicContentCenterEventHandler;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeRegisterEventHandler(JLjava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string v1, "MusicContentCenter does not initialize or it may be destroyed (registerEventHandler)"

    invoke-static {p1, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public removeCache(J)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songCode"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeRemoveCache(JJ)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string p2, "MusicContentCenter does not initialize or it may be destroyed (removeCache)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeRenewToken(JLjava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_2
    :goto_0
    const-string p1, "MusicContentCenterImpl"

    const-string v1, "MusicContentCenter does not initialize or it may be destroyed (renewToken)"

    invoke-static {p1, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x7

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, -0x8

    return p1
.end method

.method public searchMusic(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "page",
            "pageSize",
            "option"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v8, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v8

    :try_start_0
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeSearchMusic(JLjava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "MusicContentCenterImpl"

    const-string v2, "MusicContentCenter does not initialize or it may be destroyed (searchMusic)"

    invoke-static {v0, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public unregisterEventHandler()I
    .locals 6

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mRtcEngine:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/RtcEngineImpl;->getNativeHandle()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2}, Lio/agora/musiccontentcenter/internal/MusicContentCenterImpl;->nativeUnregisterEventHandler(J)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    :goto_0
    const-string v1, "MusicContentCenterImpl"

    const-string v2, "MusicContentCenter does not initialize or it may be destroyed (unregisterEventHandler)"

    invoke-static {v1, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 v0, -0x7

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    const/4 v0, -0x8

    return v0
.end method
