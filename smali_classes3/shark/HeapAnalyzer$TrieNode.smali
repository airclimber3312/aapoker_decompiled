.class public abstract Lshark/HeapAnalyzer$TrieNode;
.super Ljava/lang/Object;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrieNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HeapAnalyzer$TrieNode$ParentNode;,
        Lshark/HeapAnalyzer$TrieNode$LeafNode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/HeapAnalyzer$TrieNode;",
        "",
        "()V",
        "objectId",
        "",
        "getObjectId",
        "()J",
        "LeafNode",
        "ParentNode",
        "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
        "Lshark/HeapAnalyzer$TrieNode$LeafNode;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lshark/HeapAnalyzer$TrieNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getObjectId()J
.end method
