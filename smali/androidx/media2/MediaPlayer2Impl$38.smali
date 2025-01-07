.class Landroidx/media2/MediaPlayer2Impl$38;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setUpListeners(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$38;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$38;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    .line 1660
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$38;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    .line 1663
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$38;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1664
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$38;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$38$1;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaPlayer2Impl$38$1;-><init>(Landroidx/media2/MediaPlayer2Impl$38;I)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method
