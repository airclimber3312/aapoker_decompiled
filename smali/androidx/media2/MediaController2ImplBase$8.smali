.class Landroidx/media2/MediaController2ImplBase$8;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->notifyPlaylistMetadataChanges(Landroidx/media2/MediaMetadata2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$metadata:Landroidx/media2/MediaMetadata2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    .line 933
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$8;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$8;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 936
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$8;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$8;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$8;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$8;->val$metadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onPlaylistMetadataChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
