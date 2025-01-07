.class final Landroidx/media2/MediaSession2Stub$Controller2Cb;
.super Landroidx/media2/MediaSession2$ControllerCb;
.source "MediaSession2Stub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Controller2Cb"
.end annotation


# instance fields
.field private final mIControllerCallback:Landroidx/media2/IMediaController2;

.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/IMediaController2;)V
    .locals 0

    .line 877
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    invoke-direct {p0}, Landroidx/media2/MediaSession2$ControllerCb;-><init>()V

    .line 878
    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    return-void
.end method


# virtual methods
.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 882
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0}, Landroidx/media2/IMediaController2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method onAllowedCommandsChanged(Landroidx/media2/SessionCommandGroup2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 899
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 898
    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onAllowedCommandsChanged(Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method onBufferingStateChanged(Landroidx/media2/MediaItem2;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 925
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 924
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/IMediaController2;->onBufferingStateChanged(Landroidx/versionedparcelable/ParcelImpl;IJ)V

    return-void
.end method

.method onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/IMediaController2;->onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method onCurrentMediaItemChanged(Landroidx/media2/MediaItem2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 943
    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    .line 942
    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onCurrentMediaItemChanged(Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method onCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/IMediaController2;->onCustomCommand(Landroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method onCustomLayoutChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 888
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertCommandButtonListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 887
    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onCustomLayoutChanged(Ljava/util/List;)V

    return-void
.end method

.method onDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0}, Landroidx/media2/IMediaController2;->onDisconnected()V

    return-void
.end method

.method onError(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1, p2}, Landroidx/media2/IMediaController2;->onError(ILandroid/os/Bundle;)V

    return-void
.end method

.method onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    invoke-static {p4}, Landroidx/media2/MediaUtils2;->convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1003
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/IMediaController2;->onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method onGetItemDone(Ljava/lang/String;Landroidx/media2/MediaItem2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 1009
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 1008
    invoke-interface {v0, p1, p2}, Landroidx/media2/IMediaController2;->onGetItemDone(Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/IMediaController2;->onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {p4}, Landroidx/media2/MediaUtils2;->convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1022
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/IMediaController2;->onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method onPlaybackInfoChanged(Landroidx/media2/MediaController2$PlaybackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/ParcelImpl;

    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onPlaybackInfoChanged(Landroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method

.method onPlaybackSpeedChanged(JJF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/IMediaController2;->onPlaybackSpeedChanged(JJF)V

    return-void
.end method

.method onPlayerStateChanged(JJI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media2/IMediaController2;->onPlayerStateChanged(JJI)V

    return-void
.end method

.method onPlaylistChanged(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    .line 950
    invoke-virtual {p0}, Landroidx/media2/MediaSession2Stub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 949
    invoke-virtual {v0, v1}, Landroidx/media2/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 951
    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    const/16 v2, 0x12

    invoke-virtual {v1, v0, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    .line 954
    invoke-static {p1}, Landroidx/media2/MediaUtils2;->convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 955
    :cond_0
    invoke-virtual {p2}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 953
    :goto_0
    invoke-interface {v0, p1, p2}, Landroidx/media2/IMediaController2;->onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1

    .line 956
    :cond_1
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 958
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-virtual {p2}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/IMediaController2;->onPlaylistMetadataChanged(Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method

.method onPlaylistMetadataChanged(Landroidx/media2/MediaMetadata2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    .line 965
    invoke-virtual {p0}, Landroidx/media2/MediaSession2Stub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 964
    invoke-virtual {v0, v1}, Landroidx/media2/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 966
    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mConnectedControllersManager:Landroidx/media2/ConnectedControllersManager;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-virtual {p1}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onPlaylistMetadataChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method onRepeatModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onRepeatModeChanged(I)V

    return-void
.end method

.method onRoutesInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onRoutesInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/IMediaController2;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method onSeekCompleted(JJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroidx/media2/IMediaController2;->onSeekCompleted(JJJ)V

    return-void
.end method

.method onShuffleModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$Controller2Cb;->mIControllerCallback:Landroidx/media2/IMediaController2;

    invoke-interface {v0, p1}, Landroidx/media2/IMediaController2;->onShuffleModeChanged(I)V

    return-void
.end method
