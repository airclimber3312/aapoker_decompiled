.class Landroidx/media2/MediaSessionLegacyStub$21;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$description:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$21;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaSessionLegacyStub$21;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

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

    .line 395
    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$21;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$21;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 396
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaItem2;

    move-result-object v0

    const v1, 0x7fffffff

    .line 395
    invoke-virtual {p1, v1, v0}, Landroidx/media2/MediaSession2;->addPlaylistItem(ILandroidx/media2/MediaItem2;)V

    return-void
.end method
