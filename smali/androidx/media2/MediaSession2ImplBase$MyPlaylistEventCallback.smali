.class Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;
.super Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;
.source "MediaSession2ImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPlaylistEventCallback"
.end annotation


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/MediaSession2ImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;)V
    .locals 1

    .line 1505
    invoke-direct {p0}, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;-><init>()V

    .line 1506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPlaylistChanged(Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 1
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

    .line 1512
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2ImplBase;

    if-nez v0, :cond_0

    return-void

    .line 1516
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/MediaSession2ImplBase;->notifyPlaylistChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V
    .locals 1

    .line 1522
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2ImplBase;

    if-nez v0, :cond_0

    return-void

    .line 1526
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaSession2ImplBase;->notifyPlaylistMetadataChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 1

    .line 1531
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2ImplBase;

    if-nez v0, :cond_0

    return-void

    .line 1535
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaSession2ImplBase;->notifyRepeatModeChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;I)V

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 1

    .line 1540
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2ImplBase;

    if-nez v0, :cond_0

    return-void

    .line 1544
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaSession2ImplBase;->notifyShuffleModeChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;I)V

    return-void
.end method
