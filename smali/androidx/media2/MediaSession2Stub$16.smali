.class Landroidx/media2/MediaSession2Stub$16;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->playFromUri(Landroidx/media2/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 472
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$16;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$16;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$16;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$16;->val$uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playFromUri(): Ignoring null uri from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSession2Stub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$16;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$16;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 480
    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$16;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/media2/MediaSession2Stub$16;->val$extras:Landroid/os/Bundle;

    .line 479
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onPlayFromUri(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
