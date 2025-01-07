.class Landroidx/media2/MediaController2ImplBase;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaController2$MediaController2Impl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MC2ImplBase"


# instance fields
.field private mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

.field private mBufferedPositionMs:J

.field private mBufferingState:I

.field final mCallback:Landroidx/media2/MediaController2$ControllerCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field final mControllerStub:Landroidx/media2/MediaController2Stub;

.field private mCurrentMediaItem:Landroidx/media2/MediaItem2;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private volatile mISession2:Landroidx/media2/IMediaSession2;

.field final mInstance:Landroidx/media2/MediaController2;

.field private mIsReleased:Z

.field private final mLock:Ljava/lang/Object;

.field private mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

.field private mPlaybackSpeed:F

.field private mPlayerState:I

.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

.field private mPositionEventTimeMs:J

.field private mPositionMs:J

.field private mRepeatMode:I

.field private mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

.field private mSessionActivity:Landroid/app/PendingIntent;

.field private mShuffleMode:I

.field final mToken:Landroidx/media2/SessionToken2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MC2ImplBase"

    const/4 v1, 0x3

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    .line 140
    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p5, :cond_2

    if-eqz p4, :cond_1

    .line 153
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mContext:Landroid/content/Context;

    .line 154
    new-instance p1, Landroidx/media2/MediaController2Stub;

    invoke-direct {p1, p0}, Landroidx/media2/MediaController2Stub;-><init>(Landroidx/media2/MediaController2ImplBase;)V

    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 155
    iput-object p3, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    .line 156
    iput-object p5, p0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    .line 157
    iput-object p4, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 158
    new-instance p1, Landroidx/media2/MediaController2ImplBase$1;

    invoke-direct {p1, p0}, Landroidx/media2/MediaController2ImplBase$1;-><init>(Landroidx/media2/MediaController2ImplBase;)V

    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 165
    invoke-virtual {p3}, Landroidx/media2/SessionToken2;->getBinder()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroidx/media2/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/IMediaSession2;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroidx/media2/SessionToken2;->getType()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 168
    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase;->mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    .line 169
    invoke-virtual {p0, p1}, Landroidx/media2/MediaController2ImplBase;->connectToSession(Landroidx/media2/IMediaSession2;)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    invoke-direct {p1, p0}, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;-><init>(Landroidx/media2/MediaController2ImplBase;)V

    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    .line 172
    invoke-direct {p0}, Landroidx/media2/MediaController2ImplBase;->connectToService()V

    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "token shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectToService()V
    .locals 7

    const-string v0, "bind to "

    const-string v1, "bind to "

    .line 784
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.MediaSessionService2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v3}, Landroidx/media2/SessionToken2;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v4}, Landroidx/media2/SessionToken2;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    iget-object v3, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 802
    :try_start_0
    iget-object v4, p0, Landroidx/media2/MediaController2ImplBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/media2/MediaController2ImplBase;->mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "MC2ImplBase"

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_0
    sget-boolean v1, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MC2ImplBase"

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    const/16 v0, 0xf

    .line 592
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 596
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 595
    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->addPlaylistItem(Landroidx/media2/IMediaController2;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 598
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public adjustVolume(II)V
    .locals 2

    const/16 v0, 0xb

    .line 415
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->adjustVolume(Landroidx/media2/IMediaController2;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 420
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 178
    sget-boolean v0, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplBase"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    .line 184
    iget-boolean v2, p0, Landroidx/media2/MediaController2ImplBase;->mIsReleased:Z

    if-eqz v2, :cond_1

    .line 186
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 188
    iput-boolean v2, p0, Landroidx/media2/MediaController2ImplBase;->mIsReleased:Z

    .line 189
    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 190
    iget-object v4, p0, Landroidx/media2/MediaController2ImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    iput-object v3, p0, Landroidx/media2/MediaController2ImplBase;->mServiceConnection:Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;

    .line 193
    :cond_2
    iput-object v3, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    .line 194
    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-virtual {v2}, Landroidx/media2/MediaController2Stub;->destroy()V

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 198
    :try_start_1
    invoke-interface {v1}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 199
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v1, v0}, Landroidx/media2/IMediaSession2;->release(Landroidx/media2/IMediaController2;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :catch_0
    :cond_3
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$2;

    invoke-direct {v1, p0}, Landroidx/media2/MediaController2ImplBase$2;-><init>(Landroidx/media2/MediaController2ImplBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 195
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method connectToSession(Landroidx/media2/IMediaSession2;)V
    .locals 2

    .line 815
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media2/IMediaSession2;->connect(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MC2ImplBase"

    const-string v0, "Failed to call connection request. Framework will retry automatically"

    .line 817
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public fastForward()V
    .locals 3

    const/4 v0, 0x7

    .line 274
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->fastForward(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 280
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 4

    .line 502
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 504
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 507
    :cond_0
    iget-wide v1, p0, Landroidx/media2/MediaController2ImplBase;->mBufferedPositionMs:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 4

    .line 491
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 493
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    iget v1, p0, Landroidx/media2/MediaController2ImplBase;->mBufferingState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 764
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 769
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 759
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 2

    .line 633
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 635
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 453
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 455
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 458
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v1, v1, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v1, v1, Landroidx/media2/MediaController2;->mTimeDiff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/MediaController2ImplBase;->mPositionEventTimeMs:J

    sub-long/2addr v1, v3

    .line 460
    :goto_0
    iget-wide v3, p0, Landroidx/media2/MediaController2ImplBase;->mPositionMs:J

    iget v5, p0, Landroidx/media2/MediaController2ImplBase;->mPlaybackSpeed:F

    long-to-float v1, v1

    mul-float v5, v5, v1

    float-to-long v1, v5

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    .line 461
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 462
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 3

    .line 441
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "android.media.metadata.DURATION"

    .line 444
    invoke-virtual {v1, v2}, Landroidx/media2/MediaMetadata2;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.media.metadata.DURATION"

    .line 445
    invoke-virtual {v1, v2}, Landroidx/media2/MediaMetadata2;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 447
    :cond_1
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstance()Landroidx/media2/MediaController2;
    .locals 1

    .line 779
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 2

    .line 513
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 515
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 4

    .line 467
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 469
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 472
    :cond_0
    iget v1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaybackSpeed:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 473
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 2

    .line 434
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    iget v1, p0, Landroidx/media2/MediaController2ImplBase;->mPlayerState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 436
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 550
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaylist:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 552
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 2

    .line 585
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .line 680
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    iget v1, p0, Landroidx/media2/MediaController2ImplBase;->mRepeatMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 682
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 2

    .line 427
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 429
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;
    .locals 4

    const-string v0, "Controller isn\'t allowed to call command, commandCode="

    .line 824
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

    invoke-virtual {v2, p1}, Landroidx/media2/SessionCommandGroup2;->hasCommand(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MC2ImplBase"

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 832
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getSessionInterfaceIfAble(Landroidx/media2/SessionCommand2;)Landroidx/media2/IMediaSession2;
    .locals 4

    const-string v0, "Controller isn\'t allowed to call command, command="

    .line 837
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase;->mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

    invoke-virtual {v2, p1}, Landroidx/media2/SessionCommandGroup2;->hasCommand(Landroidx/media2/SessionCommand2;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MC2ImplBase"

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    .line 842
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 843
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSessionToken()Landroidx/media2/SessionToken2;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 2

    .line 700
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    iget v1, p0, Landroidx/media2/MediaController2ImplBase;->mShuffleMode:I

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

    .line 219
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

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

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyBufferingStateChanged(Landroidx/media2/MediaItem2;IJ)V
    .locals 1

    .line 898
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    iput p2, p0, Landroidx/media2/MediaController2ImplBase;->mBufferingState:I

    .line 900
    iput-wide p3, p0, Landroidx/media2/MediaController2ImplBase;->mBufferedPositionMs:J

    .line 901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    iget-object p3, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Landroidx/media2/MediaController2ImplBase$6;

    invoke-direct {p4, p0, p1, p2}, Landroidx/media2/MediaController2ImplBase$6;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaItem2;I)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 901
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyCurrentMediaItemChanged(Landroidx/media2/MediaItem2;)V
    .locals 2

    .line 847
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    .line 849
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$3;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$3;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaItem2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 849
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyError(ILandroid/os/Bundle;)V
    .locals 2

    .line 1007
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$13;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/MediaController2ImplBase$13;-><init>(Landroidx/media2/MediaController2ImplBase;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyPlaybackInfoChanges(Landroidx/media2/MediaController2$PlaybackInfo;)V
    .locals 2

    .line 945
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    .line 947
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$9;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$9;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaController2$PlaybackInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 947
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlaybackSpeedChanges(JJF)V
    .locals 1

    .line 880
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/MediaController2ImplBase;->mPositionEventTimeMs:J

    .line 882
    iput-wide p3, p0, Landroidx/media2/MediaController2ImplBase;->mPositionMs:J

    .line 883
    iput p5, p0, Landroidx/media2/MediaController2ImplBase;->mPlaybackSpeed:F

    .line 884
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/media2/MediaController2ImplBase$5;

    invoke-direct {p2, p0, p5}, Landroidx/media2/MediaController2ImplBase$5;-><init>(Landroidx/media2/MediaController2ImplBase;F)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 884
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlayerStateChanges(JJI)V
    .locals 1

    .line 863
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/MediaController2ImplBase;->mPositionEventTimeMs:J

    .line 865
    iput-wide p3, p0, Landroidx/media2/MediaController2ImplBase;->mPositionMs:J

    .line 866
    iput p5, p0, Landroidx/media2/MediaController2ImplBase;->mPlayerState:I

    .line 867
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/media2/MediaController2ImplBase$4;

    invoke-direct {p2, p0, p5}, Landroidx/media2/MediaController2ImplBase$4;-><init>(Landroidx/media2/MediaController2ImplBase;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 867
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlaylistChanges(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
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

    .line 914
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaylist:Ljava/util/List;

    .line 916
    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 917
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$7;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/MediaController2ImplBase$7;-><init>(Landroidx/media2/MediaController2ImplBase;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 917
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlaylistMetadataChanges(Landroidx/media2/MediaMetadata2;)V
    .locals 2

    .line 930
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mPlaylistMetadata:Landroidx/media2/MediaMetadata2;

    .line 932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$8;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$8;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 932
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyRepeatModeChanges(I)V
    .locals 2

    .line 960
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_0
    iput p1, p0, Landroidx/media2/MediaController2ImplBase;->mRepeatMode:I

    .line 962
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$10;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$10;-><init>(Landroidx/media2/MediaController2ImplBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 962
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyRoutesInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$14;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$14;-><init>(Landroidx/media2/MediaController2ImplBase;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifySeekCompleted(JJJ)V
    .locals 1

    .line 990
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/MediaController2ImplBase;->mPositionEventTimeMs:J

    .line 992
    iput-wide p3, p0, Landroidx/media2/MediaController2ImplBase;->mPositionMs:J

    .line 993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroidx/media2/MediaController2ImplBase$12;

    invoke-direct {p2, p0, p5, p6}, Landroidx/media2/MediaController2ImplBase$12;-><init>(Landroidx/media2/MediaController2ImplBase;J)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 993
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyShuffleModeChanges(I)V
    .locals 2

    .line 975
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    iput p1, p0, Landroidx/media2/MediaController2ImplBase;->mShuffleMode:I

    .line 977
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$11;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$11;-><init>(Landroidx/media2/MediaController2ImplBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 977
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onAllowedCommandsChanged(Landroidx/media2/SessionCommandGroup2;)V
    .locals 2

    .line 1120
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$17;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$17;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/SessionCommandGroup2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onConnectedNotLocked(Landroidx/media2/IMediaSession2;Landroidx/media2/SessionCommandGroup2;ILandroidx/media2/MediaItem2;JJFJLandroidx/media2/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/IMediaSession2;",
            "Landroidx/media2/SessionCommandGroup2;",
            "I",
            "Landroidx/media2/MediaItem2;",
            "JJFJ",
            "Landroidx/media2/MediaController2$PlaybackInfo;",
            "II",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    .line 1044
    sget-boolean v3, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MC2ImplBase"

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onConnectedNotLocked sessionBinder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", allowedCommands="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_6

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1056
    :try_start_0
    iget-object v4, v1, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1057
    :try_start_1
    iget-boolean v5, v1, Landroidx/media2/MediaController2ImplBase;->mIsReleased:Z

    if-eqz v5, :cond_2

    .line 1058
    monitor-exit v4

    return-void

    .line 1060
    :cond_2
    iget-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string v0, "MC2ImplBase"

    const-string v2, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    .line 1061
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1064
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    iget-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->close()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto :goto_0

    .line 1066
    :cond_3
    :try_start_3
    iput-object v2, v1, Landroidx/media2/MediaController2ImplBase;->mAllowedCommands:Landroidx/media2/SessionCommandGroup2;

    move v5, p3

    .line 1067
    iput v5, v1, Landroidx/media2/MediaController2ImplBase;->mPlayerState:I

    move-object v5, p4

    .line 1068
    iput-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mCurrentMediaItem:Landroidx/media2/MediaItem2;

    move-wide v7, p5

    .line 1069
    iput-wide v7, v1, Landroidx/media2/MediaController2ImplBase;->mPositionEventTimeMs:J

    move-wide/from16 v7, p7

    .line 1070
    iput-wide v7, v1, Landroidx/media2/MediaController2ImplBase;->mPositionMs:J

    move/from16 v5, p9

    .line 1071
    iput v5, v1, Landroidx/media2/MediaController2ImplBase;->mPlaybackSpeed:F

    move-wide/from16 v7, p10

    .line 1072
    iput-wide v7, v1, Landroidx/media2/MediaController2ImplBase;->mBufferedPositionMs:J

    move-object/from16 v5, p12

    .line 1073
    iput-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    move/from16 v5, p13

    .line 1074
    iput v5, v1, Landroidx/media2/MediaController2ImplBase;->mRepeatMode:I

    move/from16 v5, p14

    .line 1075
    iput v5, v1, Landroidx/media2/MediaController2ImplBase;->mShuffleMode:I

    move-object/from16 v5, p15

    .line 1076
    iput-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mPlaylist:Ljava/util/List;

    move-object/from16 v5, p16

    .line 1077
    iput-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 1078
    iput-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1082
    :try_start_4
    iget-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    invoke-interface {v0}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v5, v1, Landroidx/media2/MediaController2ImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1090
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1091
    :try_start_6
    iget-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroidx/media2/MediaController2ImplBase$15;

    invoke-direct {v4, p0, p2}, Landroidx/media2/MediaController2ImplBase$15;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/SessionCommandGroup2;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catch_0
    move-exception v0

    .line 1084
    :try_start_7
    sget-boolean v2, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MC2ImplBase"

    const-string v5, "Session died too early."

    .line 1085
    invoke-static {v2, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1088
    :cond_4
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1101
    iget-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->close()V

    return-void

    :catchall_1
    move-exception v0

    .line 1090
    :goto_0
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_5

    .line 1101
    iget-object v2, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v2}, Landroidx/media2/MediaController2;->close()V

    :cond_5
    throw v0

    :cond_6
    :goto_1
    iget-object v0, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->close()V

    return-void
.end method

.method onCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1108
    sget-boolean v0, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCustomCommand cmd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MC2ImplBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$16;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/MediaController2ImplBase$16;-><init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onCustomLayoutChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/MediaController2ImplBase$18;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaController2ImplBase$18;-><init>(Landroidx/media2/MediaController2ImplBase;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x2

    .line 238
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->pause(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 243
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->play(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 231
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x16

    .line 324
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->playFromMediaId(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 330
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x18

    .line 338
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->playFromSearch(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 343
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x17

    .line 351
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->playFromUri(Landroidx/media2/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 356
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 3

    const/4 v0, 0x6

    .line 262
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->prepare(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 267
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x19

    .line 363
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->prepareFromMediaId(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 369
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x1b

    .line 376
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->prepareFromSearch(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 382
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x1a

    .line 390
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->prepareFromUri(Landroidx/media2/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 395
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    const/16 v0, 0x10

    .line 606
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 610
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 609
    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->removePlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 612
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    const/16 v0, 0x11

    .line 620
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 624
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 623
    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->replacePlaylistItem(Landroidx/media2/IMediaController2;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 626
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x3

    .line 250
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->reset(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 255
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public rewind()V
    .locals 3

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->rewind(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 292
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const/16 v0, 0x9

    .line 302
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->seekTo(Landroidx/media2/IMediaController2;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 307
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "position shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selectRoute(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x26

    .line 747
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->selectRoute(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 752
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 537
    invoke-virtual {p0, p1}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(Landroidx/media2/SessionCommand2;)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 541
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 540
    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media2/IMediaSession2;->sendCustomCommand(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string p3, "Cannot connect to the service or the session is gone"

    .line 543
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    const/16 v0, 0x27

    .line 479
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->setPlaybackSpeed(Landroidx/media2/IMediaController2;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 484
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
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

    const/16 v0, 0x13

    .line 557
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 561
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p2}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 560
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->setPlaylist(Landroidx/media2/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 564
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setRating(Ljava/lang/String;Landroidx/media2/Rating2;)V
    .locals 2

    .line 521
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 526
    :try_start_1
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 527
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 526
    invoke-interface {v1, v0, p1, p2}, Landroidx/media2/IMediaSession2;->setRating(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 529
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 523
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 2

    const/16 v0, 0xe

    .line 688
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->setRepeatMode(Landroidx/media2/IMediaController2;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 693
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    const/16 v0, 0xd

    .line 708
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->setShuffleMode(Landroidx/media2/IMediaController2;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 713
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setVolumeTo(II)V
    .locals 2

    const/16 v0, 0xa

    .line 402
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->setVolumeTo(Landroidx/media2/IMediaController2;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 407
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
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
    .locals 3

    const/4 v0, 0x4

    .line 654
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->skipToNextItem(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 659
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    const/16 v0, 0xc

    .line 667
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    .line 671
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 670
    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->skipToPlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 673
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public skipToPreviousItem()V
    .locals 3

    const/4 v0, 0x5

    .line 641
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->skipToPreviousItem(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 646
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeRoutesInfo()V
    .locals 3

    const/16 v0, 0x24

    .line 721
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->subscribeRoutesInfo(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 726
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unsubscribeRoutesInfo()V
    .locals 3

    const/16 v0, 0x25

    .line 734
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1}, Landroidx/media2/IMediaSession2;->unsubscribeRoutesInfo(Landroidx/media2/IMediaController2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Cannot connect to the service or the session is gone"

    .line 739
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 2

    const/16 v0, 0x15

    .line 571
    invoke-virtual {p0, v0}, Landroidx/media2/MediaController2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 575
    :goto_0
    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->updatePlaylistMetadata(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 578
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
