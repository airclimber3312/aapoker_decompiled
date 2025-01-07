.class public final Lshark/HeapAnalyzer$InspectedObject;
.super Ljava/lang/Object;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InspectedObject"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lshark/HeapAnalyzer$InspectedObject;",
        "",
        "heapObject",
        "Lshark/HeapObject;",
        "leakingStatus",
        "Lshark/LeakTraceObject$LeakingStatus;",
        "leakingStatusReason",
        "",
        "labels",
        "",
        "(Lshark/HeapObject;Lshark/LeakTraceObject$LeakingStatus;Ljava/lang/String;Ljava/util/Set;)V",
        "getHeapObject",
        "()Lshark/HeapObject;",
        "getLabels",
        "()Ljava/util/Set;",
        "getLeakingStatus",
        "()Lshark/LeakTraceObject$LeakingStatus;",
        "getLeakingStatusReason",
        "()Ljava/lang/String;",
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
.field private final heapObject:Lshark/HeapObject;

.field private final labels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final leakingStatus:Lshark/LeakTraceObject$LeakingStatus;

.field private final leakingStatusReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lshark/HeapObject;Lshark/LeakTraceObject$LeakingStatus;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapObject;",
            "Lshark/LeakTraceObject$LeakingStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "heapObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leakingStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leakingStatusReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HeapAnalyzer$InspectedObject;->heapObject:Lshark/HeapObject;

    iput-object p2, p0, Lshark/HeapAnalyzer$InspectedObject;->leakingStatus:Lshark/LeakTraceObject$LeakingStatus;

    iput-object p3, p0, Lshark/HeapAnalyzer$InspectedObject;->leakingStatusReason:Ljava/lang/String;

    iput-object p4, p0, Lshark/HeapAnalyzer$InspectedObject;->labels:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getHeapObject()Lshark/HeapObject;
    .locals 1

    .line 503
    iget-object v0, p0, Lshark/HeapAnalyzer$InspectedObject;->heapObject:Lshark/HeapObject;

    return-object v0
.end method

.method public final getLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lshark/HeapAnalyzer$InspectedObject;->labels:Ljava/util/Set;

    return-object v0
.end method

.method public final getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;
    .locals 1

    .line 504
    iget-object v0, p0, Lshark/HeapAnalyzer$InspectedObject;->leakingStatus:Lshark/LeakTraceObject$LeakingStatus;

    return-object v0
.end method

.method public final getLeakingStatusReason()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lshark/HeapAnalyzer$InspectedObject;->leakingStatusReason:Ljava/lang/String;

    return-object v0
.end method
