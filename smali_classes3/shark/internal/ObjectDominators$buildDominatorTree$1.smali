.class final Lshark/internal/ObjectDominators$buildDominatorTree$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDominators.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/ObjectDominators;->buildDominatorTree(Lshark/HeapGraph;Ljava/util/List;)Ljava/util/Map;
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
        "Ljava/lang/Integer;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "objectId",
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
.field final synthetic $nativeSizes:Ljava/util/Map;

.field final synthetic $shallowSizeCalculator:Lshark/internal/ShallowSizeCalculator;


# direct methods
.method constructor <init>(Ljava/util/Map;Lshark/internal/ShallowSizeCalculator;)V
    .locals 0

    iput-object p1, p0, Lshark/internal/ObjectDominators$buildDominatorTree$1;->$nativeSizes:Ljava/util/Map;

    iput-object p2, p0, Lshark/internal/ObjectDominators$buildDominatorTree$1;->$shallowSizeCalculator:Lshark/internal/ShallowSizeCalculator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(J)I
    .locals 2

    .line 151
    iget-object v0, p0, Lshark/internal/ObjectDominators$buildDominatorTree$1;->$nativeSizes:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lshark/internal/ObjectDominators$buildDominatorTree$1;->$shallowSizeCalculator:Lshark/internal/ShallowSizeCalculator;

    invoke-virtual {v1, p1, p2}, Lshark/internal/ShallowSizeCalculator;->computeShallowSize(J)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lshark/internal/ObjectDominators$buildDominatorTree$1;->invoke(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
