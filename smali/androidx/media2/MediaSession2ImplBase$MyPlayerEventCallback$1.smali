.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onCurrentDataSourceChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$dsd:Landroidx/media2/DataSourceDesc2;

.field final synthetic val$player:Landroidx/media2/MediaPlayerConnector;

.field final synthetic val$session:Landroidx/media2/MediaSession2ImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$dsd:Landroidx/media2/DataSourceDesc2;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$player:Landroidx/media2/MediaPlayerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1281
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$dsd:Landroidx/media2/DataSourceDesc2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1, v2, v0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getMediaItem(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot obtain media item from the dsd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MS2ImplBase"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1292
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v2}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$player:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media2/MediaSession2$SessionCallback;->onCurrentMediaItemChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;)V

    .line 1294
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1$1;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;Landroidx/media2/MediaItem2;)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
