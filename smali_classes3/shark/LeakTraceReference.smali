.class public final Lshark/LeakTraceReference;
.super Ljava/lang/Object;
.source "LeakTraceReference.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/LeakTraceReference$ReferenceType;,
        Lshark/LeakTraceReference$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 #2\u00020\u0001:\u0002#$B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006%"
    }
    d2 = {
        "Lshark/LeakTraceReference;",
        "Ljava/io/Serializable;",
        "originObject",
        "Lshark/LeakTraceObject;",
        "referenceType",
        "Lshark/LeakTraceReference$ReferenceType;",
        "owningClassName",
        "",
        "referenceName",
        "(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)V",
        "getOriginObject",
        "()Lshark/LeakTraceObject;",
        "getOwningClassName",
        "()Ljava/lang/String;",
        "owningClassSimpleName",
        "getOwningClassSimpleName",
        "referenceDisplayName",
        "getReferenceDisplayName",
        "referenceGenericName",
        "getReferenceGenericName",
        "getReferenceName",
        "getReferenceType",
        "()Lshark/LeakTraceReference$ReferenceType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
        "ReferenceType",
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
.field public static final Companion:Lshark/LeakTraceReference$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final originObject:Lshark/LeakTraceObject;

.field private final owningClassName:Ljava/lang/String;

.field private final referenceName:Ljava/lang/String;

.field private final referenceType:Lshark/LeakTraceReference$ReferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/LeakTraceReference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/LeakTraceReference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/LeakTraceReference;->Companion:Lshark/LeakTraceReference$Companion;

    return-void
.end method

.method public constructor <init>(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "originObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owningClassName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    iput-object p2, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    iput-object p3, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    iput-object p4, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lshark/LeakTraceReference;Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lshark/LeakTraceReference;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lshark/LeakTraceReference;->copy(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)Lshark/LeakTraceReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lshark/LeakTraceObject;
    .locals 1

    iget-object v0, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    return-object v0
.end method

.method public final component2()Lshark/LeakTraceReference$ReferenceType;
    .locals 1

    iget-object v0, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)Lshark/LeakTraceReference;
    .locals 1

    const-string v0, "originObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owningClassName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/LeakTraceReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lshark/LeakTraceReference;-><init>(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/LeakTraceReference;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/LeakTraceReference;

    iget-object v0, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    iget-object v1, p1, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    iget-object v1, p1, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    iget-object v1, p1, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    iget-object p1, p1, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

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

.method public final getOriginObject()Lshark/LeakTraceObject;
    .locals 1

    .line 17
    iget-object v0, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    return-object v0
.end method

.method public final getOwningClassName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwningClassSimpleName()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lshark/internal/StringsKt;->lastSegment(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReferenceDisplayName()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    sget-object v1, Lshark/LeakTraceReference$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lshark/LeakTraceReference$ReferenceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "<Java Local>"

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 44
    :cond_1
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getReferenceGenericName()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    sget-object v1, Lshark/LeakTraceReference$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lshark/LeakTraceReference$ReferenceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "<Java Local>"

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "[x]"

    :goto_0
    return-object v0
.end method

.method public final getReferenceName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferenceType()Lshark/LeakTraceReference$ReferenceType;
    .locals 1

    .line 19
    iget-object v0, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LeakTraceReference(originObject="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lshark/LeakTraceReference;->originObject:Lshark/LeakTraceObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshark/LeakTraceReference;->referenceType:Lshark/LeakTraceReference$ReferenceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owningClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshark/LeakTraceReference;->owningClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshark/LeakTraceReference;->referenceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
