.class Landroidx/media2/MediaSession2Stub$1;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->onSessionCommandInternal(Landroidx/media2/IMediaController2;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$commandCode:I

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$runnable:Landroidx/media2/MediaSession2Stub$SessionRunnable;

.field final synthetic val$sessionCommand:Landroidx/media2/SessionCommand2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSession2Stub$SessionRunnable;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$1;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    iput p4, p0, Landroidx/media2/MediaSession2Stub$1;->val$commandCode:I

    iput-object p5, p0, Landroidx/media2/MediaSession2Stub$1;->val$runnable:Landroidx/media2/MediaSession2Stub$SessionRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 133
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/ConnectedControllersManager;->isConnected(Landroidx/media2/MediaSession2$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$1;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 142
    :cond_1
    sget-object v0, Landroidx/media2/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$1;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    invoke-virtual {v1}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/SessionCommand2;

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget v2, p0, Landroidx/media2/MediaSession2Stub$1;->val$commandCode:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 147
    :cond_3
    sget-object v0, Landroidx/media2/MediaSession2Stub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/MediaSession2Stub$1;->val$commandCode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/SessionCommand2;

    :goto_0
    const-string v1, "MediaSession2Stub"

    if-eqz v0, :cond_4

    .line 150
    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v2, v2, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v3, v3, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 151
    invoke-interface {v3}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 150
    invoke-virtual {v2, v3, v4, v0}, Landroidx/media2/MediaSession2$SessionCallback;->onCommandRequest(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Command ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was rejected by "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$1;->val$runnable:Landroidx/media2/MediaSession2Stub$SessionRunnable;

    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-interface {v0, v2}, Landroidx/media2/MediaSession2Stub$SessionRunnable;->run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/media2/MediaSession2Stub$1;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v3}, Landroidx/media2/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
