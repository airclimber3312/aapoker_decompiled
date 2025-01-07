.class final Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyedWeakReferenceFinder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/KeyedWeakReferenceFinder;->findKeyedWeakReferences$shark(Lshark/HeapGraph;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lshark/internal/KeyedWeakReferenceMirror;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lshark/internal/KeyedWeakReferenceMirror;",
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
.field final synthetic $graph:Lshark/HeapGraph;


# direct methods
.method constructor <init>(Lshark/HeapGraph;)V
    .locals 0

    iput-object p1, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/internal/KeyedWeakReferenceMirror;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    const-string v1, "leakcanary.KeyedWeakReference"

    invoke-interface {v0, v1}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 41
    :goto_0
    iget-object v0, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    const-string v5, "com.squareup.leakcanary.KeyedWeakReference"

    invoke-interface {v0, v5}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    .line 43
    :cond_1
    sget-object v0, Lshark/KeyedWeakReferenceFinder;->INSTANCE:Lshark/KeyedWeakReferenceFinder;

    iget-object v5, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    invoke-virtual {v0, v5}, Lshark/KeyedWeakReferenceFinder;->heapDumpUptimeMillis(Lshark/HeapGraph;)Ljava/lang/Long;

    move-result-object v0

    .line 45
    iget-object v5, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    invoke-interface {v5}, Lshark/HeapGraph;->getInstances()Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 46
    new-instance v6, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1$addedToContext$1;

    invoke-direct {v6, v3, v4, v1, v2}, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1$addedToContext$1;-><init>(JJ)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 49
    new-instance v2, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1$addedToContext$2;

    invoke-direct {v2, v0}, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1$addedToContext$2;-><init>(Ljava/lang/Long;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lshark/KeyedWeakReferenceFinder$findKeyedWeakReferences$1;->$graph:Lshark/HeapGraph;

    invoke-interface {v1}, Lshark/HeapGraph;->getContext()Lshark/GraphContext;

    move-result-object v1

    sget-object v2, Lshark/ObjectInspectors;->KEYED_WEAK_REFERENCE:Lshark/ObjectInspectors;

    invoke-virtual {v2}, Lshark/ObjectInspectors;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lshark/GraphContext;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
