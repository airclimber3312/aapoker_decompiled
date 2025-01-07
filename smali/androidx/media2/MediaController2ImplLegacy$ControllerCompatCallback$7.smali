.class Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->onQueueChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

.field final synthetic val$playlist:Ljava/util/List;

.field final synthetic val$playlistMetadata:Landroidx/media2/MediaMetadata2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlistMetadata:Landroidx/media2/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1122
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlist:Ljava/util/List;

    iget-object v3, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$7;->val$playlistMetadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaController2$ControllerCallback;->onPlaylistChanged(Landroidx/media2/MediaController2;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
