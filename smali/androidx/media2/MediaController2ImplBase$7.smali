.class Landroidx/media2/MediaController2ImplBase$7;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->notifyPlaylistChanges(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$metadata:Landroidx/media2/MediaMetadata2;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    .line 918
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$7;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$7;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/MediaController2ImplBase$7;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 921
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$7;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$7;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$7;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$7;->val$playlist:Ljava/util/List;

    iget-object v3, p0, Landroidx/media2/MediaController2ImplBase$7;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaController2$ControllerCallback;->onPlaylistChanged(Landroidx/media2/MediaController2;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
