.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyPlayerVolumeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$callback:Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;F)V
    .locals 0

    .line 350
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput-object p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->val$callback:Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

    iput p3, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->val$callback:Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;

    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$9;->val$volume:F

    invoke-virtual {v0, v1, v2}, Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;->onPlayerVolumeChanged(Landroidx/media2/MediaPlayerConnector;F)V

    return-void
.end method
