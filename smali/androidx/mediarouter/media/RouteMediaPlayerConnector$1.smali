.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->adjustPlayerVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v0, v0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v1, v1, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v1, v1, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$1;->val$direction:I

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 108
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
