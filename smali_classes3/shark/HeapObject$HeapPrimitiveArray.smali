.class public final Lshark/HeapObject$HeapPrimitiveArray;
.super Lshark/HeapObject;
.source "HeapObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapPrimitiveArray"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010!\u001a\u00020\tJ\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0010H\u0016R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lshark/HeapObject$HeapPrimitiveArray;",
        "Lshark/HeapObject;",
        "hprofGraph",
        "Lshark/HprofHeapGraph;",
        "indexedObject",
        "Lshark/internal/IndexedObject$IndexedPrimitiveArray;",
        "objectId",
        "",
        "objectIndex",
        "",
        "(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedPrimitiveArray;JI)V",
        "arrayClass",
        "Lshark/HeapObject$HeapClass;",
        "getArrayClass",
        "()Lshark/HeapObject$HeapClass;",
        "arrayClassName",
        "",
        "getArrayClassName",
        "()Ljava/lang/String;",
        "graph",
        "Lshark/HeapGraph;",
        "getGraph",
        "()Lshark/HeapGraph;",
        "getObjectId",
        "()J",
        "getObjectIndex",
        "()I",
        "primitiveType",
        "Lshark/PrimitiveType;",
        "getPrimitiveType",
        "()Lshark/PrimitiveType;",
        "recordSize",
        "getRecordSize",
        "readByteSize",
        "readRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;",
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

.field private final indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

.field private final objectId:J

.field private final objectIndex:I


# direct methods
.method public constructor <init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedPrimitiveArray;JI)V
    .locals 1

    const-string v0, "hprofGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 589
    invoke-direct {p0, v0}, Lshark/HeapObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HeapObject$HeapPrimitiveArray;->hprofGraph:Lshark/HprofHeapGraph;

    iput-object p2, p0, Lshark/HeapObject$HeapPrimitiveArray;->indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    iput-wide p3, p0, Lshark/HeapObject$HeapPrimitiveArray;->objectId:J

    iput p5, p0, Lshark/HeapObject$HeapPrimitiveArray;->objectIndex:I

    return-void
.end method


# virtual methods
.method public final getArrayClass()Lshark/HeapObject$HeapClass;
    .locals 2

    .line 617
    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getGraph()Lshark/HeapGraph;

    move-result-object v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final getArrayClassName()Ljava/lang/String;
    .locals 4

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getPrimitiveType()Lshark/PrimitiveType;

    move-result-object v1

    invoke-virtual {v1}, Lshark/PrimitiveType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraph()Lshark/HeapGraph;
    .locals 1

    .line 592
    iget-object v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->hprofGraph:Lshark/HprofHeapGraph;

    check-cast v0, Lshark/HeapGraph;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 587
    iget-wide v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->objectId:J

    return-wide v0
.end method

.method public getObjectIndex()I
    .locals 1

    .line 588
    iget v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->objectIndex:I

    return v0
.end method

.method public final getPrimitiveType()Lshark/PrimitiveType;
    .locals 1

    .line 605
    iget-object v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;->getPrimitiveType()Lshark/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 629
    iget-object v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;->getRecordSize()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final readByteSize()I
    .locals 4

    .line 598
    iget-object v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapPrimitiveArray;->indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readPrimitiveArrayByteSize$shark_graph(JLshark/internal/IndexedObject$IndexedPrimitiveArray;)I

    move-result v0

    return v0
.end method

.method public readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;
    .locals 4

    .line 625
    iget-object v0, p0, Lshark/HeapObject$HeapPrimitiveArray;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapPrimitiveArray;->indexedObject:Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readPrimitiveArrayDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedPrimitiveArray;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    move-result-object v0

    check-cast v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "primitive array @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
