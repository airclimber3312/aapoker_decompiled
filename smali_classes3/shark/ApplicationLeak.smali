.class public final Lshark/ApplicationLeak;
.super Lshark/Leak;
.source "HeapAnalysis.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/ApplicationLeak$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0008\u0010\u0016\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lshark/ApplicationLeak;",
        "Lshark/Leak;",
        "leakTraces",
        "",
        "Lshark/LeakTrace;",
        "(Ljava/util/List;)V",
        "getLeakTraces",
        "()Ljava/util/List;",
        "shortDescription",
        "",
        "getShortDescription",
        "()Ljava/lang/String;",
        "signature",
        "getSignature",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/ApplicationLeak$Companion;

.field private static final serialVersionUID:J = 0x748eb7c894bbc5fL


# instance fields
.field private final leakTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/LeakTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/ApplicationLeak$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/ApplicationLeak$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/ApplicationLeak;->Companion:Lshark/ApplicationLeak$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lshark/LeakTrace;",
            ">;)V"
        }
    .end annotation

    const-string v0, "leakTraces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lshark/Leak;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/ApplicationLeak;->leakTraces:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lshark/ApplicationLeak;Ljava/util/List;ILjava/lang/Object;)Lshark/ApplicationLeak;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lshark/ApplicationLeak;->copy(Ljava/util/List;)Lshark/ApplicationLeak;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/LeakTrace;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lshark/ApplicationLeak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lshark/LeakTrace;",
            ">;)",
            "Lshark/ApplicationLeak;"
        }
    .end annotation

    const-string v0, "leakTraces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/ApplicationLeak;

    invoke-direct {v0, p1}, Lshark/ApplicationLeak;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/ApplicationLeak;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/ApplicationLeak;

    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object p1

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

.method public getLeakTraces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/LeakTrace;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lshark/ApplicationLeak;->leakTraces:Ljava/util/List;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 4

    .line 256
    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/LeakTrace;

    .line 257
    invoke-virtual {v0}, Lshark/LeakTrace;->getSuspectReferenceSubpath()Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/LeakTraceReference;

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Lshark/LeakTraceReference;->getReferenceGenericName()Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object v1

    invoke-virtual {v1}, Lshark/LeakTraceObject;->getClassSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lshark/LeakTrace;->getLeakingObject()Lshark/LeakTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/LeakTrace;

    invoke-virtual {v0}, Lshark/LeakTrace;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lshark/ApplicationLeak;->getLeakTraces()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 265
    invoke-super {p0}, Lshark/Leak;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
