.class final Lshark/HeapObject$HeapObjectArray$readElements$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapObject$HeapObjectArray;->readElements()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lshark/HeapValue;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lshark/HeapValue;",
        "it",
        "",
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
.field final synthetic this$0:Lshark/HeapObject$HeapObjectArray;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapObjectArray;)V
    .locals 0

    iput-object p1, p0, Lshark/HeapObject$HeapObjectArray$readElements$1;->this$0:Lshark/HeapObject$HeapObjectArray;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 519
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lshark/HeapObject$HeapObjectArray$readElements$1;->invoke(J)Lshark/HeapValue;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(J)Lshark/HeapValue;
    .locals 3

    .line 573
    new-instance v0, Lshark/HeapValue;

    iget-object v1, p0, Lshark/HeapObject$HeapObjectArray$readElements$1;->this$0:Lshark/HeapObject$HeapObjectArray;

    invoke-static {v1}, Lshark/HeapObject$HeapObjectArray;->access$getHprofGraph$p(Lshark/HeapObject$HeapObjectArray;)Lshark/HprofHeapGraph;

    move-result-object v1

    check-cast v1, Lshark/HeapGraph;

    new-instance v2, Lshark/ValueHolder$ReferenceHolder;

    invoke-direct {v2, p1, p2}, Lshark/ValueHolder$ReferenceHolder;-><init>(J)V

    check-cast v2, Lshark/ValueHolder;

    invoke-direct {v0, v1, v2}, Lshark/HeapValue;-><init>(Lshark/HeapGraph;Lshark/ValueHolder;)V

    return-object v0
.end method
