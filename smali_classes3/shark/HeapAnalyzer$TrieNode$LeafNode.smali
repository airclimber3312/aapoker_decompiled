.class public final Lshark/HeapAnalyzer$TrieNode$LeafNode;
.super Lshark/HeapAnalyzer$TrieNode;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapAnalyzer$TrieNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeafNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/HeapAnalyzer$TrieNode$LeafNode;",
        "Lshark/HeapAnalyzer$TrieNode;",
        "objectId",
        "",
        "pathNode",
        "Lshark/internal/ReferencePathNode;",
        "(JLshark/internal/ReferencePathNode;)V",
        "getObjectId",
        "()J",
        "getPathNode",
        "()Lshark/internal/ReferencePathNode;",
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
.field private final objectId:J

.field private final pathNode:Lshark/internal/ReferencePathNode;


# direct methods
.method public constructor <init>(JLshark/internal/ReferencePathNode;)V
    .locals 1

    const-string v0, "pathNode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lshark/HeapAnalyzer$TrieNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/HeapAnalyzer$TrieNode$LeafNode;->objectId:J

    iput-object p3, p0, Lshark/HeapAnalyzer$TrieNode$LeafNode;->pathNode:Lshark/internal/ReferencePathNode;

    return-void
.end method


# virtual methods
.method public getObjectId()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lshark/HeapAnalyzer$TrieNode$LeafNode;->objectId:J

    return-wide v0
.end method

.method public final getPathNode()Lshark/internal/ReferencePathNode;
    .locals 1

    .line 265
    iget-object v0, p0, Lshark/HeapAnalyzer$TrieNode$LeafNode;->pathNode:Lshark/internal/ReferencePathNode;

    return-object v0
.end method
