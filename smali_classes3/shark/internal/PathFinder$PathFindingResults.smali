.class public final Lshark/internal/PathFinder$PathFindingResults;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathFindingResults"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/internal/PathFinder$PathFindingResults;",
        "",
        "pathsToLeakingObjects",
        "",
        "Lshark/internal/ReferencePathNode;",
        "dominatorTree",
        "Lshark/internal/DominatorTree;",
        "(Ljava/util/List;Lshark/internal/DominatorTree;)V",
        "getDominatorTree",
        "()Lshark/internal/DominatorTree;",
        "getPathsToLeakingObjects",
        "()Ljava/util/List;",
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
.field private final dominatorTree:Lshark/internal/DominatorTree;

.field private final pathsToLeakingObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lshark/internal/DominatorTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lshark/internal/ReferencePathNode;",
            ">;",
            "Lshark/internal/DominatorTree;",
            ")V"
        }
    .end annotation

    const-string v0, "pathsToLeakingObjects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/PathFinder$PathFindingResults;->pathsToLeakingObjects:Ljava/util/List;

    iput-object p2, p0, Lshark/internal/PathFinder$PathFindingResults;->dominatorTree:Lshark/internal/DominatorTree;

    return-void
.end method


# virtual methods
.method public final getDominatorTree()Lshark/internal/DominatorTree;
    .locals 1

    .line 69
    iget-object v0, p0, Lshark/internal/PathFinder$PathFindingResults;->dominatorTree:Lshark/internal/DominatorTree;

    return-object v0
.end method

.method public final getPathsToLeakingObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lshark/internal/PathFinder$PathFindingResults;->pathsToLeakingObjects:Ljava/util/List;

    return-object v0
.end method
