.class Landroidx/media2/MediaPlaylistAgent$1;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlaylistAgent;->notifyPlaylistChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlaylistAgent;

.field final synthetic val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

.field final synthetic val$metadata:Landroidx/media2/MediaMetadata2;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroidx/media2/MediaPlaylistAgent$1;->this$0:Landroidx/media2/MediaPlaylistAgent;

    iput-object p2, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    iput-object p3, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$playlist:Ljava/util/List;

    iput-object p4, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 168
    iget-object v0, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent$1;->this$0:Landroidx/media2/MediaPlaylistAgent;

    iget-object v2, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$playlist:Ljava/util/List;

    iget-object v3, p0, Landroidx/media2/MediaPlaylistAgent$1;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;->onPlaylistChanged(Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
