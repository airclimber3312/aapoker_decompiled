.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setMp2State(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field final synthetic val$playerState:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;I)V
    .locals 0

    .line 2540
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;->val$playerState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    .line 2543
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    iget v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$11;->val$playerState:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;->onPlayerStateChanged(Landroidx/media2/MediaPlayerConnector;I)V

    return-void
.end method
