.class Landroidx/media2/MediaSession2Stub$19;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->setRating(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$rating2:Landroidx/media2/Rating2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;Landroidx/media2/Rating2;)V
    .locals 0

    .line 525
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$19;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$19;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$19;->val$rating2:Landroidx/media2/Rating2;

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

    .line 528
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$19;->val$mediaId:Ljava/lang/String;

    const-string v1, "MediaSession2Stub"

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setRating(): Ignoring null mediaId from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$19;->val$rating2:Landroidx/media2/Rating2;

    if-nez v0, :cond_1

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setRating(): Ignoring null ratingBundle from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$19;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$19;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v1, v1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 538
    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2Stub$19;->val$mediaId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/MediaSession2Stub$19;->val$rating2:Landroidx/media2/Rating2;

    .line 537
    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onSetRating(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroidx/media2/Rating2;)V

    return-void
.end method
