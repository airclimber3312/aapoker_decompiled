.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyPlaybackSpeedChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;F)V
    .locals 0

    .line 303
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput-object p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iput p3, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 306
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$7;->val$speed:F

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onPlaybackSpeedChanged(Landroidx/media2/MediaPlayerConnector;F)V

    return-void
.end method
