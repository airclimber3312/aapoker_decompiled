.class Landroidx/media2/MediaLibraryService2LegacyStub;
.super Landroidx/media2/MediaSessionService2LegacyStub;
.source "MediaLibraryService2LegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;,
        Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;,
        Landroidx/media2/MediaLibraryService2LegacyStub$BaseBrowserLegacyCb;,
        Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;,
        Landroidx/media2/MediaLibraryService2LegacyStub$CustomActionResultReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MLS2LegacyStub"


# instance fields
.field private final mControllersForAll:Landroidx/media2/MediaSession2$ControllerInfo;

.field final mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaSessionService2LegacyStub;-><init>(Landroid/content/Context;Landroidx/media2/MediaSession2$MediaSession2Impl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 64
    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 65
    new-instance p1, Landroidx/media2/MediaSession2$ControllerInfo;

    new-instance p2, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "android.media.session.MediaController"

    invoke-direct {p2, v1, p3, v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    new-instance p3, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;

    invoke-direct {p3, p0}, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mControllersForAll:Landroidx/media2/MediaSession2$ControllerInfo;

    return-void
.end method

.method private getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentBrowserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 3

    .line 288
    new-instance v0, Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mManager:Landroidx/media/MediaSessionManager;

    .line 289
    invoke-virtual {v1, p1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v1

    new-instance v2, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    invoke-direct {v2, p0, p1}, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    return-object v0
.end method

.method getControllersForAll()Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mControllersForAll:Landroidx/media2/MediaSession2$ControllerInfo;

    return-object v0
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 261
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 263
    :cond_0
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v3

    .line 264
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/MediaLibraryService2LegacyStub$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaLibraryService2LegacyStub$6;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Ljava/lang/String;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 1

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/MediaSessionService2LegacyStub;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object p2

    const/16 v0, 0x1f

    invoke-virtual {p2, p1, v0}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    iget-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {p2}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object p2

    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 91
    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    .line 90
    invoke-virtual {p2, v0, p1, p3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetLibraryRoot(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)Landroidx/media2/MediaLibraryService2$LibraryRoot;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {p1}, Landroidx/media2/MediaLibraryService2$LibraryRoot;->getRootId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/media2/MediaLibraryService2$LibraryRoot;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2

    .line 100
    :cond_1
    sget-object p1, Landroidx/media2/MediaUtils2;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 155
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v2

    .line 156
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/MediaLibraryService2LegacyStub$3;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaLibraryService2LegacyStub$3;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 201
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 202
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaLibraryService2LegacyStub$4;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media2/MediaLibraryService2LegacyStub$4;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v0

    instance-of v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 236
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/MediaLibraryService2LegacyStub$5;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaLibraryService2LegacyStub$5;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 106
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaLibraryService2LegacyStub$1;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/media2/MediaLibraryService2LegacyStub$1;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getCurrentController()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 129
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaLibraryService2LegacyStub$2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media2/MediaLibraryService2LegacyStub$2;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
