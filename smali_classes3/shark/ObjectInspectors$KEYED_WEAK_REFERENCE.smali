.class final Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;
.super Lshark/ObjectInspectors;
.source "ObjectInspectors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ObjectInspectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KEYED_WEAK_REFERENCE"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectInspectors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectInspectors.kt\nshark/ObjectInspectors$KEYED_WEAK_REFERENCE\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1648#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 ObjectInspectors.kt\nshark/ObjectInspectors$KEYED_WEAK_REFERENCE\n*L\n45#1,2:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;",
        "Lshark/ObjectInspectors;",
        "leakingObjectFilter",
        "Lkotlin/Function1;",
        "Lshark/HeapObject;",
        "",
        "getLeakingObjectFilter$shark",
        "()Lkotlin/jvm/functions/Function1;",
        "inspect",
        "",
        "reporter",
        "Lshark/ObjectReporter;",
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
.field private final leakingObjectFilter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lshark/HeapObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lshark/ObjectInspectors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    sget-object p1, Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE$leakingObjectFilter$1;->INSTANCE:Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE$leakingObjectFilter$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;->leakingObjectFilter:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getLeakingObjectFilter$shark()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lshark/HeapObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;->leakingObjectFilter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public inspect(Lshark/ObjectReporter;)V
    .locals 7

    const-string v0, "reporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HeapObject;->getGraph()Lshark/HeapGraph;

    move-result-object v0

    .line 42
    sget-object v1, Lshark/KeyedWeakReferenceFinder;->INSTANCE:Lshark/KeyedWeakReferenceFinder;

    invoke-virtual {v1, v0}, Lshark/KeyedWeakReferenceFinder;->findKeyedWeakReferences$shark(Lshark/HeapGraph;)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v1

    invoke-virtual {v1}, Lshark/HeapObject;->getObjectId()J

    move-result-wide v1

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/internal/KeyedWeakReferenceMirror;

    .line 46
    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getReferent()Lshark/ValueHolder$ReferenceHolder;

    move-result-object v4

    invoke-virtual {v4}, Lshark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    .line 47
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLeakingReasons()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getDescription()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ObjectWatcher was watching this because "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "ObjectWatcher was watching this"

    .line 47
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getWatchDurationMillis()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "watchDurationMillis = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getWatchDurationMillis()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_3
    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getRetainedDurationMillis()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retainedDurationMillis = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lshark/internal/KeyedWeakReferenceMirror;->getRetainedDurationMillis()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method
