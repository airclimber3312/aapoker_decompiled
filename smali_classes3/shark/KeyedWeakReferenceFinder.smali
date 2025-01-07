.class public final Lshark/KeyedWeakReferenceFinder;
.super Ljava/lang/Object;
.source "KeyedWeakReferenceFinder.kt"

# interfaces
.implements Lshark/LeakingObjectFinder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyedWeakReferenceFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyedWeakReferenceFinder.kt\nshark/KeyedWeakReferenceFinder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n706#2:60\n783#2,2:61\n1366#2:63\n1435#2,3:64\n*E\n*S KotlinDebug\n*F\n+ 1 KeyedWeakReferenceFinder.kt\nshark/KeyedWeakReferenceFinder\n*L\n14#1:60\n14#1,2:61\n15#1:63\n15#1,3:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lshark/KeyedWeakReferenceFinder;",
        "Lshark/LeakingObjectFinder;",
        "()V",
        "findKeyedWeakReferences",
        "",
        "Lshark/internal/KeyedWeakReferenceMirror;",
        "graph",
        "Lshark/HeapGraph;",
        "findKeyedWeakReferences$shark",
        "findLeakingObjectIds",
        "",
        "",
        "heapDumpUptimeMillis",
        "(Lshark/HeapGraph;)Ljava/lang/Long;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lshark/KeyedWeakReferenceFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lshark/KeyedWeakReferenceFinder;

    invoke-direct {v0}, Lshark/KeyedWeakReferenceFinder;-><init>()V

    sput-object v0, Lshark/KeyedWeakReferenceFinder;->INSTANCE:Lshark/KeyedWeakReferenceFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findKeyedWeakReferences$shark(Lshark/HeapGraph;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            ")",
            "Ljava/util/List<",
            "Lshark/internal/KeyedWeakReferenceMirror;",
            ">;"
        }
    .end annotation

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lshark/HeapGraph;->getContext()Lshark/GraphContext;

    move-result-object v0

    sget-object v1, Lshark/ObjectInspectors;->KEYED_WEAK_REFERENCE:Lshark/ObjectInspectors;

    invoke-virtual {v1}, Lshark/ObjectInspectors;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;

    invoke-direct {v2, p1}, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;-><init>(Lshark/HeapGraph;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lshark/GraphContext;->getOrPut(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;
    .locals 4
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

    .line 13
    invoke-virtual {p0, p1}, Lshark/KeyedWeakReferenceFinder;->findKeyedWeakReferences$shark(Lshark/HeapGraph;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lshark/internal/KeyedWeakReferenceMirror;

    .line 14
    invoke-virtual {v2}, Lshark/internal/KeyedWeakReferenceMirror;->getHasReferent()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lshark/internal/KeyedWeakReferenceMirror;->isRetained()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, Lshark/internal/KeyedWeakReferenceMirror;

    .line 15
    invoke-virtual {v1}, Lshark/internal/KeyedWeakReferenceMirror;->getReferent()Lshark/ValueHolder$ReferenceHolder;

    move-result-object v1

    invoke-virtual {v1}, Lshark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    :cond_3
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final heapDumpUptimeMillis(Lshark/HeapGraph;)Ljava/lang/Long;
    .locals 2

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lshark/HeapGraph;->getContext()Lshark/GraphContext;

    move-result-object v0

    new-instance v1, Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;

    invoke-direct {v1, p1}, Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;-><init>(Lshark/HeapGraph;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string p1, "heapDumpUptimeMillis"

    invoke-virtual {v0, p1, v1}, Lshark/GraphContext;->getOrPut(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
