.class public Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/mediaplayer/IMediaPlayerCacheManager;


# static fields
.field protected static mInstance:Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;


# instance fields
.field private cacheManagerInitStatus:I

.field private final mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/agora/rtc2/internal/RtcEngineImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngineImpl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->cacheManagerInitStatus:I

    iput-object p1, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->initMediaPlayerCacheManager()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->cacheManagerInitStatus:I

    return-void
.end method

.method protected static declared-synchronized destroyMediaPlayerCacheManager()V
    .locals 2

    const-class v0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mInstance:Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized getMediaPlayerCacheManager(Lio/agora/rtc2/internal/RtcEngineImpl;)Lio/agora/mediaplayer/IMediaPlayerCacheManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngineImpl"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v1, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mInstance:Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;

    if-nez v1, :cond_1

    new-instance v1, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;

    invoke-direct {v1, p0}, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;-><init>(Lio/agora/rtc2/internal/RtcEngineImpl;)V

    sput-object v1, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mInstance:Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;

    :cond_1
    sget-object p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mInstance:Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableAutoRemoveCache(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheEnableAutoRemoveCache(Z)I

    move-result p1

    return p1
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheGetCacheDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheFileCount()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheGetCacheFileCount()I

    move-result v0

    return v0
.end method

.method public getCacheManagerInitStatus()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->cacheManagerInitStatus:I

    return v0
.end method

.method public getMaxCacheFileCount()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheGetMaxCacheFileCount()I

    move-result v0

    return v0
.end method

.method public getMaxCacheFileSize()J
    .locals 2

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheGetMaxCacheFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAllCaches()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheRemoveAllCaches()I

    move-result v0

    return v0
.end method

.method public removeCacheByUri(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheRemoveCacheByUri(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeOldCache()I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheRemoveOldCache()I

    move-result v0

    return v0
.end method

.method public setCacheDir(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheSetCacheDir(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setMaxCacheFileCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheSetMaxCacheFileCount(I)I

    move-result p1

    return p1
.end method

.method public setMaxCacheFileSize(J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/MediaPlayerCacheManagerImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc2/internal/RtcEngineImpl;->mediaPlayerCacheSetMaxCacheFileSize(J)I

    move-result p1

    return p1
.end method
