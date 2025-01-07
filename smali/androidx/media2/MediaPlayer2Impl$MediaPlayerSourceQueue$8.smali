.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->moveToNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field final synthetic val$src2:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 2254
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;->val$src2:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    .line 2257
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$8;->val$src2:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v1, v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onPlayerStateChanged(Landroidx/media2/MediaPlayerConnector;I)V

    return-void
.end method
