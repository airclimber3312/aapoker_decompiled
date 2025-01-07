.class Landroidx/media2/ConnectedControllersManager$1;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/ConnectedControllersManager;->notifyDisconnected(Landroidx/media2/MediaSession2$ControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/ConnectedControllersManager;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;


# direct methods
.method constructor <init>(Landroidx/media2/ConnectedControllersManager;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroidx/media2/ConnectedControllersManager$1;->this$0:Landroidx/media2/ConnectedControllersManager;

    iput-object p2, p0, Landroidx/media2/ConnectedControllersManager$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager$1;->this$0:Landroidx/media2/ConnectedControllersManager;

    iget-object v0, v0, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager$1;->this$0:Landroidx/media2/ConnectedControllersManager;

    iget-object v0, v0, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager$1;->this$0:Landroidx/media2/ConnectedControllersManager;

    iget-object v1, v1, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/ConnectedControllersManager$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaSession2$SessionCallback;->onDisconnected(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V

    return-void
.end method
