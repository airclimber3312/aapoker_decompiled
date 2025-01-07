.class Landroidx/media2/MediaSession2ImplBase$9;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->notifyAgentUpdatedNotLocked(Landroidx/media2/MediaPlaylistAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$newPlaylist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$9;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$9;->val$newPlaylist:Ljava/util/List;

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

    .line 1058
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$9;->val$newPlaylist:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$9;->this$0:Landroidx/media2/MediaSession2ImplBase;

    .line 1059
    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    .line 1058
    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2$ControllerCb;->onPlaylistChanged(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
