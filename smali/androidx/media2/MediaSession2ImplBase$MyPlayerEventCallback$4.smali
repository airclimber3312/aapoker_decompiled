.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onBufferingStateChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;I)V
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

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaPlayerConnector;I)V
    .locals 0

    .line 1413
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$dsd:Landroidx/media2/DataSourceDesc2;

    iput-object p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iput p5, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1416
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getMediaItem(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1420
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$session:Landroidx/media2/MediaSession2ImplBase;

    .line 1421
    invoke-virtual {v2}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iget v4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$state:I

    .line 1420
    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/media2/MediaSession2$SessionCallback;->onBufferingStateChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaItem2;I)V

    .line 1422
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;Landroidx/media2/MediaItem2;)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
