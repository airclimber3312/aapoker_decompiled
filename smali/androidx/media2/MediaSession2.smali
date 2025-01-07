.class public Landroidx/media2/MediaSession2;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Landroidx/media2/MediaInterface2$SessionPlayer;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaSession2$MainHandlerExecutor;,
        Landroidx/media2/MediaSession2$BuilderBase;,
        Landroidx/media2/MediaSession2$MediaSession2Impl;,
        Landroidx/media2/MediaSession2$ControllerCb;,
        Landroidx/media2/MediaSession2$CommandButton;,
        Landroidx/media2/MediaSession2$ControllerInfo;,
        Landroidx/media2/MediaSession2$Builder;,
        Landroidx/media2/MediaSession2$SessionCallback;,
        Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;,
        Landroidx/media2/MediaSession2$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SETUP_REQUIRED:I = 0xc

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x0

.field static final TAG:Ljava/lang/String; = "MediaSession2"


# instance fields
.field private final mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual/range {p0 .. p7}, Landroidx/media2/MediaSession2;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$MediaSession2Impl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 1

    .line 756
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->addPlaylistItem(ILandroidx/media2/MediaItem2;)V

    return-void
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 1

    .line 636
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->clearOnDataSourceMissingHelper()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 313
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$MediaSession2Impl;
    .locals 10

    .line 280
    new-instance v9, Landroidx/media2/MediaSession2ImplBase;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/MediaSession2ImplBase;-><init>(Landroidx/media2/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    return-object v9
.end method

.method public getAudioFocusHandler()Landroidx/media2/AudioFocusHandler;
    .locals 1

    .line 358
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getAudioFocusHandler()Landroidx/media2/AudioFocusHandler;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 563
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 1

    .line 575
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getBufferingState()I

    move-result v0

    return v0
.end method

.method getCallback()Landroidx/media2/MediaSession2$SessionCallback;
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    return-object v0
.end method

.method getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 345
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 341
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 1

    .line 791
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 543
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 553
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getImpl()Landroidx/media2/MediaSession2$MediaSession2Impl;
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    return-object v0
.end method

.method getLegacyBrowerServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 872
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public getPlayerConnector()Landroidx/media2/MediaPlayerConnector;
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlayer()Landroidx/media2/MediaPlayerConnector;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlayerState()I

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

    .line 654
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;
    .locals 1

    .line 330
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 1

    .line 739
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method getSessionBinder()Landroid/os/IBinder;
    .locals 1

    .line 868
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getSessionBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 864
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 842
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getToken()Landroidx/media2/SessionToken2;
    .locals 1

    .line 337
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getToken()Landroidx/media2/SessionToken2;

    move-result-object v0

    return-object v0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 1

    .line 509
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->notifyError(ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyRoutesInfoChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->notifyRoutesInfoChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 436
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->play()V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 470
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->prepare()V

    return-void
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 1

    .line 769
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->removePlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 1

    .line 781
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->replacePlaylistItem(ILandroidx/media2/MediaItem2;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 456
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->seekTo(J)V

    return-void
.end method

.method public sendCustomCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 426
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/MediaSession2$MediaSession2Impl;->sendCustomCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V
    .locals 1

    .line 413
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V

    return-void
.end method

.method public setAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    return-void
.end method

.method public setCustomLayout(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setCustomLayout(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 1

    .line 626
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 593
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setPlaybackSpeed(F)V

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

    .line 686
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 829
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    .line 855
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->setShuffleMode(I)V

    return-void
.end method

.method public skipBackward()V
    .locals 1

    .line 498
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->skipBackward()V

    return-void
.end method

.method public skipForward()V
    .locals 1

    .line 489
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->skipForward()V

    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    .line 729
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->skipToNextItem()V

    return-void
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 1

    .line 701
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->skipToPlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    .line 715
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->skipToPreviousItem()V

    return-void
.end method

.method public updatePlayerConnector(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V
    .locals 1

    .line 307
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->updatePlayer(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 1

    .line 801
    iget-object v0, p0, Landroidx/media2/MediaSession2;->mImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
