.class public abstract Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlaylistAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlaylistEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged(Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public onPlaylistMetadataChanged(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 0

    return-void
.end method
