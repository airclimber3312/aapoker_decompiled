.class public final Lshark/internal/ObjectDominators$DominatorNode;
.super Ljava/lang/Object;
.source "ObjectDominators.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/ObjectDominators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DominatorNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J7\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lshark/internal/ObjectDominators$DominatorNode;",
        "",
        "shallowSize",
        "",
        "retainedSize",
        "retainedCount",
        "dominatedObjectIds",
        "",
        "",
        "(IIILjava/util/List;)V",
        "getDominatedObjectIds",
        "()Ljava/util/List;",
        "getRetainedCount",
        "()I",
        "getRetainedSize",
        "getShallowSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final dominatedObjectIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final retainedCount:I

.field private final retainedSize:I

.field private final shallowSize:I


# direct methods
.method public constructor <init>(IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dominatedObjectIds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    iput p2, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    iput p3, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    iput-object p4, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lshark/internal/ObjectDominators$DominatorNode;IIILjava/util/List;ILjava/lang/Object;)Lshark/internal/ObjectDominators$DominatorNode;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lshark/internal/ObjectDominators$DominatorNode;->copy(IIILjava/util/List;)Lshark/internal/ObjectDominators$DominatorNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIILjava/util/List;)Lshark/internal/ObjectDominators$DominatorNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lshark/internal/ObjectDominators$DominatorNode;"
        }
    .end annotation

    const-string v0, "dominatedObjectIds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/internal/ObjectDominators$DominatorNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lshark/internal/ObjectDominators$DominatorNode;-><init>(IIILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/internal/ObjectDominators$DominatorNode;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/internal/ObjectDominators$DominatorNode;

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    iget v1, p1, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    iget v1, p1, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    iget v1, p1, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    iget-object p1, p1, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDominatedObjectIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    return-object v0
.end method

.method public final getRetainedCount()I
    .locals 1

    .line 28
    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    return v0
.end method

.method public final getRetainedSize()I
    .locals 1

    .line 27
    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    return v0
.end method

.method public final getShallowSize()I
    .locals 1

    .line 26
    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DominatorNode(shallowSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->shallowSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retainedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retainedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->retainedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dominatedObjectIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshark/internal/ObjectDominators$DominatorNode;->dominatedObjectIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
