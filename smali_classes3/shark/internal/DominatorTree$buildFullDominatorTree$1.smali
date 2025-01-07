.class public final Lshark/internal/DominatorTree$buildFullDominatorTree$1;
.super Ljava/lang/Object;
.source "DominatorTree.kt"

# interfaces
.implements Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/DominatorTree;->buildFullDominatorTree(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDominatorTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DominatorTree.kt\nshark/internal/DominatorTree$buildFullDominatorTree$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,220:1\n352#2,7:221\n352#2,7:228\n*E\n*S KotlinDebug\n*F\n+ 1 DominatorTree.kt\nshark/internal/DominatorTree$buildFullDominatorTree$1\n*L\n110#1,7:221\n115#1,7:228\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "shark/internal/DominatorTree$buildFullDominatorTree$1",
        "Lshark/internal/hppc/LongLongScatterMap$ForEachCallback;",
        "onEntry",
        "",
        "key",
        "",
        "value",
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
.field final synthetic $dominators:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntry(JJ)V
    .locals 3

    .line 110
    iget-object v0, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Lshark/internal/DominatorTree$MutableDominatorNode;

    invoke-direct {v2}, Lshark/internal/DominatorTree$MutableDominatorNode;-><init>()V

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    iget-object v0, p0, Lshark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 228
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_1

    .line 116
    new-instance p4, Lshark/internal/DominatorTree$MutableDominatorNode;

    invoke-direct {p4}, Lshark/internal/DominatorTree$MutableDominatorNode;-><init>()V

    .line 231
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    check-cast p4, Lshark/internal/DominatorTree$MutableDominatorNode;

    invoke-virtual {p4}, Lshark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
