.class public abstract Landroidx/media2/MediaController2$ControllerCallback;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ControllerCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedCommandsChanged(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommandGroup2;)V
    .locals 0

    return-void
.end method

.method public onBufferingStateChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaItem2;I)V
    .locals 0

    return-void
.end method

.method public onConnected(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommandGroup2;)V
    .locals 0

    return-void
.end method

.method public onCurrentMediaItemChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaItem2;)V
    .locals 0

    return-void
.end method

.method public onCustomCommand(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onCustomLayoutChanged(Landroidx/media2/MediaController2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaController2;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDisconnected(Landroidx/media2/MediaController2;)V
    .locals 0

    return-void
.end method

.method public onError(Landroidx/media2/MediaController2;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlaybackInfoChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaController2$PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/MediaController2;F)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/MediaController2;I)V
    .locals 0

    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/MediaController2;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaController2;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/MediaController2;I)V
    .locals 0

    return-void
.end method

.method public onRoutesInfoChanged(Landroidx/media2/MediaController2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaController2;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/MediaController2;J)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/MediaController2;I)V
    .locals 0

    return-void
.end method
