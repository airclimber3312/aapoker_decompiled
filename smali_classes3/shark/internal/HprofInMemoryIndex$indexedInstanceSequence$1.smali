.class final Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofInMemoryIndex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/HprofInMemoryIndex;->indexedInstanceSequence()Lkotlin/sequences/Sequence;
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
        "Lshark/internal/ByteSubArray;",
        ">;",
        "Lshark/internal/hppc/LongObjectPair<",
        "+",
        "Lshark/internal/IndexedObject$IndexedInstance;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lshark/internal/hppc/LongObjectPair;",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        "it",
        "Lshark/internal/ByteSubArray;",
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
.field final synthetic this$0:Lshark/internal/HprofInMemoryIndex;


# direct methods
.method constructor <init>(Lshark/internal/HprofInMemoryIndex;)V
    .locals 0

    iput-object p1, p0, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lshark/internal/HprofInMemoryIndex;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lshark/internal/hppc/LongObjectPair;

    invoke-virtual {p0, p1}, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->invoke(Lshark/internal/hppc/LongObjectPair;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/internal/hppc/LongObjectPair;)Lshark/internal/hppc/LongObjectPair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/ByteSubArray;",
            ">;)",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedInstance;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lshark/internal/hppc/LongObjectPair;->getFirst()J

    move-result-wide v0

    .line 136
    invoke-virtual {p1}, Lshark/internal/hppc/LongObjectPair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/internal/ByteSubArray;

    .line 137
    new-instance v9, Lshark/internal/IndexedObject$IndexedInstance;

    .line 138
    iget-object v2, p0, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lshark/internal/HprofInMemoryIndex;

    invoke-static {v2}, Lshark/internal/HprofInMemoryIndex;->access$getPositionSize$p(Lshark/internal/HprofInMemoryIndex;)I

    move-result v2

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 139
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 140
    iget-object v2, p0, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lshark/internal/HprofInMemoryIndex;

    invoke-static {v2}, Lshark/internal/HprofInMemoryIndex;->access$getBytesForInstanceSize$p(Lshark/internal/HprofInMemoryIndex;)I

    move-result v2

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 137
    invoke-direct/range {v2 .. v8}, Lshark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    .line 142
    invoke-static {v0, v1, v9}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method
