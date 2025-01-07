.class Landroidx/media2/MediaPlayer2Impl$35$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$35;->onSeekComplete(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$35;

.field final synthetic val$seekPos:J


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$35;J)V
    .locals 0

    .line 1616
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$35$1;->this$1:Landroidx/media2/MediaPlayer2Impl$35;

    iput-wide p2, p0, Landroidx/media2/MediaPlayer2Impl$35$1;->val$seekPos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 3

    .line 1621
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35$1;->this$1:Landroidx/media2/MediaPlayer2Impl$35;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget-wide v1, p0, Landroidx/media2/MediaPlayer2Impl$35$1;->val$seekPos:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onSeekCompleted(Landroidx/media2/MediaPlayerConnector;J)V

    return-void
.end method
