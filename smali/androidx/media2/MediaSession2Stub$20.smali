.class Landroidx/media2/MediaSession2Stub$20;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->setPlaybackSpeed(Landroidx/media2/IMediaController2;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;F)V
    .locals 0

    .line 546
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$20;->this$0:Landroidx/media2/MediaSession2Stub;

    iput p2, p0, Landroidx/media2/MediaSession2Stub$20;->val$speed:F

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

    .line 549
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$20;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget v0, p0, Landroidx/media2/MediaSession2Stub$20;->val$speed:F

    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2;->setPlaybackSpeed(F)V

    return-void
.end method
