.class final Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaController2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2ImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControllerCompatCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy;)V
    .locals 0

    .line 999
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .locals 2

    .line 1156
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$10;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$10;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 1

    .line 1166
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;

    invoke-direct {v0, p0}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1144
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$9;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$9;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 1104
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v1, p1}, Landroidx/media2/MediaController2ImplLegacy;->setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 10

    .line 1027
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1029
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput-object p1, v2, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1030
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v3

    invoke-static {v3}, Landroidx/media2/MediaUtils2;->convertToPlayerState(I)I

    move-result v3

    iput v3, v2, Landroidx/media2/MediaController2ImplLegacy;->mPlayerState:I

    .line 1031
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/MediaController2ImplLegacy;->mBufferedPosition:J

    .line 1033
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v2, v2, Landroidx/media2/MediaController2ImplLegacy;->mQueue:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1034
    :goto_0
    iget-object v4, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v4, v4, Landroidx/media2/MediaController2ImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1035
    iget-object v4, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v4, v4, Landroidx/media2/MediaController2ImplLegacy;->mQueue:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1036
    iget-object v4, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput v2, v4, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 1037
    iget-object v4, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v5, v4, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/MediaItem2;

    iput-object v5, v4, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v2, v2, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    .line 1042
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    .line 1045
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$2;

    invoke-direct {v0, p0}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$2;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    .line 1055
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    if-eq v0, v4, :cond_5

    .line 1056
    :cond_4
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$3;

    invoke-direct {v4, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$3;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1064
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_7

    .line 1065
    :cond_6
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$4;

    invoke-direct {v4, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$4;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 1074
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v0, v0, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v4

    .line 1075
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v0, v0, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    .line 1076
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 1075
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    .line 1078
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$5;

    invoke-direct {v6, p0, v4, v5}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$5;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;J)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1088
    :cond_8
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Landroidx/media2/MediaUtils2;->toBufferingState(I)I

    move-result p1

    if-nez v1, :cond_9

    goto :goto_1

    .line 1091
    :cond_9
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->toBufferingState(I)I

    move-result v3

    :goto_1
    if-eq p1, v3, :cond_a

    .line 1093
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;

    invoke-direct {v1, p0, v2, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroidx/media2/MediaItem2;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 1042
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput-object p1, v1, Landroidx/media2/MediaController2ImplLegacy;->mQueue:Ljava/util/List;

    .line 1115
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertQueueItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    .line 1116
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    .line 1117
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 1118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2;

    move-result-object p1

    iput-object p1, v1, Landroidx/media2/MediaController2ImplLegacy;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 1132
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplLegacy;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 1133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$8;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$8;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroidx/media2/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1133
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onRepeatModeChanged(I)V
    .locals 2

    .line 1178
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput p1, v1, Landroidx/media2/MediaController2ImplLegacy;->mRepeatMode:I

    .line 1180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSessionDestroyed()V
    .locals 1

    .line 1009
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaController2ImplLegacy;->close()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1014
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$1;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSessionReady()V
    .locals 1

    .line 1004
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaController2ImplLegacy;->onConnectedNotLocked()V

    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 2

    .line 1191
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput p1, v1, Landroidx/media2/MediaController2ImplLegacy;->mShuffleMode:I

    .line 1193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$13;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$13;-><init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
