.class public final Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;
.super Lshark/internal/ReferencePathNode$ChildNode;
.source "ReferencePathNode.kt"

# interfaces
.implements Lshark/internal/ReferencePathNode$LibraryLeakNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/ReferencePathNode$ChildNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryLeakChildNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000eR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\r\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;",
        "Lshark/internal/ReferencePathNode$ChildNode;",
        "Lshark/internal/ReferencePathNode$LibraryLeakNode;",
        "objectId",
        "",
        "parent",
        "Lshark/internal/ReferencePathNode;",
        "refFromParentType",
        "Lshark/LeakTraceReference$ReferenceType;",
        "refFromParentName",
        "",
        "matcher",
        "Lshark/LibraryLeakReferenceMatcher;",
        "owningClassId",
        "(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;J)V",
        "getMatcher",
        "()Lshark/LibraryLeakReferenceMatcher;",
        "getObjectId",
        "()J",
        "getOwningClassId",
        "getParent",
        "()Lshark/internal/ReferencePathNode;",
        "getRefFromParentName",
        "()Ljava/lang/String;",
        "getRefFromParentType",
        "()Lshark/LeakTraceReference$ReferenceType;",
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
.field private final matcher:Lshark/LibraryLeakReferenceMatcher;

.field private final objectId:J

.field private final owningClassId:J

.field private final parent:Lshark/internal/ReferencePathNode;

.field private final refFromParentName:Ljava/lang/String;

.field private final refFromParentType:Lshark/LeakTraceReference$ReferenceType;


# direct methods
.method public constructor <init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;J)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refFromParentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refFromParentName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lshark/internal/ReferencePathNode$ChildNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->objectId:J

    iput-object p3, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->parent:Lshark/internal/ReferencePathNode;

    iput-object p4, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->refFromParentType:Lshark/LeakTraceReference$ReferenceType;

    iput-object p5, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->refFromParentName:Ljava/lang/String;

    iput-object p6, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->matcher:Lshark/LibraryLeakReferenceMatcher;

    iput-wide p7, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->owningClassId:J

    return-void
.end method

.method public synthetic constructor <init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v9, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p7

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 51
    invoke-direct/range {v2 .. v10}, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;J)V

    return-void
.end method


# virtual methods
.method public getMatcher()Lshark/LibraryLeakReferenceMatcher;
    .locals 1

    .line 50
    iget-object v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->matcher:Lshark/LibraryLeakReferenceMatcher;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->objectId:J

    return-wide v0
.end method

.method public getOwningClassId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->owningClassId:J

    return-wide v0
.end method

.method public getParent()Lshark/internal/ReferencePathNode;
    .locals 1

    .line 47
    iget-object v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->parent:Lshark/internal/ReferencePathNode;

    return-object v0
.end method

.method public getRefFromParentName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->refFromParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getRefFromParentType()Lshark/LeakTraceReference$ReferenceType;
    .locals 1

    .line 48
    iget-object v0, p0, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;->refFromParentType:Lshark/LeakTraceReference$ReferenceType;

    return-object v0
.end method
