.class public abstract Landroidx/media2/MediaSession2$SessionCallback;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingStateChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;I)V
    .locals 0

    return-void
.end method

.method public onCommandRequest(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onConnect(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)Landroidx/media2/SessionCommandGroup2;
    .locals 0

    .line 921
    new-instance p1, Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-direct {p1}, Landroidx/media2/SessionCommandGroup2$Builder;-><init>()V

    .line 922
    invoke-virtual {p1}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPredefinedCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/SessionCommandGroup2$Builder;->build()Landroidx/media2/SessionCommandGroup2;

    move-result-object p1

    return-object p1
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onCustomCommand(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onFastForward(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onMediaPrepared(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onPlayFromMediaId(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromSearch(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromUri(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;F)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;I)V
    .locals 0

    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2;",
            "Landroidx/media2/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromMediaId(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromSearch(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromUri(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method

.method public onRewind(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;J)V
    .locals 0

    return-void
.end method

.method public onSelectRoute(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroidx/media2/Rating2;)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method

.method public onSubscribeRoutesInfo(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribeRoutesInfo(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0

    return-void
.end method
