.class public abstract Landroidx/mediarouter/media/RouteMediaPlayerConnector;
.super Landroidx/media2/BaseRemoteMediaPlayerConnector;
.source "RouteMediaPlayerConnector.java"


# instance fields
.field private final mCallbacks:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroidx/media2/BaseRemoteMediaPlayerConnector;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mCallbacks:Landroidx/collection/ArrayMap;

    .line 54
    new-instance v0, Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getCallbacks()Landroidx/collection/SimpleArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 362
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mCallbacks:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->putAll(Landroidx/collection/SimpleArrayMap;)V

    .line 364
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyCurrentDataSourceChanged(Landroidx/media2/DataSourceDesc2;)V
    .locals 5

    .line 208
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 210
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 211
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 212
    new-instance v4, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;

    invoke-direct {v4, p0, v2, p1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;Landroidx/media2/DataSourceDesc2;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final adjustPlayerVolume(I)V
    .locals 3

    .line 99
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;

    invoke-direct {v2, p0, p1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getMaxPlayerVolume()F
    .locals 2

    .line 79
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    int-to-float v1, v1

    monitor-exit v0

    return v1

    .line 83
    :cond_0
    monitor-exit v0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPlayerVolume()F
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    int-to-float v1, v1

    monitor-exit v0

    return v1

    .line 93
    :cond_0
    monitor-exit v0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getVolumeControlType()I
    .locals 4

    .line 135
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 139
    :cond_1
    monitor-exit v0

    return v2

    .line 144
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final notifyBufferingStateChanged(Landroidx/media2/DataSourceDesc2;I)V
    .locals 5

    .line 277
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 278
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 279
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 280
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 281
    new-instance v4, Landroidx/mediarouter/media/RouteMediaPlayerConnector$6;

    invoke-direct {v4, p0, v2, p1, p2}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$6;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;Landroidx/media2/DataSourceDesc2;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyCurrentDataSourceChanged()V
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCurrentDataSource()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyCurrentDataSourceChanged(Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method

.method public final notifyMediaPrepared(Landroidx/media2/DataSourceDesc2;)V
    .locals 5

    .line 231
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 234
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 235
    new-instance v4, Landroidx/mediarouter/media/RouteMediaPlayerConnector$4;

    invoke-direct {v4, p0, v2, p1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$4;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;Landroidx/media2/DataSourceDesc2;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyPlaybackCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyCurrentDataSourceChanged(Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method

.method public final notifyPlaybackSpeedChanged()V
    .locals 6

    .line 298
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getPlaybackSpeed()F

    move-result v1

    const/4 v2, 0x0

    .line 300
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 301
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 302
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 303
    new-instance v5, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;

    invoke-direct {v5, p0, v3, v1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;F)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyPlayerStateChanged()V
    .locals 6

    .line 251
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getPlayerState()I

    move-result v1

    const/4 v2, 0x0

    .line 253
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 254
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 255
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 256
    new-instance v5, Landroidx/mediarouter/media/RouteMediaPlayerConnector$5;

    invoke-direct {v5, p0, v3, v1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$5;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyPlayerVolumeChanged()V
    .locals 6

    .line 340
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getPlayerVolume()F

    move-result v1

    const/4 v2, 0x0

    .line 342
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 343
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

    if-nez v3, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

    .line 348
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    .line 349
    instance-of v5, v3, Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

    if-eqz v5, :cond_1

    .line 350
    new-instance v5, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;

    invoke-direct {v5, p0, v3, v1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;F)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final notifySeekCompleted(J)V
    .locals 5

    .line 322
    invoke-direct {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->getCallbacks()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 323
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 325
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 326
    new-instance v4, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;

    invoke-direct {v4, p0, v2, p1, p2}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mCallbacks:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPlayerVolume(F)V
    .locals 3

    .line 117
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;

    invoke-direct {v2, p0, p1}, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;-><init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mCallbacks:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final updateRouteInfo(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 67
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, p1, :cond_0

    .line 69
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyPlayerVolumeChanged()V

    .line 74
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
