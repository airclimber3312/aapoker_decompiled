.class final Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DominatorTree.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/DominatorTree;->buildFullDominatorTree(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
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
.field final synthetic $computeSize:Lkotlin/jvm/functions/Function1;

.field final synthetic $dominators:Ljava/util/Map;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;->$computeSize:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;->$dominators:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(J)I
    .locals 2

    .line 124
    iget-object v0, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;->$computeSize:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;->$dominators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/internal/DominatorTree$MutableDominatorNode;

    invoke-virtual {p1, v0}, Lshark/internal/DominatorTree$MutableDominatorNode;->setShallowSize(I)V

    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 10
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lshark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;->invoke(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
