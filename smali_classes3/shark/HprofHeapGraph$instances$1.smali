.class final Lshark/HprofHeapGraph$instances$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofHeapGraph.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofHeapGraph;->getInstances()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/internal/hppc/LongObjectPair<",
        "+",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        ">;",
        "Lshark/HeapObject$HeapInstance;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lshark/HeapObject$HeapInstance;",
        "it",
        "Lshark/internal/hppc/LongObjectPair;",
        "Lshark/internal/IndexedObject$IndexedInstance;",
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
.field final synthetic $objectIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lshark/HprofHeapGraph;


# direct methods
.method constructor <init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofHeapGraph$instances$1;->this$0:Lshark/HprofHeapGraph;

    iput-object p2, p0, Lshark/HprofHeapGraph$instances$1;->$objectIndex:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Lshark/internal/hppc/LongObjectPair;

    invoke-virtual {p0, p1}, Lshark/HprofHeapGraph$instances$1;->invoke(Lshark/internal/hppc/LongObjectPair;)Lshark/HeapObject$HeapInstance;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/internal/hppc/LongObjectPair;)Lshark/HeapObject$HeapInstance;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedInstance;",
            ">;)",
            "Lshark/HeapObject$HeapInstance;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lshark/internal/hppc/LongObjectPair;->getFirst()J

    move-result-wide v4

    .line 107
    invoke-virtual {p1}, Lshark/internal/hppc/LongObjectPair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lshark/internal/IndexedObject$IndexedInstance;

    .line 108
    new-instance p1, Lshark/HeapObject$HeapInstance;

    iget-object v2, p0, Lshark/HprofHeapGraph$instances$1;->this$0:Lshark/HprofHeapGraph;

    iget-object v0, p0, Lshark/HprofHeapGraph$instances$1;->$objectIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v6, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lshark/HeapObject$HeapInstance;-><init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedInstance;JI)V

    return-object p1
.end method
