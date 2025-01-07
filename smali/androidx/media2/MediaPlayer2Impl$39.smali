.class Landroidx/media2/MediaPlayer2Impl$39;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;


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

.field final synthetic val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1674
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$39;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$39;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$39;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V
    .locals 2

    .line 1678
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$39;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$39$1;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaPlayer2Impl$39$1;-><init>(Landroidx/media2/MediaPlayer2Impl$39;Landroid/media/MediaTimestamp;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 1686
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$39;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$39;->val$completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$39;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/media2/MediaPlayer2Impl;->setEndPositionTimerIfNeeded(Landroid/media/MediaPlayer$OnCompletionListener;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaTimestamp;)V

    return-void
.end method
