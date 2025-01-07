.class interface abstract Landroidx/media2/MediaController2$MediaController2Impl;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaController2Impl"
.end annotation


# virtual methods
.method public abstract addPlaylistItem(ILandroidx/media2/MediaItem2;)V
.end method

.method public abstract adjustVolume(II)V
.end method

.method public abstract fastForward()V
.end method

.method public abstract getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getBufferingState()I
.end method

.method public abstract getCallback()Landroidx/media2/MediaController2$ControllerCallback;
.end method

.method public abstract getCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentMediaItem()Landroidx/media2/MediaItem2;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getInstance()Landroidx/media2/MediaController2;
.end method

.method public abstract getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
.end method

.method public abstract getPlaybackSpeed()F
.end method

.method public abstract getPlayerState()I
.end method

.method public abstract getPlaylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getSessionActivity()Landroid/app/PendingIntent;
.end method

.method public abstract getSessionToken()Landroidx/media2/SessionToken2;
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract removePlaylistItem(Landroidx/media2/MediaItem2;)V
.end method

.method public abstract replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
.end method

.method public abstract reset()V
.end method

.method public abstract rewind()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract selectRoute(Landroid/os/Bundle;)V
.end method

.method public abstract sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
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
.end method

.method public abstract setRating(Ljava/lang/String;Landroidx/media2/Rating2;)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract setVolumeTo(II)V
.end method

.method public abstract skipBackward()V
.end method

.method public abstract skipForward()V
.end method

.method public abstract skipToNextItem()V
.end method

.method public abstract skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
.end method

.method public abstract skipToPreviousItem()V
.end method

.method public abstract subscribeRoutesInfo()V
.end method

.method public abstract unsubscribeRoutesInfo()V
.end method

.method public abstract updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
.end method
