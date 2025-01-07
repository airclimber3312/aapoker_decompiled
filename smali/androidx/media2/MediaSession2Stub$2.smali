.class Landroidx/media2/MediaSession2Stub$2;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->connect(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$caller:Landroidx/media2/IMediaController2;

.field final synthetic val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/IMediaController2;)V
    .locals 0

    .line 196
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$2;->val$caller:Landroidx/media2/IMediaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 199
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2Stub$Controller2Cb;

    .line 203
    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 204
    iget-object v2, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v2, v2, Landroidx/media2/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v3, v3, Landroidx/media2/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 210
    iget-object v2, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v2, v2, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v2

    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v3, v3, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 211
    invoke-interface {v3}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v3

    iget-object v4, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 210
    invoke-virtual {v2, v3, v4}, Landroidx/media2/MediaSession2$SessionCallback;->onConnect(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)Landroidx/media2/SessionCommandGroup2;

    move-result-object v2

    if-nez v2, :cond_2

    .line 215
    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v3}, Landroidx/media2/MediaSession2$ControllerInfo;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    const-string v3, "MediaSession2Stub"

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accepting connection, controllerInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " allowedCommands="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    .line 224
    new-instance v2, Landroidx/media2/SessionCommandGroup2;

    invoke-direct {v2}, Landroidx/media2/SessionCommandGroup2;-><init>()V

    .line 226
    :cond_3
    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v3, v3, Landroidx/media2/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 227
    :try_start_1
    iget-object v4, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v4, v4, Landroidx/media2/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v4, v4, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    iget-object v5, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v4, v0, v5, v2}, Landroidx/media2/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    .line 230
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlayerState()I

    move-result v6

    .line 239
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 240
    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/versionedparcelable/ParcelImpl;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 242
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCurrentPosition()J

    move-result-wide v10

    .line 243
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaybackSpeed()F

    move-result v12

    .line 244
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getBufferedPosition()J

    move-result-wide v13

    .line 245
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 246
    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/versionedparcelable/ParcelImpl;

    .line 247
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getRepeatMode()I

    move-result v16

    .line 248
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getShuffleMode()I

    move-result v17

    .line 249
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v19

    const/16 v0, 0x12

    .line 251
    invoke-virtual {v2, v0}, Landroidx/media2/SessionCommandGroup2;->hasCommand(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 253
    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaylist()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 255
    :goto_2
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 259
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 263
    :cond_5
    :try_start_2
    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->val$caller:Landroidx/media2/IMediaController2;

    iget-object v4, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    .line 264
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/versionedparcelable/ParcelImpl;

    .line 263
    invoke-interface/range {v3 .. v19}, Landroidx/media2/IMediaController2;->onConnected(Landroidx/media2/IMediaSession2;Landroidx/versionedparcelable/ParcelImpl;ILandroidx/versionedparcelable/ParcelImpl;JJFJLandroidx/versionedparcelable/ParcelImpl;IILjava/util/List;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 230
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 272
    :cond_6
    iget-object v2, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v3, v2, Landroidx/media2/MediaSession2Stub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_4
    iget-object v2, v1, Landroidx/media2/MediaSession2Stub$2;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v2, v2, Landroidx/media2/MediaSession2Stub;->mConnectingControllers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "MediaSession2Stub"

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rejecting connection, controllerInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/media2/MediaSession2Stub$2;->val$controllerInfo:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_5
    iget-object v0, v1, Landroidx/media2/MediaSession2Stub$2;->val$caller:Landroidx/media2/IMediaController2;

    invoke-interface {v0}, Landroidx/media2/IMediaController2;->onDisconnected()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 274
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 209
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
