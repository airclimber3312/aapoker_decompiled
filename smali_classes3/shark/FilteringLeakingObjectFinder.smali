.class public final Lshark/FilteringLeakingObjectFinder;
.super Ljava/lang/Object;
.source "FilteringLeakingObjectFinder.kt"

# interfaces
.implements Lshark/LeakingObjectFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/FilteringLeakingObjectFinder;",
        "Lshark/LeakingObjectFinder;",
        "filters",
        "",
        "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
        "(Ljava/util/List;)V",
        "findLeakingObjectIds",
        "",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "LeakingObjectFilter",
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
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/FilteringLeakingObjectFinder;->filters:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getFilters$p(Lshark/FilteringLeakingObjectFinder;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lshark/FilteringLeakingObjectFinder;->filters:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lshark/HeapGraph;->getObjects()Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 23
    new-instance v0, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;

    invoke-direct {v0, p0}, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;-><init>(Lshark/FilteringLeakingObjectFinder;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 28
    sget-object v0, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$2;->INSTANCE:Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
