.class Landroidx/media2/MediaPlayer2Impl$34;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 1574
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$34;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1577
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onError(Landroid/media/MediaPlayer;)V

    .line 1578
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1579
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget-boolean v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 1582
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    .line 1583
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->processPendingTask_l()V

    .line 1585
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$34$1;

    invoke-direct {v0, p0, p2, p3}, Landroidx/media2/MediaPlayer2Impl$34$1;-><init>(Landroidx/media2/MediaPlayer2Impl$34;II)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 1585
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
