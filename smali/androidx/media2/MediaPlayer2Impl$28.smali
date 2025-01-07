.class Landroidx/media2/MediaPlayer2Impl$28;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setEndPositionTimerIfNeeded(Landroid/media/MediaPlayer$OnCompletionListener;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaTimestamp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$28;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$28;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$28;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1472
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$28;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$28;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    if-eq v0, v1, :cond_0

    return-void

    .line 1475
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$28;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->pause()V

    .line 1476
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$28;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$28;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method
