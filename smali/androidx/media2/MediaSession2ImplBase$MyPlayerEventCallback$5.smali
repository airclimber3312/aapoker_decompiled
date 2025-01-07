.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onPlaybackSpeedChanged(Landroidx/media2/MediaPlayerConnector;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$mpb:Landroidx/media2/MediaPlayerConnector;

.field final synthetic val$session:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;F)V
    .locals 0

    .line 1439
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iput p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1442
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iget v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onPlaybackSpeedChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;F)V

    .line 1443
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v1, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
