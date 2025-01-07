.class Landroidx/media2/MediaSessionLegacyStub;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCbForAll;,
        Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCb;,
        Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionLegacyStub"

.field static final sCommandsForOnCommandRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/SessionCommand2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mControllerInfoForAll:Landroidx/media2/MediaSession2$ControllerInfo;

.field final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

.field final mSessionManager:Landroidx/media/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MediaSessionLegacyStub"

    const/4 v1, 0x3

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/MediaSessionLegacyStub;->DEBUG:Z

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-direct {v0}, Landroidx/media2/SessionCommandGroup2$Builder;-><init>()V

    .line 65
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaybackCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaylistCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllVolumeCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->build()Landroidx/media2/SessionCommandGroup2;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2;->getCommands()Ljava/util/Set;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/SessionCommand2;

    .line 71
    sget-object v2, Landroidx/media2/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mLock:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 86
    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 88
    new-instance v0, Landroidx/media2/MediaSession2$ControllerInfo;

    new-instance v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.media.session.MediaController"

    invoke-direct {v1, v4, v2, v3}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCbForAll;

    invoke-direct {v2, p0}, Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCbForAll;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    iput-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mControllerInfoForAll:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 93
    new-instance v0, Landroidx/media2/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media2/ConnectedControllersManager;-><init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V

    iput-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-void
.end method

.method private onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommandInternal(Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommand(Landroidx/media2/SessionCommand2;Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommandInternal(Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommandInternal(Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
    .locals 11

    .line 459
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 464
    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_1

    .line 472
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    invoke-virtual {v2, v0}, Landroidx/media2/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 476
    :cond_2
    new-instance v2, Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v3, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 478
    invoke-virtual {v3, v0}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v3

    new-instance v4, Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCb;

    invoke-direct {v4, p0, v0}, Landroidx/media2/MediaSessionLegacyStub$ControllerLegacyCb;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    invoke-direct {v2, v0, v3, v4}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    goto :goto_0

    .line 482
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/MediaSessionLegacyStub$24;

    move-object v5, v1

    move-object v6, p0

    move-object v8, p1

    move v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Landroidx/media2/MediaSessionLegacyStub$24;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 482
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-object v0
.end method

.method getControllersForAll()Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mControllerInfoForAll:Landroidx/media2/MediaSession2$ControllerInfo;

    return-object v0
.end method

.method handleCommandOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 514
    iget-object p3, p0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 517
    :cond_0
    sget-object p3, Landroidx/media2/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/SessionCommand2;

    goto :goto_0

    .line 519
    :cond_1
    iget-object p2, p0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    invoke-virtual {p2, p1, p3}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 522
    :cond_2
    sget-object p2, Landroidx/media2/MediaSessionLegacyStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/SessionCommand2;

    :goto_0
    const-string p3, "MediaSessionLegacyStub"

    if-eqz p2, :cond_4

    .line 525
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 526
    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaSession2$SessionCallback;->onCommandRequest(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 529
    sget-boolean p4, Landroidx/media2/MediaSessionLegacyStub;->DEBUG:Z

    if-eqz p4, :cond_3

    .line 530
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Command ("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") from "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was rejected by "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 537
    :cond_4
    :try_start_0
    invoke-interface {p4, p1}, Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;->run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 544
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$21;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaSessionLegacyStub$21;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V

    const/16 p1, 0xf

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$22;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/MediaSessionLegacyStub$22;-><init>(Landroidx/media2/MediaSessionLegacyStub;ILandroid/support/v4/media/MediaDescriptionCompat;)V

    const/16 p1, 0xf

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Landroidx/media2/SessionCommand2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    new-instance p1, Landroidx/media2/MediaSessionLegacyStub$1;

    invoke-direct {p1, p0, v0, p2, p3}, Landroidx/media2/MediaSessionLegacyStub$1;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, v0, p1}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(Landroidx/media2/SessionCommand2;Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 306
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$16;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$16;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 223
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$10;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$10;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 168
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$6;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$6;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$7;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$7;-><init>(Landroidx/media2/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x16

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$8;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$8;-><init>(Landroidx/media2/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x18

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$9;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$9;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p1, 0x17

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPrepare()V
    .locals 2

    .line 113
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$2;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$2;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$3;-><init>(Landroidx/media2/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x19

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$4;-><init>(Landroidx/media2/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p1, 0x1b

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$5;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$5;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p1, 0x1a

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$23;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaSessionLegacyStub$23;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V

    const/16 p1, 0x10

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 318
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$17;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$17;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 253
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$12;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$12;-><init>(Landroidx/media2/MediaSessionLegacyStub;J)V

    const/16 p1, 0x9

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    new-instance p2, Landroidx/media2/MediaSessionLegacyStub$18;

    invoke-direct {p2, p0, p1}, Landroidx/media2/MediaSessionLegacyStub$18;-><init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/support/v4/media/RatingCompat;)V

    const/16 p1, 0x1c

    invoke-direct {p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 1

    .line 365
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$19;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaSessionLegacyStub$19;-><init>(Landroidx/media2/MediaSessionLegacyStub;I)V

    const/16 p1, 0xe

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 1

    .line 376
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$20;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaSessionLegacyStub$20;-><init>(Landroidx/media2/MediaSessionLegacyStub;I)V

    const/16 p1, 0xd

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 263
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$13;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$13;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 274
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$14;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$14;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    .line 285
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$15;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSessionLegacyStub$15;-><init>(Landroidx/media2/MediaSessionLegacyStub;J)V

    const/16 p1, 0xc

    invoke-direct {p0, p1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 236
    new-instance v0, Landroidx/media2/MediaSessionLegacyStub$11;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSessionLegacyStub$11;-><init>(Landroidx/media2/MediaSessionLegacyStub;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroidx/media2/MediaSessionLegacyStub;->onSessionCommand(ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method
