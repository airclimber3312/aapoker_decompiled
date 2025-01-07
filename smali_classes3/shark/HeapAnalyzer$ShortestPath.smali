.class public final Lshark/HeapAnalyzer$ShortestPath;
.super Ljava/lang/Object;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortestPath"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lshark/HeapAnalyzer$ShortestPath;",
        "",
        "root",
        "Lshark/internal/ReferencePathNode$RootNode;",
        "childPath",
        "",
        "Lshark/internal/ReferencePathNode$ChildNode;",
        "(Lshark/internal/ReferencePathNode$RootNode;Ljava/util/List;)V",
        "getChildPath",
        "()Ljava/util/List;",
        "getRoot",
        "()Lshark/internal/ReferencePathNode$RootNode;",
        "asList",
        "Lshark/internal/ReferencePathNode;",
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
.field private final childPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode$ChildNode;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lshark/internal/ReferencePathNode$RootNode;


# direct methods
.method public constructor <init>(Lshark/internal/ReferencePathNode$RootNode;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/ReferencePathNode$RootNode;",
            "Ljava/util/List<",
            "+",
            "Lshark/internal/ReferencePathNode$ChildNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HeapAnalyzer$ShortestPath;->root:Lshark/internal/ReferencePathNode$RootNode;

    iput-object p2, p0, Lshark/HeapAnalyzer$ShortestPath;->childPath:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lshark/HeapAnalyzer$ShortestPath;->root:Lshark/internal/ReferencePathNode$RootNode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lshark/HeapAnalyzer$ShortestPath;->childPath:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getChildPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode$ChildNode;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lshark/HeapAnalyzer$ShortestPath;->childPath:Ljava/util/List;

    return-object v0
.end method

.method public final getRoot()Lshark/internal/ReferencePathNode$RootNode;
    .locals 1

    .line 349
    iget-object v0, p0, Lshark/HeapAnalyzer$ShortestPath;->root:Lshark/internal/ReferencePathNode$RootNode;

    return-object v0
.end method
