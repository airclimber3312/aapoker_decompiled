.class Landroidx/media2/MediaSessionLegacyStub$15;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onSkipToQueueItem(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;J)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$15;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroidx/media2/MediaSessionLegacyStub$15;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$15;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 294
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaItem2;

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1}, Landroidx/media2/MediaItem2;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media2/MediaSessionLegacyStub$15;->val$id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 296
    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$15;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media2/MediaSession2;->skipToPlaylistItem(Landroidx/media2/MediaItem2;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
