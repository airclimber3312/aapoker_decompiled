.class Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

.field final synthetic val$bufferingState:I

.field final synthetic val$currentItem:Landroidx/media2/MediaItem2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;Landroidx/media2/MediaItem2;I)V
    .locals 0

    .line 1093
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->val$currentItem:Landroidx/media2/MediaItem2;

    iput p3, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->val$bufferingState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1096
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->val$currentItem:Landroidx/media2/MediaItem2;

    iget v3, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$6;->val$bufferingState:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaController2$ControllerCallback;->onBufferingStateChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaItem2;I)V

    return-void
.end method
