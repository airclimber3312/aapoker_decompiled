.class Landroidx/media2/MediaSession2Stub$3;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->setVolumeTo(Landroidx/media2/IMediaController2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$flags:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;II)V
    .locals 0

    .line 298
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$3;->this$0:Landroidx/media2/MediaSession2Stub;

    iput p2, p0, Landroidx/media2/MediaSession2Stub$3;->val$value:I

    iput p3, p0, Landroidx/media2/MediaSession2Stub$3;->val$flags:I

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

    .line 301
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$3;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    iget v0, p0, Landroidx/media2/MediaSession2Stub$3;->val$value:I

    iget v1, p0, Landroidx/media2/MediaSession2Stub$3;->val$flags:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->setVolumeTo(II)V

    :cond_0
    return-void
.end method
