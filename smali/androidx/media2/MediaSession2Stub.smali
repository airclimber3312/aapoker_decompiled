.class Landroidx/media2/MediaSession2Stub;
.super Landroidx/media2/IMediaSession2$Stub;
.source "MediaSession2Stub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaSession2Stub$Controller2Cb;,
        Landroidx/media2/MediaSession2Stub$SessionRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaSession2Stub"

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
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

.field final mSessionManager:Landroidx/media/MediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-direct {v0}, Landroidx/media2/SessionCommandGroup2$Builder;-><init>()V

    .line 77
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaybackCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaylistCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllVolumeCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2$Builder;->build()Landroidx/media2/SessionCommandGroup2;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/media2/SessionCommandGroup2;->getCommands()Ljava/util/Set;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/SessionCommand2;

    .line 83
    sget-object v2, Landroidx/media2/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroidx/media2/IMediaSession2$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaSession2Stub;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    .line 101
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 102
    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaSession2Stub;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaSession2Stub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 104
    new-instance v0, Landroidx/media2/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media2/ConnectedControllersManager;-><init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V

    iput-object v0, p0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-void
.end method

.method private onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    instance-of v0, v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/MediaSession2Stub;->onSessionCommandInternal(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MediaSession2 cannot handle MediaLibrarySession command"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/MediaSession2Stub;->onSessionCommandInternal(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommand(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;Landroidx/media2/MediaSession2Stub$SessionRunnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media2/MediaSession2Stub;->onSessionCommandInternal(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method private onSessionCommandInternal(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V
    .locals 7

    .line 125
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1}, Landroidx/media2/IMediaController2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 125
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media2/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v3

    .line 127
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroidx/media2/MediaSession2Stub$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/MediaSession2Stub$1;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addPlaylistItem(Landroidx/media2/IMediaController2;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    .line 587
    new-instance v0, Landroidx/media2/MediaSession2Stub$23;

    invoke-direct {v0, p0, p3, p2}, Landroidx/media2/MediaSession2Stub$23;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/versionedparcelable/ParcelImpl;I)V

    const/16 p2, 0xf

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public adjustVolume(Landroidx/media2/IMediaController2;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 312
    new-instance v0, Landroidx/media2/MediaSession2Stub$4;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$4;-><init>(Landroidx/media2/MediaSession2Stub;II)V

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public connect(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 193
    new-instance p2, Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub;->mSessionManager:Landroidx/media/MediaSessionManager;

    .line 194
    invoke-virtual {v1, v0}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v1

    new-instance v2, Landroidx/media2/MediaSession2Stub$Controller2Cb;

    invoke-direct {v2, p0, p1}, Landroidx/media2/MediaSession2Stub$Controller2Cb;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/IMediaController2;)V

    invoke-direct {p2, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    .line 196
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/MediaSession2Stub$2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/media2/MediaSession2Stub$2;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/IMediaController2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fastForward(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 370
    new-instance v0, Landroidx/media2/MediaSession2Stub$9;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$9;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public getChildren(Landroidx/media2/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 772
    new-instance v6, Landroidx/media2/MediaSession2Stub$36;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2Stub$36;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V

    const/16 p2, 0x1d

    invoke-direct {p0, p1, p2, v6}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-object v0
.end method

.method public getItem(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 756
    new-instance v0, Landroidx/media2/MediaSession2Stub$35;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$35;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;)V

    const/16 p2, 0x1e

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public getLibraryRoot(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 744
    new-instance v0, Landroidx/media2/MediaSession2Stub$34;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$34;-><init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x1f

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method getLibrarySession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;
    .locals 2

    .line 735
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    instance-of v1, v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    if-eqz v1, :cond_0

    .line 738
    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    return-object v0

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session cannot be casted to library session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSearchResult(Landroidx/media2/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    .line 813
    new-instance v6, Landroidx/media2/MediaSession2Stub$38;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2Stub$38;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V

    const/16 p2, 0x20

    invoke-direct {p0, p1, p2, v6}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public pause(Landroidx/media2/IMediaController2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 337
    new-instance v0, Landroidx/media2/MediaSession2Stub$6;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$6;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public play(Landroidx/media2/IMediaController2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 326
    new-instance v0, Landroidx/media2/MediaSession2Stub$5;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$5;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromMediaId(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 505
    new-instance v0, Landroidx/media2/MediaSession2Stub$18;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$18;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x16

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromSearch(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 488
    new-instance v0, Landroidx/media2/MediaSession2Stub$17;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$17;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x18

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public playFromUri(Landroidx/media2/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 471
    new-instance v0, Landroidx/media2/MediaSession2Stub$16;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$16;-><init>(Landroidx/media2/MediaSession2Stub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p2, 0x17

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepare(Landroidx/media2/IMediaController2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 359
    new-instance v0, Landroidx/media2/MediaSession2Stub$8;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$8;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromMediaId(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 453
    new-instance v0, Landroidx/media2/MediaSession2Stub$15;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$15;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x19

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromSearch(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 435
    new-instance v0, Landroidx/media2/MediaSession2Stub$14;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$14;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x1b

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public prepareFromUri(Landroidx/media2/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 418
    new-instance v0, Landroidx/media2/MediaSession2Stub$13;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$13;-><init>(Landroidx/media2/MediaSession2Stub;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public release(Landroidx/media2/IMediaController2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/media2/IMediaController2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media2/ConnectedControllersManager;->removeController(Ljava/lang/Object;)V

    return-void
.end method

.method public removePlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    .line 602
    new-instance v0, Landroidx/media2/MediaSession2Stub$24;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$24;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/versionedparcelable/ParcelImpl;)V

    const/16 p2, 0x10

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public replacePlaylistItem(Landroidx/media2/IMediaController2;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    .line 616
    new-instance v0, Landroidx/media2/MediaSession2Stub$25;

    invoke-direct {v0, p0, p3, p2}, Landroidx/media2/MediaSession2Stub$25;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/versionedparcelable/ParcelImpl;I)V

    const/16 p2, 0x11

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public reset(Landroidx/media2/IMediaController2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 348
    new-instance v0, Landroidx/media2/MediaSession2Stub$7;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$7;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public rewind(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 382
    new-instance v0, Landroidx/media2/MediaSession2Stub$10;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$10;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public search(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 797
    new-instance v0, Landroidx/media2/MediaSession2Stub$37;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$37;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x21

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public seekTo(Landroidx/media2/IMediaController2;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroidx/media2/MediaSession2Stub$11;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$11;-><init>(Landroidx/media2/MediaSession2Stub;J)V

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public selectRoute(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    .locals 2

    .line 716
    invoke-static {p2}, Landroidx/media2/MediaUtils2;->isUnparcelableBundle(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Landroidx/media2/MediaSession2Stub$33;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$33;-><init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x25

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void

    .line 717
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected route bundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCustomCommand(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 405
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p2

    check-cast p2, Landroidx/media2/SessionCommand2;

    .line 406
    new-instance v0, Landroidx/media2/MediaSession2Stub$12;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/MediaSession2Stub$12;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;Landroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media2/IMediaController2;F)V
    .locals 1

    .line 545
    new-instance v0, Landroidx/media2/MediaSession2Stub$20;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$20;-><init>(Landroidx/media2/MediaSession2Stub;F)V

    const/16 p2, 0x27

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setPlaylist(Landroidx/media2/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/IMediaController2;",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 557
    new-instance v0, Landroidx/media2/MediaSession2Stub$21;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$21;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/util/List;Landroid/os/Bundle;)V

    const/16 p2, 0x13

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setRating(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    .line 523
    invoke-static {p3}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p3

    check-cast p3, Landroidx/media2/Rating2;

    .line 524
    new-instance v0, Landroidx/media2/MediaSession2Stub$19;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$19;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroidx/media2/Rating2;)V

    const/16 p2, 0x1c

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setRepeatMode(Landroidx/media2/IMediaController2;I)V
    .locals 1

    .line 670
    new-instance v0, Landroidx/media2/MediaSession2Stub$29;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$29;-><init>(Landroidx/media2/MediaSession2Stub;I)V

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setShuffleMode(Landroidx/media2/IMediaController2;I)V
    .locals 1

    .line 681
    new-instance v0, Landroidx/media2/MediaSession2Stub$30;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$30;-><init>(Landroidx/media2/MediaSession2Stub;I)V

    const/16 p2, 0xd

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public setVolumeTo(Landroidx/media2/IMediaController2;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroidx/media2/MediaSession2Stub$3;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$3;-><init>(Landroidx/media2/MediaSession2Stub;II)V

    const/16 p2, 0xa

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToNextItem(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 659
    new-instance v0, Landroidx/media2/MediaSession2Stub$28;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$28;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToPlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    .line 631
    new-instance v0, Landroidx/media2/MediaSession2Stub$26;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$26;-><init>(Landroidx/media2/MediaSession2Stub;Landroidx/versionedparcelable/ParcelImpl;)V

    const/16 p2, 0xc

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public skipToPreviousItem(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 648
    new-instance v0, Landroidx/media2/MediaSession2Stub$27;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$27;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public subscribe(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 841
    new-instance v0, Landroidx/media2/MediaSession2Stub$39;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaSession2Stub$39;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 p2, 0x22

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public subscribeRoutesInfo(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 692
    new-instance v0, Landroidx/media2/MediaSession2Stub$31;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$31;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/16 v1, 0x24

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public unsubscribe(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    .locals 1

    .line 856
    new-instance v0, Landroidx/media2/MediaSession2Stub$40;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$40;-><init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;)V

    const/16 p2, 0x23

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onBrowserCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public unsubscribeRoutesInfo(Landroidx/media2/IMediaController2;)V
    .locals 2

    .line 704
    new-instance v0, Landroidx/media2/MediaSession2Stub$32;

    invoke-direct {v0, p0}, Landroidx/media2/MediaSession2Stub$32;-><init>(Landroidx/media2/MediaSession2Stub;)V

    const/16 v1, 0x25

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method

.method public updatePlaylistMetadata(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    .locals 1

    .line 574
    new-instance v0, Landroidx/media2/MediaSession2Stub$22;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2Stub$22;-><init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V

    const/16 p2, 0x15

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/MediaSession2Stub;->onSessionCommand(Landroidx/media2/IMediaController2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V

    return-void
.end method
