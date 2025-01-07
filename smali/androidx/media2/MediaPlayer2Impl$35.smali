.class Landroidx/media2/MediaPlayer2Impl$35;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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

.field final synthetic val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1596
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$35;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$35;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1599
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 1600
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getStartPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1603
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    return-void

    .line 1606
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1607
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    iget-boolean v0, v0, Landroidx/media2/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 1611
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    .line 1612
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->processPendingTask_l()V

    .line 1614
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v0

    .line 1616
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$35;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$35$1;

    invoke-direct {v2, p0, v0, v1}, Landroidx/media2/MediaPlayer2Impl$35$1;-><init>(Landroidx/media2/MediaPlayer2Impl$35;J)V

    invoke-virtual {p1, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1614
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
