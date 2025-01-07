.class Landroidx/media2/MediaSession2Stub$22;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->updatePlaylistMetadata(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$metadata:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V
    .locals 0

    .line 575
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$22;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$22;->val$metadata:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$22;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$22;->val$metadata:Landroid/os/Bundle;

    .line 579
    invoke-static {v0}, Landroidx/media2/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/MediaMetadata2;

    move-result-object v0

    .line 578
    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2;->updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
