.class final Lshark/HeapObject$HeapInstance$readFields$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapObject$HeapInstance;->readFields()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HeapObject$HeapClass;",
        "Lkotlin/sequences/Sequence<",
        "+",
        "Lshark/HeapField;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/sequences/Sequence;",
        "Lshark/HeapField;",
        "heapClass",
        "Lshark/HeapObject$HeapClass;",
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
.field final synthetic $fieldReader:Lkotlin/Lazy;

.field final synthetic $fieldReader$metadata:Lkotlin/reflect/KProperty;

.field final synthetic this$0:Lshark/HeapObject$HeapInstance;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapInstance;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-object p1, p0, Lshark/HeapObject$HeapInstance$readFields$1;->this$0:Lshark/HeapObject$HeapInstance;

    iput-object p2, p0, Lshark/HeapObject$HeapInstance$readFields$1;->$fieldReader:Lkotlin/Lazy;

    iput-object p3, p0, Lshark/HeapObject$HeapInstance$readFields$1;->$fieldReader$metadata:Lkotlin/reflect/KProperty;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    check-cast p1, Lshark/HeapObject$HeapClass;

    invoke-virtual {p0, p1}, Lshark/HeapObject$HeapInstance$readFields$1;->invoke(Lshark/HeapObject$HeapClass;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HeapObject$HeapClass;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapObject$HeapClass;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapField;",
            ">;"
        }
    .end annotation

    const-string v0, "heapClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->readRecordFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 451
    new-instance v1, Lshark/HeapObject$HeapInstance$readFields$1$1;

    invoke-direct {v1, p0, p1}, Lshark/HeapObject$HeapInstance$readFields$1$1;-><init>(Lshark/HeapObject$HeapInstance$readFields$1;Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method
