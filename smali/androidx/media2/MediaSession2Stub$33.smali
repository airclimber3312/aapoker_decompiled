.class Landroidx/media2/MediaSession2Stub$33;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->selectRoute(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$route:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V
    .locals 0

    .line 720
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$33;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$33;->val$route:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$33;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$33;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$33;->val$route:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/media2/MediaSession2$SessionCallback;->onSelectRoute(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V

    return-void
.end method
