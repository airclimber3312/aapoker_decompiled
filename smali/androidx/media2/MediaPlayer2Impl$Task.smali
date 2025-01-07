.class abstract Landroidx/media2/MediaPlayer2Impl$Task;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation


# instance fields
.field mDSD:Landroidx/media2/DataSourceDesc2;

.field final mMediaCallType:I

.field final mNeedToWaitForEventToComplete:Z

.field mSkip:Z

.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZ)V
    .locals 0

    .line 1862
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    .line 1864
    iput-boolean p3, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    return-void
.end method


# virtual methods
.method abstract process()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    .line 1873
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1874
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mSkip:Z

    .line 1875
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1878
    :try_start_1
    iget v2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    .line 1879
    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl;->getState()I

    move-result v2

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1882
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$Task;->process()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :catch_1
    const/4 v0, 0x4

    goto :goto_0

    :catch_2
    const/4 v0, 0x3

    goto :goto_0

    :catch_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_4
    nop

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 1899
    :goto_0
    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl;->getCurrentDataSource()Landroidx/media2/DataSourceDesc2;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mDSD:Landroidx/media2/DataSourceDesc2;

    .line 1901
    iget-boolean v2, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mNeedToWaitForEventToComplete:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1903
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/media2/MediaPlayer2Impl$Task;->sendCompleteNotification(I)V

    .line 1905
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1906
    :try_start_2
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    .line 1907
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->processPendingTask_l()V

    .line 1908
    monitor-exit v1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1875
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method sendCompleteNotification(I)V
    .locals 2

    .line 1913
    iget v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    return-void

    .line 1918
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$Task;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$Task$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$Task$1;-><init>(Landroidx/media2/MediaPlayer2Impl$Task;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method
