.class Landroidx/media2/MediaSession2Stub$21;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->setPlaylist(Landroidx/media2/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$metadata:Landroid/os/Bundle;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 558
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$21;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$21;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$21;->val$metadata:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$21;->val$playlist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPlaylist(): Ignoring null playlist from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSession2Stub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$21;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$21;->val$playlist:Ljava/util/List;

    .line 566
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertParcelImplListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$21;->val$metadata:Landroid/os/Bundle;

    .line 567
    invoke-static {v1}, Landroidx/media2/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/MediaMetadata2;

    move-result-object v1

    .line 565
    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2;->setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    return-void
.end method
