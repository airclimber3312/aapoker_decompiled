.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;

    iget-object v0, v0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    .line 1357
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;

    iget-object v1, v1, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    .line 1356
    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2$ControllerCb;->onPlaylistChanged(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
