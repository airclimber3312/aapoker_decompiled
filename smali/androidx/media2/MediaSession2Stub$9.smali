.class Landroidx/media2/MediaSession2Stub$9;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->fastForward(Landroidx/media2/IMediaController2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;)V
    .locals 0

    .line 371
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$9;->this$0:Landroidx/media2/MediaSession2Stub;

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

    .line 374
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$9;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$9;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 375
    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1, p1}, Landroidx/media2/MediaSession2$SessionCallback;->onFastForward(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;)V

    return-void
.end method
