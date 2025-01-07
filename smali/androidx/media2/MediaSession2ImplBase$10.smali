.class Landroidx/media2/MediaSession2ImplBase$10;
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

.field final synthetic val$newMetadata:Landroidx/media2/MediaMetadata2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaMetadata2;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$10;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$10;->val$newMetadata:Landroidx/media2/MediaMetadata2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$10;->val$newMetadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2$ControllerCb;->onPlaylistMetadataChanged(Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
