.class public abstract Landroidx/media2/subtitle/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;,
        Landroidx/media2/subtitle/SubtitleTrack$Run;,
        Landroidx/media2/subtitle/SubtitleTrack$Cue;,
        Landroidx/media2/subtitle/SubtitleTrack$CueList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field final mActiveCues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field mRunnable:Ljava/lang/Runnable;

.field private final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/subtitle/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/media2/subtitle/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 57
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 81
    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 71
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 72
    new-instance p1, Landroidx/media2/subtitle/SubtitleTrack$CueList;

    invoke-direct {p1}, Landroidx/media2/subtitle/SubtitleTrack$CueList;-><init>()V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    .line 73
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->clearActiveCues()V

    .line 74
    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .locals 5

    .line 173
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/subtitle/SubtitleTrack$Run;

    :goto_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, v0, Landroidx/media2/subtitle/SubtitleTrack$Run;->mFirstCue:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 177
    iget-object v3, p0, Landroidx/media2/subtitle/SubtitleTrack;->mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    invoke-virtual {v3, v1}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->remove(Landroidx/media2/subtitle/SubtitleTrack$Cue;)V

    .line 178
    iget-object v3, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mNextInRun:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    .line 179
    iput-object v2, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mNextInRun:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    move-object v1, v3

    goto :goto_1

    .line 182
    :cond_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v3, v0, Landroidx/media2/subtitle/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 183
    iget-object v1, v0, Landroidx/media2/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/subtitle/SubtitleTrack$Run;

    .line 184
    iput-object v2, v0, Landroidx/media2/subtitle/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroidx/media2/subtitle/SubtitleTrack$Run;

    .line 185
    iput-object v2, v0, Landroidx/media2/subtitle/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroidx/media2/subtitle/SubtitleTrack$Run;

    move-object v0, v1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .locals 0

    monitor-enter p0

    .line 203
    :try_start_0
    iput-wide p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized addCue(Landroidx/media2/subtitle/SubtitleTrack$Cue;)Z
    .locals 11

    const-string v0, "mVisible="

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    invoke-virtual {v1, p1}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->add(Landroidx/media2/subtitle/SubtitleTrack$Cue;)V

    .line 299
    iget-wide v1, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 300
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v5, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/subtitle/SubtitleTrack$Run;

    if-nez v1, :cond_0

    .line 302
    new-instance v1, Landroidx/media2/subtitle/SubtitleTrack$Run;

    invoke-direct {v1}, Landroidx/media2/subtitle/SubtitleTrack$Run;-><init>()V

    .line 303
    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v5, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 304
    iget-wide v5, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v5, v1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    goto :goto_0

    .line 305
    :cond_0
    iget-wide v5, v1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v7, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    .line 306
    iget-wide v5, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v5, v1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    .line 310
    :cond_1
    :goto_0
    iget-object v2, v1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mFirstCue:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    iput-object v2, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mNextInRun:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    .line 311
    iput-object p1, v1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mFirstCue:Landroidx/media2/subtitle/SubtitleTrack$Cue;

    .line 316
    :cond_2
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 318
    :try_start_1
    invoke-interface {v1, v5, v2}, Landroidx/media2/subtitle/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :cond_3
    const-wide/16 v6, -0x1

    .line 325
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "SubtitleTrack"

    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " <= "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_8

    iget-wide v0, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v8, v0, v6

    if-gtz v8, :cond_8

    iget-wide v0, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v8, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    cmp-long v10, v0, v8

    if-ltz v10, :cond_8

    .line 334
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 335
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    :cond_5
    new-instance p1, Landroidx/media2/subtitle/SubtitleTrack$1;

    invoke-direct {p1, p0, p0, v6, v7}, Landroidx/media2/subtitle/SubtitleTrack$1;-><init>(Landroidx/media2/subtitle/SubtitleTrack;Landroidx/media2/subtitle/SubtitleTrack;J)V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 353
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 354
    iget-boolean p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "SubtitleTrack"

    const-string v0, "scheduling update"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 356
    :cond_6
    iget-boolean p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "SubtitleTrack"

    const-string v0, "failed to schedule subtitle view update"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :cond_7
    :goto_2
    monitor-exit p0

    return v2

    .line 361
    :cond_8
    :try_start_3
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_a

    iget-wide v0, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v6, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    cmp-long v2, v0, v6

    if-ltz v2, :cond_a

    iget-wide v0, p1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v6, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long p1, v0, v6

    if-ltz p1, :cond_9

    cmp-long p1, v6, v3

    if-gez p1, :cond_a

    .line 363
    :cond_9
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    :cond_a
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized clearActiveCues()V
    .locals 3

    const-string v0, "Clearing "

    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SubtitleTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " active cues"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, -0x1

    .line 209
    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 196
    invoke-direct {p0, v0}, Landroidx/media2/subtitle/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected finishedRun(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 586
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/subtitle/SubtitleTrack$Run;

    if-eqz p1, :cond_0

    .line 588
    iget-object p2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Landroidx/media2/subtitle/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    :cond_0
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .locals 1

    .line 606
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    .line 282
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v0, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->cancelNotifications(Landroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v0, v1}, Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 293
    :cond_2
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    return-void
.end method

.method public onData(Landroidx/media2/SubtitleData2;)V
    .locals 6

    .line 87
    invoke-virtual {p1}, Landroidx/media2/SubtitleData2;->getStartTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 88
    invoke-virtual {p1}, Landroidx/media2/SubtitleData2;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/media2/subtitle/SubtitleTrack;->onData([BZJ)V

    .line 91
    invoke-virtual {p1}, Landroidx/media2/SubtitleData2;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/media2/SubtitleData2;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 89
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media2/subtitle/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    return-void
.end method

.method protected abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .locals 3

    .line 236
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSeek "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 238
    :try_start_0
    div-long/2addr p1, v0

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/subtitle/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 240
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/SubtitleTrack;->takeTime(J)V

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    .line 243
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->scheduleTimedEvents()V

    return-void

    :catchall_0
    move-exception p1

    .line 241
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStop()V
    .locals 3

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->clearActiveCues()V

    const-wide/16 v0, -0x1

    .line 251
    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/media2/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    .line 254
    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 255
    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    invoke-interface {v2, v0, v1, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->notifyAt(JLandroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    return-void

    :catchall_0
    move-exception v0

    .line 252
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTimedEvent(J)V
    .locals 3

    .line 224
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTimedEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 226
    :try_start_0
    div-long/2addr p1, v0

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/subtitle/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 228
    invoke-direct {p0, p1, p2}, Landroidx/media2/subtitle/SubtitleTrack;->takeTime(J)V

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    .line 231
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->scheduleTimedEvents()V

    return-void

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected scheduleTimedEvents()V
    .locals 6

    .line 214
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    iget-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 216
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sched @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    iget-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    invoke-interface {v0, v1, v2, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->notifyAt(JLandroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_2
    return-void
.end method

.method public setRunDiscardTimeMs(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 596
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/subtitle/SubtitleTrack$Run;

    if-eqz p1, :cond_0

    .line 598
    iput-wide p3, p1, Landroidx/media2/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    .line 599
    iget-object p2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Landroidx/media2/subtitle/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroidx/media2/subtitle/MediaTimeProvider;)V
    .locals 1

    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 374
    monitor-exit p0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 377
    :try_start_1
    invoke-interface {v0, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->cancelNotifications(Landroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    .line 379
    :cond_1
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    if-eqz p1, :cond_2

    .line 381
    invoke-interface {p1, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->scheduleUpdate(Landroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public show()V
    .locals 2

    .line 264
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mVisible:Z

    .line 269
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->getRenderingWidget()Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    invoke-interface {v1, v0}, Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mTimeProvider:Landroidx/media2/subtitle/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 274
    invoke-interface {v0, p0}, Landroidx/media2/subtitle/MediaTimeProvider;->scheduleUpdate(Landroidx/media2/subtitle/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_2
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    .line 135
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long p1, v0, p2

    if-lez p1, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack;->clearActiveCues()V

    .line 139
    :cond_1
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mCues:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    iget-wide v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J

    .line 140
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 142
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;

    .line 144
    iget-wide v2, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 146
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SubtitleTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-wide v0, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 151
    :cond_4
    iget-wide v2, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 154
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SubtitleTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_5
    iget-object v0, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v1, p2, p3}, Landroidx/media2/subtitle/SubtitleTrack$Cue;->onTime(J)V

    .line 158
    :cond_6
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_7
    iget-object v0, v1, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v1, p2, p3}, Landroidx/media2/subtitle/SubtitleTrack$Cue;->onTime(J)V

    goto/16 :goto_0

    .line 166
    :cond_8
    :goto_1
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-gtz p1, :cond_9

    .line 167
    invoke-direct {p0, v0}, Landroidx/media2/subtitle/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_1

    .line 169
    :cond_9
    iput-wide p2, p0, Landroidx/media2/subtitle/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract updateView(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
