.class Landroidx/media2/MediaSessionService2LegacyStub;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "MediaSessionService2LegacyStub.java"


# instance fields
.field private final mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mManager:Landroidx/media/MediaSessionManager;

.field private final mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaSession2$MediaSession2Impl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSessionService2LegacyStub;->attachToBaseContext(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Landroidx/media2/MediaSessionService2LegacyStub;->onCreate()V

    .line 47
    invoke-virtual {p0, p3}, Landroidx/media2/MediaSessionService2LegacyStub;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 48
    invoke-static {p1}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mManager:Landroidx/media/MediaSessionManager;

    .line 49
    iput-object p2, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 50
    new-instance p1, Landroidx/media2/ConnectedControllersManager;

    invoke-direct {p1, p2}, Landroidx/media2/ConnectedControllersManager;-><init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V

    iput-object p1, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-void
.end method


# virtual methods
.method createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 3

    .line 83
    new-instance v0, Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v1, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mManager:Landroidx/media/MediaSessionManager;

    invoke-virtual {v1, p1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/MediaSession2$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V

    return-object v0
.end method

.method getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    return-object v0
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/media2/MediaSessionService2LegacyStub;->getCurrentBrowserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSessionService2LegacyStub;->createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object p2

    .line 67
    iget-object p3, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p3}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object p3

    iget-object v0, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 68
    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v0

    .line 67
    invoke-virtual {p3, v0, p2}, Landroidx/media2/MediaSession2$SessionCallback;->onConnect(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)Landroidx/media2/SessionCommandGroup2;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSessionService2LegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    .line 74
    sget-object p1, Landroidx/media2/MediaUtils2;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
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

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
