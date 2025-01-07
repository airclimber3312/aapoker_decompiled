.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifyCurrentDataSourceChanged(Landroidx/media2/DataSourceDesc2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

.field final synthetic val$dsd:Landroidx/media2/DataSourceDesc2;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;Landroidx/media2/DataSourceDesc2;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput-object p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iput-object p3, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 215
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$3;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onCurrentDataSourceChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method
