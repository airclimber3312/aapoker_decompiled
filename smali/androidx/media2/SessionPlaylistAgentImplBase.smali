.class public Landroidx/media2/SessionPlaylistAgentImplBase;
.super Landroidx/media2/MediaPlaylistAgent;
.source "SessionPlaylistAgentImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;,
        Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;
    }
.end annotation


# static fields
.field public static final END_OF_PLAYLIST:I = -0x1

.field public static final NO_VALID_ITEMS:I = -0x2


# instance fields
.field mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

.field private mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

.field final mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

.field private mItemDsdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/MediaItem2;",
            "Landroidx/media2/DataSourceDesc2;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private mMetadata:Landroidx/media2/MediaMetadata2;

.field mPlayer:Landroidx/media2/MediaPlayerConnector;

.field private final mPlayerCallback:Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

.field private mPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatMode:I

.field private final mSession:Landroidx/media2/MediaSession2ImplBase;

.field private mShuffleMode:I

.field mShuffledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent;-><init>()V

    .line 50
    new-instance v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroidx/media2/SessionPlaylistAgentImplBase;ILandroidx/media2/DataSourceDesc2;)V

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 158
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mSession:Landroidx/media2/MediaSession2ImplBase;

    .line 159
    iput-object p2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 160
    new-instance p2, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-direct {p2, p0}, Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;-><init>(Landroidx/media2/SessionPlaylistAgentImplBase;)V

    iput-object p2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    .line 161
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaPlayerConnector;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "player shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionImpl shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyShuffleModeLocked()V
    .locals 2

    .line 528
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 529
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 530
    iget v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffleMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 532
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static clamp(II)I
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method

.method private hasValidItem()Z
    .locals 2

    .line 435
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updatePlayerDataSourceLocked()V
    .locals 3

    .line 513
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 516
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayerConnector;->getPlayerState()I

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayerConnector;->setDataSource(Landroidx/media2/DataSourceDesc2;)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayerConnector;->setNextDataSource(Landroidx/media2/DataSourceDesc2;)V

    .line 520
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayerConnector;->skipToNext()V

    .line 522
    :goto_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mRepeatMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/media2/MediaPlayerConnector;->loopCurrent(Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 7

    if-eqz p2, :cond_2

    .line 244
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/media2/SessionPlaylistAgentImplBase;->clamp(II)I

    move-result p1

    .line 247
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 248
    iget v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffleMode:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v2

    int-to-double v5, p1

    mul-double v3, v3, v5

    double-to-int p1, v3

    .line 253
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 255
    :goto_0
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 256
    invoke-virtual {p0, p1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 257
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 261
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 2

    .line 182
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 183
    :try_start_0
    iput-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurShuffledIndex()I
    .locals 2

    .line 429
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 2

    .line 234
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaItem(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;
    .locals 4

    .line 417
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 420
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaItem2;

    monitor-exit v0

    return-object p1

    .line 423
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-super {p0, p1}, Landroidx/media2/MediaPlaylistAgent;->getMediaItem(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 423
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;
    .locals 5

    .line 465
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-lez p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_8

    add-int/2addr p1, p2

    if-ltz p1, :cond_2

    .line 471
    iget-object v4, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_6

    .line 472
    :cond_2
    iget v4, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_3

    goto :goto_2

    .line 473
    :cond_3
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    :goto_2
    return-object v3

    :cond_4
    if-gez p1, :cond_5

    .line 475
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 478
    :cond_6
    :goto_3
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/MediaItem2;

    invoke-virtual {p0, v3}, Landroidx/media2/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroidx/media2/MediaItem2;)Landroidx/media2/DataSourceDesc2;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 480
    new-instance p2, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    invoke-direct {p2, p0, p1, v3}, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroidx/media2/SessionPlaylistAgentImplBase;ILandroidx/media2/DataSourceDesc2;)V

    return-object p2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-object v3
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mMetadata:Landroidx/media2/MediaMetadata2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 218
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 353
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mRepeatMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 2

    .line 393
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffleMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 395
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 270
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    monitor-exit v0

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 286
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroidx/media2/SessionPlaylistAgentImplBase;->clamp(II)I

    move-result p1

    .line 291
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 292
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    iget-object v4, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v3, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 296
    invoke-virtual {p0, p1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 297
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 301
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 284
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method retrieveDataSourceDescLocked(Landroidx/media2/MediaItem2;)Landroidx/media2/DataSourceDesc2;
    .locals 2

    .line 442
    invoke-virtual {p1}, Landroidx/media2/MediaItem2;->getDataSourceDesc()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 447
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/DataSourceDesc2;

    if-eqz v0, :cond_1

    return-object v0

    .line 451
    :cond_1
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    if-eqz v1, :cond_2

    .line 454
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mSession:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;->onDataSourceMissing(Landroidx/media2/MediaSession2;Landroidx/media2/MediaItem2;)Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setPlayer(Landroidx/media2/MediaPlayerConnector;)V
    .locals 3

    .line 165
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-ne p1, v1, :cond_0

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-virtual {p1, v1}, Landroidx/media2/MediaPlayerConnector;->unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    .line 170
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 171
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mSession:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayerCallback:Landroidx/media2/SessionPlaylistAgentImplBase$MyPlayerEventCallback;

    invoke-virtual {p1, v1, v2}, Landroidx/media2/MediaPlayerConnector;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mItemDsdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 203
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->applyShuffleModeLocked()V

    .line 207
    iput-object p2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mMetadata:Landroidx/media2/MediaMetadata2;

    const/4 p1, -0x1

    const/4 p2, 0x1

    .line 208
    invoke-virtual {p0, p1, p2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 209
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyPlaylistChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 4

    if-ltz p1, :cond_6

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 365
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget v2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-ne v2, p1, :cond_1

    .line 367
    monitor-exit v1

    return-void

    .line 369
    :cond_1
    iput p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mRepeatMode:I

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 378
    :cond_2
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    .line 379
    invoke-virtual {p0, p1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 380
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_0

    .line 372
    :cond_3
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eq p1, v0, :cond_5

    .line 373
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {p1, v2}, Landroidx/media2/MediaPlayerConnector;->loopCurrent(Z)V

    goto :goto_1

    .line 384
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayerConnector;->loopCurrent(Z)V

    .line 387
    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyRepeatModeChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 387
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iget v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffleMode:I

    if-ne v1, p1, :cond_1

    .line 406
    monitor-exit v0

    return-void

    .line 408
    :cond_1
    iput p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffleMode:I

    .line 409
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->applyShuffleModeLocked()V

    .line 410
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 411
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyShuffleModeChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 411
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public skipToNextItem()V
    .locals 3

    .line 339
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v1

    .line 344
    iget-object v2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eq v1, v2, :cond_1

    .line 345
    iput-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 346
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 348
    :cond_1
    monitor-exit v0

    return-void

    .line 341
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 310
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    invoke-virtual {p1, v1}, Landroidx/media2/MediaItem2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 316
    monitor-exit v0

    return-void

    .line 318
    :cond_1
    new-instance v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    invoke-direct {v1, p0, p1}, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;-><init>(Landroidx/media2/SessionPlaylistAgentImplBase;I)V

    iput-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 319
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 320
    monitor-exit v0

    return-void

    .line 312
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 308
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipToPreviousItem()V
    .locals 3

    .line 325
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    monitor-exit v0

    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v1

    .line 330
    iget-object v2, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mEopPlayItem:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    if-eq v1, v2, :cond_1

    .line 331
    iput-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 332
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updateCurrentIfNeededLocked()V

    .line 334
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

.method updateCurrentIfNeededLocked()V
    .locals 4

    .line 488
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->hasValidItem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    invoke-virtual {v0}, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 494
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iput v0, v1, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 500
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mShuffledList:Ljava/util/ArrayList;

    iget v3, v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaItem2;

    iput-object v1, v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    .line 503
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget-object v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->mediaItem:Landroidx/media2/MediaItem2;

    invoke-virtual {p0, v0}, Landroidx/media2/SessionPlaylistAgentImplBase;->retrieveDataSourceDescLocked(Landroidx/media2/MediaItem2;)Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    if-nez v0, :cond_3

    .line 504
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    iget v0, v0, Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;->shuffledIdx:I

    invoke-virtual {p0, v0, v2}, Landroidx/media2/SessionPlaylistAgentImplBase;->getNextValidPlayItemLocked(II)Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mCurrent:Landroidx/media2/SessionPlaylistAgentImplBase$PlayItem;

    .line 505
    invoke-direct {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->updatePlayerDataSourceLocked()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 2

    .line 223
    iget-object v0, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mMetadata:Landroidx/media2/MediaMetadata2;

    if-ne p1, v1, :cond_0

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_0
    iput-object p1, p0, Landroidx/media2/SessionPlaylistAgentImplBase;->mMetadata:Landroidx/media2/MediaMetadata2;

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {p0}, Landroidx/media2/SessionPlaylistAgentImplBase;->notifyPlaylistMetadataChanged()V

    return-void

    :catchall_0
    move-exception p1

    .line 228
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
