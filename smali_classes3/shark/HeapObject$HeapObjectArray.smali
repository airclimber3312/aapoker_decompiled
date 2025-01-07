.class public final Lshark/HeapObject$HeapObjectArray;
.super Lshark/HeapObject;
.source "HeapObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapObjectArray"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010!\u001a\u00020\tJ\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u0010H\u0016R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lshark/HeapObject$HeapObjectArray;",
        "Lshark/HeapObject;",
        "hprofGraph",
        "Lshark/HprofHeapGraph;",
        "indexedObject",
        "Lshark/internal/IndexedObject$IndexedObjectArray;",
        "objectId",
        "",
        "objectIndex",
        "",
        "(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedObjectArray;JI)V",
        "arrayClass",
        "Lshark/HeapObject$HeapClass;",
        "getArrayClass",
        "()Lshark/HeapObject$HeapClass;",
        "arrayClassName",
        "",
        "getArrayClassName",
        "()Ljava/lang/String;",
        "arrayClassSimpleName",
        "getArrayClassSimpleName",
        "graph",
        "Lshark/HeapGraph;",
        "getGraph",
        "()Lshark/HeapGraph;",
        "getIndexedObject$shark_graph",
        "()Lshark/internal/IndexedObject$IndexedObjectArray;",
        "getObjectId",
        "()J",
        "getObjectIndex",
        "()I",
        "recordSize",
        "getRecordSize",
        "readByteSize",
        "readElements",
        "Lkotlin/sequences/Sequence;",
        "Lshark/HeapValue;",
        "readRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;",
        "toString",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final hprofGraph:Lshark/HprofHeapGraph;

.field private final indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

.field private final objectId:J

.field private final objectIndex:I


# direct methods
.method public constructor <init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedObjectArray;JI)V
    .locals 1

    const-string v0, "hprofGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 524
    invoke-direct {p0, v0}, Lshark/HeapObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    iput-object p2, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    iput-wide p3, p0, Lshark/HeapObject$HeapObjectArray;->objectId:J

    iput p5, p0, Lshark/HeapObject$HeapObjectArray;->objectIndex:I

    return-void
.end method

.method public static final synthetic access$getHprofGraph$p(Lshark/HeapObject$HeapObjectArray;)Lshark/HprofHeapGraph;
    .locals 0

    .line 519
    iget-object p0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    return-object p0
.end method


# virtual methods
.method public final getArrayClass()Lshark/HeapObject$HeapClass;
    .locals 3

    .line 545
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    invoke-virtual {v1}, Lshark/internal/IndexedObject$IndexedObjectArray;->getArrayClassId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lshark/HprofHeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lshark/HeapObject$HeapClass;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type shark.HeapObject.HeapClass"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getArrayClassName()Ljava/lang/String;
    .locals 3

    .line 533
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    invoke-virtual {v1}, Lshark/internal/IndexedObject$IndexedObjectArray;->getArrayClassId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lshark/HprofHeapGraph;->className$shark_graph(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayClassSimpleName()Ljava/lang/String;
    .locals 2

    .line 539
    sget-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lshark/HeapObject$Companion;->access$classSimpleName(Lshark/HeapObject$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGraph()Lshark/HeapGraph;
    .locals 1

    .line 527
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    check-cast v0, Lshark/HeapGraph;

    return-object v0
.end method

.method public final getIndexedObject$shark_graph()Lshark/internal/IndexedObject$IndexedObjectArray;
    .locals 1

    .line 521
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 522
    iget-wide v0, p0, Lshark/HeapObject$HeapObjectArray;->objectId:J

    return-wide v0
.end method

.method public getObjectIndex()I
    .locals 1

    .line 523
    iget v0, p0, Lshark/HeapObject$HeapObjectArray;->objectIndex:I

    return v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 564
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedObjectArray;->getRecordSize()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final readByteSize()I
    .locals 4

    .line 551
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readObjectArrayByteSize$shark_graph(JLshark/internal/IndexedObject$IndexedObjectArray;)I

    move-result v0

    return v0
.end method

.method public final readElements()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapValue;",
            ">;"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asSequence([J)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 573
    new-instance v1, Lshark/HeapObject$HeapObjectArray$readElements$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapObjectArray$readElements$1;-><init>(Lshark/HeapObject$HeapObjectArray;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;
    .locals 4

    .line 560
    iget-object v0, p0, Lshark/HeapObject$HeapObjectArray;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapObjectArray;->indexedObject:Lshark/internal/IndexedObject$IndexedObjectArray;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readObjectArrayDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedObjectArray;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object v0

    check-cast v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "object array @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
