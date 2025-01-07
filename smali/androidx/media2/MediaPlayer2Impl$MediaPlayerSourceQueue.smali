.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerSourceQueue"
.end annotation


# instance fields
.field mAudioAttributes:Landroidx/media/AudioAttributesCompat;

.field mAudioSessionId:Ljava/lang/Integer;

.field mAuxEffect:Ljava/lang/Integer;

.field mAuxEffectSendLevel:Ljava/lang/Float;

.field mLooping:Z

.field mPlaybackParams:Landroid/media/PlaybackParams;

.field mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;",
            ">;"
        }
    .end annotation
.end field

.field mSurface:Landroid/view/Surface;

.field mSyncParams:Landroid/media/SyncParams;

.field mVolume:Ljava/lang/Float;

.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;)V
    .locals 3

    .line 1984
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1973
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    .line 1985
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/DataSourceDesc2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method declared-synchronized applyProperties()V
    .locals 4

    monitor-enter p0

    .line 2297
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2298
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 2299
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2301
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 2302
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2304
    :cond_1
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-eqz v1, :cond_2

    .line 2305
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v2}, Landroidx/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 2307
    :cond_2
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2308
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 2310
    :cond_3
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 2311
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 2313
    :cond_4
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    if-eqz v1, :cond_5

    .line 2314
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSyncParams(Landroid/media/SyncParams;)V

    .line 2316
    :cond_5
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    if-eqz v1, :cond_6

    .line 2317
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized attachAuxEffect(I)V
    .locals 1

    monitor-enter p0

    .line 2454
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->attachAuxEffect(I)V

    .line 2455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deselectTrack(I)V
    .locals 1

    monitor-enter p0

    .line 2476
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2477
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1

    monitor-enter p0

    .line 2126
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAudioSessionId()I
    .locals 1

    monitor-enter p0

    .line 2450
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBufferedPosition()J
    .locals 5

    monitor-enter p0

    .line 2111
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 2114
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2115
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 2112
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBufferingState()I
    .locals 2

    monitor-enter p0

    .line 2575
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPlayer()Landroid/media/MediaPlayer;
    .locals 2

    monitor-enter p0

    .line 1989
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPosition()J
    .locals 2

    monitor-enter p0

    .line 2093
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 2096
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 2094
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .locals 1

    monitor-enter p0

    .line 2480
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2505
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDuration()J
    .locals 2

    monitor-enter p0

    .line 2102
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 2105
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 2103
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;
    .locals 2

    monitor-enter p0

    .line 1993
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2521
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getMediaPlayer2State()I
    .locals 2

    monitor-enter p0

    .line 2571
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    monitor-enter p0

    .line 2401
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    monitor-enter p0

    .line 2405
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPlayerState()I
    .locals 2

    monitor-enter p0

    .line 2579
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSelectedTrack(I)I
    .locals 1

    monitor-enter p0

    .line 2468
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSourceForPlayer(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;
    .locals 3

    monitor-enter p0

    .line 2583
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2584
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 2585
    monitor-exit p0

    return-object v1

    .line 2588
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSyncParams()Landroid/media/SyncParams;
    .locals 1

    monitor-enter p0

    .line 2414
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getSyncParams()Landroid/media/SyncParams;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTimestamp()Landroidx/media2/MediaTimestamp2;
    .locals 2

    monitor-enter p0

    .line 2440
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTimestamp()Landroid/media/MediaTimestamp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2441
    :cond_0
    new-instance v1, Landroidx/media2/MediaTimestamp2;

    invoke-direct {v1, v0}, Landroidx/media2/MediaTimestamp2;-><init>(Landroid/media/MediaTimestamp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 1

    monitor-enter p0

    .line 2464
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVideoHeight()I
    .locals 1

    monitor-enter p0

    .line 2397
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVideoWidth()I
    .locals 1

    monitor-enter p0

    .line 2393
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getVolume()F
    .locals 1

    monitor-enter p0

    .line 2379
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized moveToNext()V
    .locals 3

    monitor-enter p0

    .line 2247
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2248
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2249
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2252
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2253
    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    iget v2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    if-eq v0, v2, :cond_0

    .line 2254
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;

    invoke-direct {v2, p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V

    .line 2261
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$9;

    invoke-direct {v2, p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$9;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    monitor-exit p0

    return-void

    .line 2250
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "player/source queue emptied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onCompletion(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 6

    const-string v0, "Invalid playback complete callback from "

    monitor-enter p0

    .line 2168
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v1

    .line 2169
    iget-boolean v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mLooping:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v2, :cond_0

    .line 2170
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;

    invoke-direct {v2, p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 2178
    iget-object v0, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/DataSourceDesc2;->getStartPosition()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2179
    iget-object v0, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/16 v0, 0x3ec

    .line 2180
    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    monitor-exit p0

    return-object v3

    .line 2183
    :cond_0
    :try_start_1
    iget-object v2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v2, :cond_1

    .line 2184
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v4, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$4;

    invoke-direct {v4, p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$4;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v2, v4}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    goto :goto_0

    :cond_1
    const-string v2, "MediaPlayer2Impl"

    const-string v4, "Playback complete event from next player. Ignoring."

    .line 2193
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :goto_0
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_4

    .line 2196
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3eb

    .line 2197
    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2199
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object p1

    .line 2200
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$5;

    invoke-direct {v1, p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$5;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V

    .line 2206
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$6;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$6;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/DataSourceDesc2;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2213
    monitor-exit p0

    return-object v3

    .line 2215
    :cond_2
    :try_start_2
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-boolean p1, p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSetAsNextPlayer:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 2218
    monitor-exit p0

    return-object v3

    .line 2220
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V

    .line 2221
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->playCurrent()Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_4
    const-string v1, "MediaPlayer2Impl"

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2225
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onError(Landroid/media/MediaPlayer;)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x3ed

    .line 2322
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    const/4 v0, 0x0

    .line 2323
    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onPrepared(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2130
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2131
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2132
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    if-ne p1, v3, :cond_5

    if-nez v1, :cond_1

    .line 2134
    iget-boolean v3, v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    if-eqz v3, :cond_0

    .line 2135
    iput-boolean v0, v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    .line 2136
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2137
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-virtual {p0, v3, v4}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    goto :goto_1

    .line 2139
    :cond_0
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {p0, v3, v4}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    :cond_1
    :goto_1
    const/4 v3, 0x2

    .line 2142
    iput v3, v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    .line 2143
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    if-ne v1, v4, :cond_4

    .line 2147
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    array-length v3, p1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v6, p1, v5

    .line 2148
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v6

    if-ne v6, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 2157
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 2158
    iput-boolean v4, v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSetAsNextPlayer:Z

    :cond_4
    add-int/2addr v1, v4

    .line 2161
    invoke-virtual {p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2164
    :cond_6
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onStartedAsNext(Landroid/media/MediaPlayer;)V
    .locals 3

    monitor-enter p0

    .line 2230
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 2231
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V

    .line 2232
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object p1

    .line 2233
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    const/16 v2, 0x3ec

    invoke-virtual {p0, v0, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2234
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;

    invoke-direct {v2, p0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 2241
    invoke-virtual {p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    .line 2242
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->applyProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pause()V
    .locals 3

    monitor-enter p0

    .line 2080
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    .line 2081
    iget v1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    .line 2084
    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2086
    :cond_0
    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 2087
    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized play()V
    .locals 3

    monitor-enter p0

    .line 2049
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2050
    iget v1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2051
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2052
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2053
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$2;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$2;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    monitor-exit p0

    return-void

    .line 2061
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized playCurrent()Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 6

    monitor-enter p0

    .line 2271
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->applyProperties()V

    .line 2273
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2274
    iget v2, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 2276
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2277
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2278
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$10;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$10;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 2285
    invoke-virtual {p0, v4}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    goto :goto_0

    .line 2288
    :cond_0
    iget v2, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    if-nez v2, :cond_1

    .line 2289
    invoke-virtual {p0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object v5

    .line 2291
    :cond_1
    iput-boolean v4, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    :goto_0
    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepare()V
    .locals 1

    monitor-enter p0

    .line 2066
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepareAsync()V
    .locals 2

    monitor-enter p0

    .line 2074
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v1, 0x2

    .line 2076
    invoke-virtual {p0, v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 4

    monitor-enter p0

    .line 2327
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    .line 2328
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 2329
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getPlayerState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2334
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 2337
    :try_start_1
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2338
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2340
    :cond_1
    iput v0, p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    .line 2341
    invoke-static {p1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSource(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 2342
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2343
    monitor-exit p0

    return-object v1

    .line 2345
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    .line 2346
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    const/16 v2, 0x3ed

    invoke-virtual {p0, p1, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2347
    new-instance p1, Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    const/16 v2, -0x3f2

    invoke-direct {p1, v1, v0, v2}, Landroidx/media2/MediaPlayer2Impl$DataSourceError;-><init>(Landroidx/media2/DataSourceDesc2;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2331
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized prepareDrm(Ljava/util/UUID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer$ProvisioningServerErrorException;,
            Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2486
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->prepareDrm(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized provideKeyResponse([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;,
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2496
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->provideKeyResponse([B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 2070
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2071
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseDrm()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2490
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2491
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->releaseDrm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    .line 2422
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2423
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 2424
    iget-object v2, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2425
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    const/4 v2, 0x0

    .line 2426
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    .line 2427
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffect:Ljava/lang/Integer;

    .line 2428
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;

    .line 2429
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 2430
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;

    .line 2431
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;

    .line 2432
    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    .line 2433
    iput-boolean v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mLooping:Z

    .line 2435
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V

    .line 2436
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreKeys([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2500
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->restoreKeys([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized seekTo(JI)V
    .locals 1

    monitor-enter p0

    .line 2418
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->seekTo(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized selectTrack(I)V
    .locals 1

    monitor-enter p0

    .line 2472
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V
    .locals 1

    monitor-enter p0

    .line 2119
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2121
    :cond_0
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioAttributes;

    .line 2122
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAudioSessionId(I)V
    .locals 1

    monitor-enter p0

    .line 2445
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 2446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAudioSessionId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAuxEffectSendLevel(F)V
    .locals 1

    monitor-enter p0

    .line 2459
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAuxEffectSendLevel(F)V

    .line 2460
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mAuxEffectSendLevel:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setBufferingState(Landroid/media/MediaPlayer;I)V
    .locals 3

    monitor-enter p0

    .line 2551
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2552
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 2555
    :cond_0
    iget p1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    .line 2556
    monitor-exit p0

    return-void

    .line 2558
    :cond_1
    :try_start_1
    iput p2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I

    .line 2559
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;

    invoke-direct {v0, p0, v1, p2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$12;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;I)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2566
    monitor-exit p0

    return-void

    .line 2568
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    monitor-enter p0

    .line 2510
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2511
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setFirst(Landroidx/media2/DataSourceDesc2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1997
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {v2, v3, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/DataSourceDesc2;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2000
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroidx/media2/DataSourceDesc2;

    .line 2001
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->setUpListeners(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 2003
    :goto_0
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-static {p1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSource(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 2004
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;

    if-eqz p1, :cond_1

    .line 2005
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 2006
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;

    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;

    const/4 p1, 0x0

    .line 2007
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;

    .line 2009
    :cond_1
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$1;

    invoke-direct {v0, p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$1;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2015
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setLooping(Z)V
    .locals 0

    monitor-enter p0

    .line 2364
    :try_start_0
    iput-boolean p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mLooping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setMp2State(Landroid/media/MediaPlayer;I)V
    .locals 3

    monitor-enter p0

    .line 2526
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2527
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 2530
    :cond_0
    iget p1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    .line 2531
    monitor-exit p0

    return-void

    .line 2533
    :cond_1
    :try_start_1
    iput p2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    .line 2535
    sget-object p1, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2536
    iget p2, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, p1, :cond_2

    .line 2537
    monitor-exit p0

    return-void

    .line 2539
    :cond_2
    :try_start_2
    iput p1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    .line 2540
    iget-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;-><init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;I)V

    invoke-virtual {p2, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2546
    monitor-exit p0

    return-void

    .line 2548
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setNext(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 3

    monitor-enter p0

    .line 2018
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2022
    :goto_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2023
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2024
    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 2026
    :cond_0
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {v0, v1, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/DataSourceDesc2;)V

    .line 2027
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2028
    invoke-virtual {p0, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2019
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setNextMultiple(Ljava/util/List;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/DataSourceDesc2;",
            ">;)",
            "Landroidx/media2/MediaPlayer2Impl$DataSourceError;"
        }
    .end annotation

    monitor-enter p0

    .line 2032
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2036
    :goto_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2037
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2038
    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 2040
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2041
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/DataSourceDesc2;

    .line 2042
    new-instance v3, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-object v4, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {v3, v4, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/DataSourceDesc2;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2044
    :cond_1
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2045
    invoke-virtual {p0, v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareAt(I)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2033
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .locals 1

    monitor-enter p0

    .line 2514
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2515
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1

    monitor-enter p0

    .line 2369
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    :try_start_1
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParams:Landroid/media/PlaybackParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2372
    :catch_0
    :try_start_2
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mPlaybackParamsToSetAfterSetDataSource:Landroid/media/PlaybackParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2373
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSurface(Landroid/view/Surface;)V
    .locals 1

    monitor-enter p0

    .line 2388
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSurface:Landroid/view/Surface;

    .line 2389
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSyncParams(Landroid/media/SyncParams;)V
    .locals 1

    monitor-enter p0

    .line 2409
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSyncParams(Landroid/media/SyncParams;)V

    .line 2410
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mSyncParams:Landroid/media/SyncParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setVolume(F)V
    .locals 1

    monitor-enter p0

    .line 2383
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mVolume:Ljava/lang/Float;

    .line 2384
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized skipToNext()V
    .locals 3

    monitor-enter p0

    .line 2353
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2356
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 2357
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V

    .line 2358
    iget v1, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayPending:Z

    if-eqz v0, :cond_1

    .line 2359
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->playCurrent()Landroidx/media2/MediaPlayer2Impl$DataSourceError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    :cond_1
    monitor-exit p0

    return-void

    .line 2354
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No next source available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
