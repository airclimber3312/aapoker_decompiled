.class final Lshark/internal/PathFinder$State;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0011\u0010\u001f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0011R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\r\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lshark/internal/PathFinder$State;",
        "",
        "leakingObjectIds",
        "Lshark/internal/hppc/LongScatterSet;",
        "sizeOfObjectInstances",
        "",
        "computeRetainedHeapSize",
        "",
        "javaLangObjectId",
        "",
        "estimatedVisitedObjects",
        "(Lshark/internal/hppc/LongScatterSet;IZJI)V",
        "getComputeRetainedHeapSize",
        "()Z",
        "getJavaLangObjectId",
        "()J",
        "getLeakingObjectIds",
        "()Lshark/internal/hppc/LongScatterSet;",
        "queuesNotEmpty",
        "getQueuesNotEmpty",
        "getSizeOfObjectInstances",
        "()I",
        "toVisitLastQueue",
        "Ljava/util/Deque;",
        "Lshark/internal/ReferencePathNode;",
        "getToVisitLastQueue",
        "()Ljava/util/Deque;",
        "toVisitLastSet",
        "getToVisitLastSet",
        "toVisitQueue",
        "getToVisitQueue",
        "toVisitSet",
        "getToVisitSet",
        "visitTracker",
        "Lshark/internal/PathFinder$VisitTracker;",
        "getVisitTracker",
        "()Lshark/internal/PathFinder$VisitTracker;",
        "visitingLast",
        "getVisitingLast",
        "setVisitingLast",
        "(Z)V",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final computeRetainedHeapSize:Z

.field private final javaLangObjectId:J

.field private final leakingObjectIds:Lshark/internal/hppc/LongScatterSet;

.field private final sizeOfObjectInstances:I

.field private final toVisitLastQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitLastSet:Lshark/internal/hppc/LongScatterSet;

.field private final toVisitQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitSet:Lshark/internal/hppc/LongScatterSet;

.field private final visitTracker:Lshark/internal/PathFinder$VisitTracker;

.field private visitingLast:Z


# direct methods
.method public constructor <init>(Lshark/internal/hppc/LongScatterSet;IZJI)V
    .locals 1

    const-string v0, "leakingObjectIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/PathFinder$State;->leakingObjectIds:Lshark/internal/hppc/LongScatterSet;

    iput p2, p0, Lshark/internal/PathFinder$State;->sizeOfObjectInstances:I

    iput-boolean p3, p0, Lshark/internal/PathFinder$State;->computeRetainedHeapSize:Z

    iput-wide p4, p0, Lshark/internal/PathFinder$State;->javaLangObjectId:J

    .line 121
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    check-cast p1, Ljava/util/Deque;

    iput-object p1, p0, Lshark/internal/PathFinder$State;->toVisitQueue:Ljava/util/Deque;

    .line 127
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    check-cast p1, Ljava/util/Deque;

    iput-object p1, p0, Lshark/internal/PathFinder$State;->toVisitLastQueue:Ljava/util/Deque;

    .line 132
    new-instance p1, Lshark/internal/hppc/LongScatterSet;

    const/4 p2, 0x0

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-direct {p1, p2, p4, p5}, Lshark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/internal/PathFinder$State;->toVisitSet:Lshark/internal/hppc/LongScatterSet;

    .line 133
    new-instance p1, Lshark/internal/hppc/LongScatterSet;

    invoke-direct {p1, p2, p4, p5}, Lshark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/internal/PathFinder$State;->toVisitLastSet:Lshark/internal/hppc/LongScatterSet;

    if-eqz p3, :cond_0

    .line 139
    new-instance p1, Lshark/internal/PathFinder$VisitTracker$Dominated;

    invoke-direct {p1, p6}, Lshark/internal/PathFinder$VisitTracker$Dominated;-><init>(I)V

    check-cast p1, Lshark/internal/PathFinder$VisitTracker;

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Lshark/internal/PathFinder$VisitTracker$Visited;

    invoke-direct {p1, p6}, Lshark/internal/PathFinder$VisitTracker$Visited;-><init>(I)V

    check-cast p1, Lshark/internal/PathFinder$VisitTracker;

    .line 138
    :goto_0
    iput-object p1, p0, Lshark/internal/PathFinder$State;->visitTracker:Lshark/internal/PathFinder$VisitTracker;

    return-void
.end method


# virtual methods
.method public final getComputeRetainedHeapSize()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lshark/internal/PathFinder$State;->computeRetainedHeapSize:Z

    return v0
.end method

.method public final getJavaLangObjectId()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lshark/internal/PathFinder$State;->javaLangObjectId:J

    return-wide v0
.end method

.method public final getLeakingObjectIds()Lshark/internal/hppc/LongScatterSet;
    .locals 1

    .line 113
    iget-object v0, p0, Lshark/internal/PathFinder$State;->leakingObjectIds:Lshark/internal/hppc/LongScatterSet;

    return-object v0
.end method

.method public final getQueuesNotEmpty()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitQueue:Ljava/util/Deque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitLastQueue:Ljava/util/Deque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final getSizeOfObjectInstances()I
    .locals 1

    .line 114
    iget v0, p0, Lshark/internal/PathFinder$State;->sizeOfObjectInstances:I

    return v0
.end method

.method public final getToVisitLastQueue()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitLastQueue:Ljava/util/Deque;

    return-object v0
.end method

.method public final getToVisitLastSet()Lshark/internal/hppc/LongScatterSet;
    .locals 1

    .line 133
    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitLastSet:Lshark/internal/hppc/LongScatterSet;

    return-object v0
.end method

.method public final getToVisitQueue()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitQueue:Ljava/util/Deque;

    return-object v0
.end method

.method public final getToVisitSet()Lshark/internal/hppc/LongScatterSet;
    .locals 1

    .line 132
    iget-object v0, p0, Lshark/internal/PathFinder$State;->toVisitSet:Lshark/internal/hppc/LongScatterSet;

    return-object v0
.end method

.method public final getVisitTracker()Lshark/internal/PathFinder$VisitTracker;
    .locals 1

    .line 138
    iget-object v0, p0, Lshark/internal/PathFinder$State;->visitTracker:Lshark/internal/PathFinder$VisitTracker;

    return-object v0
.end method

.method public final getVisitingLast()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lshark/internal/PathFinder$State;->visitingLast:Z

    return v0
.end method

.method public final setVisitingLast(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lshark/internal/PathFinder$State;->visitingLast:Z

    return-void
.end method
