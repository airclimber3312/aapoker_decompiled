.class final Lshark/HeapAnalyzer$updateTrie$childNode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HeapAnalyzer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HeapAnalyzer;->updateTrie(Lshark/internal/ReferencePathNode;Ljava/util/List;ILshark/HeapAnalyzer$TrieNode$ParentNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
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
.field final synthetic $objectId:J

.field final synthetic $parentNode:Lshark/HeapAnalyzer$TrieNode$ParentNode;


# direct methods
.method constructor <init>(JLshark/HeapAnalyzer$TrieNode$ParentNode;)V
    .locals 0

    iput-wide p1, p0, Lshark/HeapAnalyzer$updateTrie$childNode$1;->$objectId:J

    iput-object p3, p0, Lshark/HeapAnalyzer$updateTrie$childNode$1;->$parentNode:Lshark/HeapAnalyzer$TrieNode$ParentNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lshark/HeapAnalyzer$updateTrie$childNode$1;->invoke()Lshark/HeapAnalyzer$TrieNode$ParentNode;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lshark/HeapAnalyzer$TrieNode$ParentNode;
    .locals 4

    .line 322
    new-instance v0, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    iget-wide v1, p0, Lshark/HeapAnalyzer$updateTrie$childNode$1;->$objectId:J

    invoke-direct {v0, v1, v2}, Lshark/HeapAnalyzer$TrieNode$ParentNode;-><init>(J)V

    .line 323
    iget-object v1, p0, Lshark/HeapAnalyzer$updateTrie$childNode$1;->$parentNode:Lshark/HeapAnalyzer$TrieNode$ParentNode;

    invoke-virtual {v1}, Lshark/HeapAnalyzer$TrieNode$ParentNode;->getChildren()Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lshark/HeapAnalyzer$updateTrie$childNode$1;->$objectId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
