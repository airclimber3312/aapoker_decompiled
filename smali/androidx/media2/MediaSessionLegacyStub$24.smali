.class Landroidx/media2/MediaSessionLegacyStub$24;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onSessionCommandInternal(Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$commandCode:I

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$runnable:Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;

.field final synthetic val$sessionCommand:Landroidx/media2/SessionCommand2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V
    .locals 0

    .line 483
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    iput p4, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$commandCode:I

    iput-object p5, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$runnable:Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 486
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/ConnectedControllersManager;->isConnected(Landroidx/media2/MediaSession2$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 491
    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 490
    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaSession2$SessionCallback;->onConnect(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)Landroidx/media2/SessionCommandGroup2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 494
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/MediaSession2$ControllerCb;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaSessionLegacyStub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 501
    invoke-virtual {v2}, Landroidx/media2/MediaSession2$ControllerInfo;->getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 500
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media2/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    .line 503
    :cond_2
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    iget v3, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$commandCode:I

    iget-object v4, p0, Landroidx/media2/MediaSessionLegacyStub$24;->val$runnable:Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaSessionLegacyStub;->handleCommandOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    :cond_3
    :goto_0
    return-void
.end method
