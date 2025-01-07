.class Landroidx/media2/MediaPlaylistAgent$4;
.super Ljava/lang/Object;
.source "MediaPlaylistAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlaylistAgent;->notifyRepeatModeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlaylistAgent;

.field final synthetic val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V
    .locals 0

    .line 228
    iput-object p1, p0, Landroidx/media2/MediaPlaylistAgent$4;->this$0:Landroidx/media2/MediaPlaylistAgent;

    iput-object p2, p0, Landroidx/media2/MediaPlaylistAgent$4;->val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    iget-object v0, p0, Landroidx/media2/MediaPlaylistAgent$4;->val$callback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    iget-object v1, p0, Landroidx/media2/MediaPlaylistAgent$4;->this$0:Landroidx/media2/MediaPlaylistAgent;

    .line 232
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getRepeatMode()I

    move-result v2

    .line 231
    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;->onRepeatModeChanged(Landroidx/media2/MediaPlaylistAgent;I)V

    return-void
.end method
