.class public Landroidx/media2/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaController2$PlaybackInfo;,
        Landroidx/media2/MediaController2$ControllerCallback;,
        Landroidx/media2/MediaController2$MediaController2Impl;,
        Landroidx/media2/MediaController2$VolumeFlags;,
        Landroidx/media2/MediaController2$VolumeDirection;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

.field mTimeDiff:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/MediaController2;->createImpl(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)Landroidx/media2/MediaController2$MediaController2Impl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "token shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 583
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->addPlaylistItem(ILandroidx/media2/MediaItem2;)V

    return-void

    .line 581
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public adjustVolume(II)V
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->adjustVolume(II)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 145
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createImpl(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)Landroidx/media2/MediaController2$MediaController2Impl;
    .locals 7

    .line 127
    invoke-virtual {p2}, Landroidx/media2/SessionToken2;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroidx/media2/MediaController2ImplLegacy;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/MediaController2ImplLegacy;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Landroidx/media2/MediaController2ImplBase;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/MediaController2ImplBase;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V

    return-object v0
.end method

.method public fastForward()V
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->fastForward()V

    return-void
.end method

.method getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    .line 764
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 457
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getBufferingState()I

    move-result v0

    return v0
.end method

.method getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 756
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getCallback()Landroidx/media2/MediaController2$ControllerCallback;

    move-result-object v0

    return-object v0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 760
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 752
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 1

    .line 625
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 418
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 406
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getImpl()Landroidx/media2/MediaController2$MediaController2Impl;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 1

    .line 466
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 428
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 397
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getPlayerState()I

    move-result v0

    return v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 1

    .line 561
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 670
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroidx/media2/SessionToken2;
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getSessionToken()Landroidx/media2/SessionToken2;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 695
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->play()V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mediaId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepare()V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->prepare()V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mediaId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 598
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->removePlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void

    .line 596
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 615
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->replacePlaylistItem(ILandroidx/media2/MediaItem2;)V

    return-void

    .line 613
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->reset()V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->rewind()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->seekTo(J)V

    return-void
.end method

.method public selectRoute(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 737
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->selectRoute(Landroid/os/Bundle;)V

    return-void

    .line 735
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p1}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/MediaController2$MediaController2Impl;->sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command should be a custom command"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 501
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 1
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

    .line 541
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void

    .line 539
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRating(Ljava/lang/String;Landroidx/media2/Rating2;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 488
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->setRating(Ljava/lang/String;Landroidx/media2/Rating2;)V

    return-void

    .line 486
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rating shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mediaId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 683
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    .line 707
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->setShuffleMode(I)V

    return-void
.end method

.method public setTimeDiff(Ljava/lang/Long;)V
    .locals 0

    .line 748
    iput-object p1, p0, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    return-void
.end method

.method public setVolumeTo(II)V
    .locals 1

    .line 354
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaController2$MediaController2Impl;->setVolumeTo(II)V

    return-void
.end method

.method public skipBackward()V
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->skipBackward()V

    return-void
.end method

.method public skipForward()V
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->skipForward()V

    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    .line 643
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->skipToNextItem()V

    return-void
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 657
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->skipToPlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void

    .line 655
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipToPreviousItem()V
    .locals 1

    .line 634
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->skipToPreviousItem()V

    return-void
.end method

.method public subscribeRoutesInfo()V
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->subscribeRoutesInfo()V

    return-void
.end method

.method public unsubscribeRoutesInfo()V
    .locals 1

    .line 725
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaController2$MediaController2Impl;->unsubscribeRoutesInfo()V

    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 1

    .line 550
    iget-object v0, p0, Landroidx/media2/MediaController2;->mImpl:Landroidx/media2/MediaController2$MediaController2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaController2$MediaController2Impl;->updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
