.class Landroidx/media2/MediaSessionLegacyStub$18;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$rating:Landroid/support/v4/media/RatingCompat;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .line 339
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$18;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaSessionLegacyStub$18;->val$rating:Landroid/support/v4/media/RatingCompat;

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

    .line 342
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$18;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$18;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub$18;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v2}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    .line 347
    invoke-virtual {v0}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/MediaSessionLegacyStub$18;->val$rating:Landroid/support/v4/media/RatingCompat;

    .line 348
    invoke-static {v3}, Landroidx/media2/MediaUtils2;->convertToRating2(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/Rating2;

    move-result-object v3

    .line 346
    invoke-virtual {v1, v2, p1, v0, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onSetRating(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroidx/media2/Rating2;)V

    return-void
.end method
