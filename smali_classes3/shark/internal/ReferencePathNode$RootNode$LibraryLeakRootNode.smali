.class public final Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;
.super Lshark/internal/ReferencePathNode$RootNode;
.source "ReferencePathNode.kt"

# interfaces
.implements Lshark/internal/ReferencePathNode$LibraryLeakNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/ReferencePathNode$RootNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryLeakRootNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;",
        "Lshark/internal/ReferencePathNode$RootNode;",
        "Lshark/internal/ReferencePathNode$LibraryLeakNode;",
        "objectId",
        "",
        "gcRoot",
        "Lshark/GcRoot;",
        "matcher",
        "Lshark/LibraryLeakReferenceMatcher;",
        "(JLshark/GcRoot;Lshark/LibraryLeakReferenceMatcher;)V",
        "getGcRoot",
        "()Lshark/GcRoot;",
        "getMatcher",
        "()Lshark/LibraryLeakReferenceMatcher;",
        "getObjectId",
        "()J",
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
.field private final gcRoot:Lshark/GcRoot;

.field private final matcher:Lshark/LibraryLeakReferenceMatcher;

.field private final objectId:J


# direct methods
.method public constructor <init>(JLshark/GcRoot;Lshark/LibraryLeakReferenceMatcher;)V
    .locals 1

    const-string v0, "gcRoot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lshark/internal/ReferencePathNode$RootNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->objectId:J

    iput-object p3, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->gcRoot:Lshark/GcRoot;

    iput-object p4, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->matcher:Lshark/LibraryLeakReferenceMatcher;

    return-void
.end method


# virtual methods
.method public getGcRoot()Lshark/GcRoot;
    .locals 1

    .line 19
    iget-object v0, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->gcRoot:Lshark/GcRoot;

    return-object v0
.end method

.method public getMatcher()Lshark/LibraryLeakReferenceMatcher;
    .locals 1

    .line 20
    iget-object v0, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->matcher:Lshark/LibraryLeakReferenceMatcher;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->objectId:J

    return-wide v0
.end method
