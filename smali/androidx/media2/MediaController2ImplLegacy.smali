.class Landroidx/media2/MediaController2ImplLegacy;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Landroidx/media2/MediaController2$MediaController2Impl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;,
        Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final POSITION_DIFF_TOLERANCE:J = 0x64L

.field private static final SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED:Ljava/lang/String; = "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED"

.field private static final SESSION_COMMAND_ON_EXTRA_CHANGED:Ljava/lang/String; = "android.media.session.command.ON_EXTRA_CHANGED"

.field private static final TAG:Ljava/lang/String; = "MC2ImplLegacy"

.field static final sDefaultRootExtras:Landroid/os/Bundle;


# instance fields
.field mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

.field mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

.field mBufferedPosition:J

.field mBufferingState:I

.field final mCallback:Landroidx/media2/MediaController2$ControllerCallback;

.field final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private volatile mConnected:Z

.field final mContext:Landroid/content/Context;

.field private mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mControllerCompatCallback:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

.field mCurrentMediaItem:Landroidx/media2/MediaItem2;

.field mCurrentMediaItemIndex:I

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mInstance:Landroidx/media2/MediaController2;

.field private mIsReleased:Z

.field final mLock:Ljava/lang/Object;

.field mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

.field mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

.field mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

.field mPlayerState:I

.field mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end field

.field mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mRepeatMode:I

.field mShuffleMode:I

.field mSkipToPlaylistItem:Landroidx/media2/MediaItem2;

.field final mToken:Landroidx/media2/SessionToken2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/MediaController2ImplLegacy;->DEBUG:Z

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroidx/media2/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    const-string v1, "androidx.media2.root_default_root"

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    .line 177
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    .line 179
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "MediaController2_Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/media2/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object p3, p0, Landroidx/media2/MediaController2ImplLegacy;->mToken:Landroidx/media2/SessionToken2;

    .line 183
    iput-object p5, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    .line 184
    iput-object p4, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 186
    invoke-virtual {p3}, Landroidx/media2/SessionToken2;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 187
    monitor-enter v0

    const/4 p1, 0x0

    .line 188
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {p3}, Landroidx/media2/SessionToken2;->getBinder()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0, p1}, Landroidx/media2/MediaController2ImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 192
    :cond_0
    invoke-direct {p0}, Landroidx/media2/MediaController2ImplLegacy;->connectToService()V

    :goto_0
    return-void
.end method

.method private connectToService()V
    .locals 2

    .line 860
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$3;

    invoke-direct {v1, p0}, Landroidx/media2/MediaController2ImplLegacy$3;-><init>(Landroidx/media2/MediaController2ImplLegacy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendCommand(I)V
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method private sendCommand(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    .line 878
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "androidx.media2.argument.COMMAND_CODE"

    .line 880
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "androidx.media2.controller.command.BY_COMMAND_CODE"

    const/4 v0, 0x0

    .line 881
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 885
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    if-nez p2, :cond_0

    .line 895
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 899
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 901
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompatCallback:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    .line 902
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "androidx.media2.argument.ICONTROLLER_CALLBACK"

    .line 904
    invoke-virtual {v2}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->getIControllerCallback()Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 903
    invoke-static {p2, v0, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "androidx.media2.argument.PACKAGE_NAME"

    .line 905
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "androidx.media2.argument.UID"

    .line 906
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "androidx.media2.argument.PID"

    .line 907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 908
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void

    :catchall_0
    move-exception p1

    .line 902
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    .line 586
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 588
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 592
    invoke-virtual {p2}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object p2

    invoke-static {p2}, Landroidx/media2/MediaUtils2;->convertToMediaMetadataCompat(Landroidx/media2/MediaMetadata2;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    .line 591
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 594
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public adjustVolume(II)V
    .locals 2

    .line 415
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 417
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    monitor-exit v0

    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    .line 421
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 4

    .line 198
    sget-boolean v0, Landroidx/media2/MediaController2ImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplLegacy"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mIsReleased:Z

    if-eqz v1, :cond_1

    .line 204
    monitor-exit v0

    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x1

    .line 214
    iput-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mIsReleased:Z

    .line 216
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_2

    .line 217
    iget-object v3, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompatCallback:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 219
    :cond_2
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v1, :cond_3

    .line 220
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 221
    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 223
    :cond_3
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_4

    .line 224
    iget-object v3, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompatCallback:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 225
    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_4
    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplLegacy$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaController2ImplLegacy$1;-><init>(Landroidx/media2/MediaController2ImplLegacy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 228
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    .line 848
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 850
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 852
    :goto_0
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 853
    :try_start_1
    iput-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 854
    new-instance v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-direct {v0, p0}, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;-><init>(Landroidx/media2/MediaController2ImplLegacy;)V

    iput-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompatCallback:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    .line 855
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 856
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public fastForward()V
    .locals 4

    .line 295
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 297
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    monitor-exit v0

    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 2

    .line 770
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 772
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferedPosition()J
    .locals 6

    .line 505
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 507
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    monitor-exit v0

    return-wide v2

    .line 510
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v2

    :goto_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    .line 512
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 5

    .line 493
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    .line 495
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    monitor-exit v0

    return v2

    .line 498
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v1}, Landroidx/media2/MediaUtils2;->toBufferingState(I)I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 500
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 760
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 765
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 755
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 4

    .line 626
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 628
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 631
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 632
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 463
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 465
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    monitor-exit v0

    return-wide v2

    .line 468
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_1

    .line 469
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, v2, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 471
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    .line 472
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 6

    .line 448
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 450
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    monitor-exit v0

    return-wide v2

    .line 453
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v1, :cond_1

    const-string v4, "android.media.metadata.DURATION"

    .line 454
    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 457
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstance()Landroidx/media2/MediaController2;
    .locals 1

    .line 777
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 4

    .line 517
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 519
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 5

    .line 477
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    .line 479
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    monitor-exit v0

    return v2

    .line 482
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 4

    .line 437
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 439
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 442
    :cond_0
    iget v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlayerState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 556
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 559
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 560
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 4

    .line 575
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 577
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 580
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 581
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 4

    .line 672
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 674
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 677
    :cond_0
    iget v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mRepeatMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 678
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 4

    .line 426
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 428
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 431
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionToken()Landroidx/media2/SessionToken2;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mToken:Landroidx/media2/SessionToken2;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 4

    .line 696
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 698
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 701
    :cond_0
    iget v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mShuffleMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 702
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 244
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onConnectedNotLocked()V
    .locals 7

    .line 782
    sget-boolean v0, Landroidx/media2/MediaController2ImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplLegacy"

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectedNotLocked token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    new-instance v0, Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-direct {v0}, Landroidx/media2/SessionCommandGroup2$Builder;-><init>()V

    .line 787
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-boolean v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mIsReleased:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 791
    :cond_1
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getFlags()J

    move-result-wide v2

    .line 792
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaybackCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 793
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllVolumeCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 794
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllSessionCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v4, 0x27

    .line 796
    invoke-virtual {v0, v4}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v4, 0x24

    .line 797
    invoke-virtual {v0, v4}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v4, 0x25

    .line 798
    invoke-virtual {v0, v4}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v4, 0x26

    .line 799
    invoke-virtual {v0, v4}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 802
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaylistCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v2, 0x13

    .line 803
    invoke-virtual {v0, v2}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v2, 0x15

    .line 804
    invoke-virtual {v0, v2}, Landroidx/media2/SessionCommandGroup2$Builder;->removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    .line 807
    :cond_2
    new-instance v2, Landroidx/media2/SessionCommand2;

    const-string v3, "android.media.session.command.ON_EXTRA_CHANGED"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(Landroidx/media2/SessionCommand2;)Landroidx/media2/SessionCommandGroup2$Builder;

    .line 808
    new-instance v2, Landroidx/media2/SessionCommand2;

    const-string v3, "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED"

    invoke-direct {v2, v3, v4}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(Landroidx/media2/SessionCommand2;)Landroidx/media2/SessionCommandGroup2$Builder;

    .line 811
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->build()Landroidx/media2/SessionCommandGroup2;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

    .line 813
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 815
    iput v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlayerState:I

    const-wide/16 v2, -0x1

    .line 816
    iput-wide v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mBufferedPosition:J

    goto :goto_0

    .line 818
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToPlayerState(I)I

    move-result v2

    iput v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlayerState:I

    .line 819
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mBufferedPosition:J

    .line 822
    :goto_0
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->toPlaybackInfo2(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    .line 824
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getRepeatMode()I

    move-result v2

    iput v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mRepeatMode:I

    .line 825
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getShuffleMode()I

    move-result v2

    iput v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mShuffleMode:I

    .line 827
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 828
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object v2

    .line 827
    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertQueueItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    .line 829
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 830
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 829
    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 833
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/media2/MediaController2ImplLegacy;->setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V

    const/4 v2, 0x1

    .line 834
    iput-boolean v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    .line 835
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media2/MediaController2ImplLegacy$2;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaController2ImplLegacy$2;-><init>(Landroidx/media2/MediaController2ImplLegacy;Landroidx/media2/SessionCommandGroup2$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 789
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 835
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4

    .line 262
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 264
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    monitor-exit v0

    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 4

    .line 251
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 253
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    monitor-exit v0

    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 257
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 338
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 340
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    monitor-exit v0

    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 344
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 349
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 351
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    monitor-exit v0

    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 360
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 362
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    monitor-exit v0

    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public prepare()V
    .locals 4

    .line 284
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 286
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    monitor-exit v0

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepare()V

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 371
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 373
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    monitor-exit v0

    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 382
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    monitor-exit v0

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 393
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 395
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    monitor-exit v0

    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 3

    .line 599
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 601
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    monitor-exit v0

    return-void

    .line 604
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 605
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToQueueItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    .line 604
    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 606
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    .line 611
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 613
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    monitor-exit v0

    return-void

    .line 616
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaItem2;

    invoke-virtual {p0, v1}, Landroidx/media2/MediaController2ImplLegacy;->removePlaylistItem(Landroidx/media2/MediaItem2;)V

    .line 620
    invoke-virtual {p0, p1, p2}, Landroidx/media2/MediaController2ImplLegacy;->addPlaylistItem(ILandroidx/media2/MediaItem2;)V

    .line 621
    monitor-exit v0

    return-void

    .line 617
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 621
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 4

    .line 273
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 275
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rewind()V
    .locals 4

    .line 306
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 308
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    monitor-exit v0

    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    .line 312
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public seekTo(J)V
    .locals 2

    .line 317
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    monitor-exit v0

    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V

    .line 323
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public selectRoute(Landroid/os/Bundle;)V
    .locals 3

    .line 742
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 744
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    monitor-exit v0

    return-void

    .line 747
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media2.argument.ROUTE_BUNDLE"

    .line 749
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x26

    .line 750
    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(ILandroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 747
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method sendCommand(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    .line 890
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 543
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 545
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    monitor-exit v0

    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroidx/media2/SessionCommand2;->getCustomCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 549
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setCurrentMediaItemLocked(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 8

    .line 913
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 915
    iput v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 916
    iput-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    return-void

    .line 920
    :cond_0
    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    if-nez v2, :cond_1

    .line 921
    iput v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 922
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaItem2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    return-void

    :cond_1
    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 926
    invoke-virtual {p1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    iget-object v3, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaybackStateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 930
    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v5

    .line 929
    invoke-static {v5, v6, v2}, Landroidx/media2/MediaUtils2;->createUuidByQueueIdAndMediaId(JLjava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    const/4 v5, 0x0

    .line 931
    :goto_0
    iget-object v6, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 932
    iget-object v6, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/MediaItem2;

    if-eqz v6, :cond_2

    .line 933
    invoke-virtual {v6}, Landroidx/media2/MediaItem2;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 934
    iput-object v6, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    .line 935
    iput v5, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 942
    iput v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 943
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaItem2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    return-void

    .line 949
    :cond_4
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mSkipToPlaylistItem:Landroidx/media2/MediaItem2;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 951
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mSkipToPlaylistItem:Landroidx/media2/MediaItem2;

    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    .line 952
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 953
    iput-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mSkipToPlaylistItem:Landroidx/media2/MediaItem2;

    return-void

    .line 959
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 960
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mPlaylist:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaItem2;

    if-eqz p1, :cond_6

    .line 961
    invoke-virtual {p1}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 962
    iput v4, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 963
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    return-void

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 969
    :cond_7
    iput v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItemIndex:I

    .line 970
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mMediaMetadataCompat:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaItem2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0
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

    return-void
.end method

.method public setRating(Ljava/lang/String;Landroidx/media2/Rating2;)V
    .locals 2

    .line 528
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 530
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    monitor-exit v0

    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 534
    iget-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    .line 535
    invoke-static {p2}, Landroidx/media2/MediaUtils2;->convertToRatingCompat(Landroidx/media2/Rating2;)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    .line 534
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRating(Landroid/support/v4/media/RatingCompat;)V

    .line 537
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 683
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 685
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    monitor-exit v0

    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRepeatMode(I)V

    .line 691
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)V
    .locals 3

    .line 707
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 709
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    monitor-exit v0

    return-void

    .line 714
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setShuffleMode(I)V

    .line 715
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVolumeTo(II)V
    .locals 2

    .line 404
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 406
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    monitor-exit v0

    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->setVolumeTo(II)V

    .line 410
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public skipBackward()V
    .locals 0

    return-void
.end method

.method public skipForward()V
    .locals 0

    return-void
.end method

.method public skipToNextItem()V
    .locals 4

    .line 648
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 650
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    monitor-exit v0

    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    .line 654
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 4

    .line 659
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 661
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    monitor-exit v0

    return-void

    .line 664
    :cond_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy;->mSkipToPlaylistItem:Landroidx/media2/MediaItem2;

    .line 665
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    .line 666
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertToQueueItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    .line 665
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToQueueItem(J)V

    .line 667
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public skipToPreviousItem()V
    .locals 4

    .line 637
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 639
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    monitor-exit v0

    return-void

    .line 642
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mControllerCompat:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    .line 643
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subscribeRoutesInfo()V
    .locals 4

    .line 720
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 722
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    monitor-exit v0

    return-void

    .line 725
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x24

    .line 726
    invoke-direct {p0, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 725
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unsubscribeRoutesInfo()V
    .locals 4

    .line 731
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaController2ImplLegacy;->mConnected:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 733
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    monitor-exit v0

    return-void

    .line 736
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x25

    .line 737
    invoke-direct {p0, v0}, Landroidx/media2/MediaController2ImplLegacy;->sendCommand(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 736
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 0

    return-void
.end method
