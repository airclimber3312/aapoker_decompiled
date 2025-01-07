.class Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;
.super Ljava/lang/Object;
.source "RouteMediaPlayerConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/RouteMediaPlayerConnector;->notifySeekCompleted(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

.field final synthetic val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

.field final synthetic val$position:J


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RouteMediaPlayerConnector;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;J)V
    .locals 0

    .line 326
    iput-object p1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iput-object p2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iput-wide p3, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->val$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 329
    iget-object v0, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->val$callback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    iget-object v1, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->this$0:Landroidx/mediarouter/media/RouteMediaPlayerConnector;

    iget-wide v2, p0, Landroidx/mediarouter/media/RouteMediaPlayerConnector$8;->val$position:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onSeekCompleted(Landroidx/media2/MediaPlayerConnector;J)V

    return-void
.end method
