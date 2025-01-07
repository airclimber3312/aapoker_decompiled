.class Landroidx/media2/MediaPlayer2Impl$29;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 1488
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$29;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1491
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onPrepared(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSourceError(Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V

    .line 1492
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$29$1;

    invoke-direct {v0, p0}, Landroidx/media2/MediaPlayer2Impl$29$1;-><init>(Landroidx/media2/MediaPlayer2Impl$29;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    .line 1500
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$29$2;

    invoke-direct {v0, p0}, Landroidx/media2/MediaPlayer2Impl$29$2;-><init>(Landroidx/media2/MediaPlayer2Impl$29;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V

    .line 1506
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1507
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mDSD:Landroidx/media2/DataSourceDesc2;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$29;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 1509
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget-boolean v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 1512
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    .line 1513
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->processPendingTask_l()V

    .line 1515
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
