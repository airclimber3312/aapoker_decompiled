.class Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/SubtitleTrack$CueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCurrentTimeMs:J

.field private mDone:Z

.field private mLastEntry:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mLastListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;>;)V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iget-boolean p1, p1, Landroidx/media2/subtitle/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CueList"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iput-object p2, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    const/4 p1, 0x0

    .line 527
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 528
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    return-void
.end method

.method private nextKey()V
    .locals 6

    :cond_0
    const/4 v0, 0x0

    .line 534
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    .line 537
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 538
    iget-object v3, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 539
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 541
    :try_start_1
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 542
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 544
    :catch_0
    :try_start_2
    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    :goto_0
    const/4 v1, 0x0

    .line 546
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mDone:Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 553
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v1, 0x1

    .line 548
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    .line 549
    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 550
    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroidx/media2/subtitle/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation

    .line 487
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 491
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    .line 492
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 496
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    return-object v0

    .line 488
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 479
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 7

    .line 502
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;

    iget-wide v0, v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 503
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 508
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 510
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    iget-object v0, v0, Landroidx/media2/subtitle/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    iget-object v0, v0, Landroidx/media2/subtitle/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_0
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;

    .line 516
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    iget-wide v2, v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v1, v0, v2, v3}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/subtitle/SubtitleTrack$Cue;J)V

    .line 517
    iget-object v1, v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, v0, Landroidx/media2/subtitle/SubtitleTrack$Cue;->mInnerTimesMs:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v1, v3

    .line 519
    iget-object v6, p0, Landroidx/media2/subtitle/SubtitleTrack$CueList$EntryIterator;->this$0:Landroidx/media2/subtitle/SubtitleTrack$CueList;

    invoke-virtual {v6, v0, v4, v5}, Landroidx/media2/subtitle/SubtitleTrack$CueList;->removeEvent(Landroidx/media2/subtitle/SubtitleTrack$Cue;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 504
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
