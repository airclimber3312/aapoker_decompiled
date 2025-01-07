.class final Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilteringLeakingObjectFinder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/FilteringLeakingObjectFinder;->findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HeapObject;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteringLeakingObjectFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteringLeakingObjectFinder.kt\nshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1556#2,3:32\n*E\n*S KotlinDebug\n*F\n+ 1 FilteringLeakingObjectFinder.kt\nshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1\n*L\n24#1,3:32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "heapObject",
        "Lshark/HeapObject;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lshark/FilteringLeakingObjectFinder;


# direct methods
.method constructor <init>(Lshark/FilteringLeakingObjectFinder;)V
    .locals 0

    iput-object p1, p0, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;->this$0:Lshark/FilteringLeakingObjectFinder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lshark/HeapObject;

    invoke-virtual {p0, p1}, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;->invoke(Lshark/HeapObject;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HeapObject;)Z
    .locals 3

    const-string v0, "heapObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lshark/FilteringLeakingObjectFinder$findLeakingObjectIds$1;->this$0:Lshark/FilteringLeakingObjectFinder;

    invoke-static {v0}, Lshark/FilteringLeakingObjectFinder;->access$getFilters$p(Lshark/FilteringLeakingObjectFinder;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 32
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;

    .line 25
    invoke-interface {v1, p1}, Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;->isLeakingObject(Lshark/HeapObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method
