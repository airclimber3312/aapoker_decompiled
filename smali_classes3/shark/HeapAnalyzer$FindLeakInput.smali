.class final Lshark/HeapAnalyzer$FindLeakInput;
.super Ljava/lang/Object;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindLeakInput"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lshark/HeapAnalyzer$FindLeakInput;",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "referenceMatchers",
        "",
        "Lshark/ReferenceMatcher;",
        "computeRetainedHeapSize",
        "",
        "objectInspectors",
        "Lshark/ObjectInspector;",
        "(Lshark/HeapGraph;Ljava/util/List;ZLjava/util/List;)V",
        "getComputeRetainedHeapSize",
        "()Z",
        "getGraph",
        "()Lshark/HeapGraph;",
        "getObjectInspectors",
        "()Ljava/util/List;",
        "getReferenceMatchers",
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
.field private final computeRetainedHeapSize:Z

.field private final graph:Lshark/HeapGraph;

.field private final objectInspectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/ObjectInspector;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/ReferenceMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lshark/HeapGraph;Ljava/util/List;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            "Ljava/util/List<",
            "+",
            "Lshark/ReferenceMatcher;",
            ">;Z",
            "Ljava/util/List<",
            "+",
            "Lshark/ObjectInspector;",
            ">;)V"
        }
    .end annotation

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceMatchers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectInspectors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HeapAnalyzer$FindLeakInput;->graph:Lshark/HeapGraph;

    iput-object p2, p0, Lshark/HeapAnalyzer$FindLeakInput;->referenceMatchers:Ljava/util/List;

    iput-boolean p3, p0, Lshark/HeapAnalyzer$FindLeakInput;->computeRetainedHeapSize:Z

    iput-object p4, p0, Lshark/HeapAnalyzer$FindLeakInput;->objectInspectors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getComputeRetainedHeapSize()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lshark/HeapAnalyzer$FindLeakInput;->computeRetainedHeapSize:Z

    return v0
.end method

.method public final getGraph()Lshark/HeapGraph;
    .locals 1

    .line 64
    iget-object v0, p0, Lshark/HeapAnalyzer$FindLeakInput;->graph:Lshark/HeapGraph;

    return-object v0
.end method

.method public final getObjectInspectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/ObjectInspector;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lshark/HeapAnalyzer$FindLeakInput;->objectInspectors:Ljava/util/List;

    return-object v0
.end method

.method public final getReferenceMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/ReferenceMatcher;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lshark/HeapAnalyzer$FindLeakInput;->referenceMatchers:Ljava/util/List;

    return-object v0
.end method
