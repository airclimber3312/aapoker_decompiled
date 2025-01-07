.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onMediaPrepared(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$dsd:Landroidx/media2/DataSourceDesc2;

.field final synthetic val$mpb:Landroidx/media2/MediaPlayerConnector;

.field final synthetic val$session:Landroidx/media2/MediaSession2ImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaPlayerConnector;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$dsd:Landroidx/media2/DataSourceDesc2;

    iput-object p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1313
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getMediaItem(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1317
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/MediaItem2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1318
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    .line 1322
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v3

    const-string v4, "android.media.metadata.DURATION"

    if-eqz v3, :cond_4

    .line 1324
    invoke-virtual {v3, v4}, Landroidx/media2/MediaMetadata2;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1325
    new-instance v5, Landroidx/media2/MediaMetadata2$Builder;

    invoke-direct {v5, v3}, Landroidx/media2/MediaMetadata2$Builder;-><init>(Landroidx/media2/MediaMetadata2;)V

    invoke-virtual {v5, v4, v1, v2}, Landroidx/media2/MediaMetadata2$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/MediaMetadata2$Builder;

    move-result-object v1

    .line 1326
    invoke-virtual {v1}, Landroidx/media2/MediaMetadata2$Builder;->build()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    goto :goto_0

    .line 1329
    :cond_2
    invoke-virtual {v3, v4}, Landroidx/media2/MediaMetadata2;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 1333
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "duration mismatch for an item. duration from player="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration from metadata="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". May be a timing issue?"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MS2ImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1345
    :cond_4
    new-instance v3, Landroidx/media2/MediaMetadata2$Builder;

    invoke-direct {v3}, Landroidx/media2/MediaMetadata2$Builder;-><init>()V

    .line 1346
    invoke-virtual {v3, v4, v1, v2}, Landroidx/media2/MediaMetadata2$Builder;->putLong(Ljava/lang/String;J)Landroidx/media2/MediaMetadata2$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 1348
    invoke-virtual {v0}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v3

    .line 1347
    invoke-virtual {v1, v2, v3}, Landroidx/media2/MediaMetadata2$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/MediaMetadata2$Builder;

    move-result-object v1

    .line 1349
    invoke-virtual {v1}, Landroidx/media2/MediaMetadata2$Builder;->build()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 1352
    invoke-virtual {v0, v1}, Landroidx/media2/MediaItem2;->setMetadata(Landroidx/media2/MediaMetadata2;)V

    .line 1353
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;

    invoke-direct {v2, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1362
    :cond_5
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v2}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media2/MediaSession2$SessionCallback;->onMediaPrepared(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;)V

    return-void
.end method
