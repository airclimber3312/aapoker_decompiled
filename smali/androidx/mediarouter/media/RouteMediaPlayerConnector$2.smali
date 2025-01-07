.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->setPlayerVolume(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;F)V
    .locals 0

    .line 119
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 122
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v0, v0, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v1, v1, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-object v1, v1, Landroidx/mediarouter/media/RouteMediaPlayerConnector;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$2;->val$volume:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 126
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
