.class public final Lshark/HeapObject$HeapClass;
.super Lshark/HeapObject;
.source "HeapObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapClass"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeapObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeapObject.kt\nshark/HeapObject$HeapClass\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,659:1\n2079#2,5:660\n1052#3,2:665\n1052#3,2:667\n*E\n*S KotlinDebug\n*F\n+ 1 HeapObject.kt\nshark/HeapObject$HeapClass\n*L\n163#1,5:660\n200#1,2:665\n207#1,2:667\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0013\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020$H\u0086\u0002J\u000e\u0010<\u001a\u00020$2\u0006\u0010=\u001a\u00020>J\u0006\u0010?\u001a\u00020\tJ\u0008\u0010@\u001a\u00020AH\u0016J\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020>0CJ\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020E0CJ\u0010\u0010F\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020$J\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020:0\u000cJ\u0011\u0010H\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u0000H\u0086\u0004J\u0011\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0000H\u0086\u0004J\u0008\u0010K\u001a\u00020$H\u0016R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000eR\u0011\u0010\u001f\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010 \u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0019R\u0011\u0010!\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\"\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0019R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u000eR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001cR\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u000eR\u0014\u00100\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u001cR\u0011\u00102\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010&R\u0017\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u000eR\u0013\u00106\u001a\u0004\u0018\u00010\u00008F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108\u00a8\u0006L"
    }
    d2 = {
        "Lshark/HeapObject$HeapClass;",
        "Lshark/HeapObject;",
        "hprofGraph",
        "Lshark/HprofHeapGraph;",
        "indexedObject",
        "Lshark/internal/IndexedObject$IndexedClass;",
        "objectId",
        "",
        "objectIndex",
        "",
        "(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedClass;JI)V",
        "classHierarchy",
        "Lkotlin/sequences/Sequence;",
        "getClassHierarchy",
        "()Lkotlin/sequences/Sequence;",
        "directInstances",
        "Lshark/HeapObject$HeapInstance;",
        "getDirectInstances",
        "graph",
        "Lshark/HeapGraph;",
        "getGraph",
        "()Lshark/HeapGraph;",
        "hasReferenceInstanceFields",
        "",
        "getHasReferenceInstanceFields",
        "()Z",
        "instanceByteSize",
        "getInstanceByteSize",
        "()I",
        "instances",
        "getInstances",
        "isArrayClass",
        "isObjectArrayClass",
        "isPrimitiveArrayClass",
        "isPrimitiveWrapperClass",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "objectArrayInstances",
        "Lshark/HeapObject$HeapObjectArray;",
        "getObjectArrayInstances",
        "getObjectId",
        "()J",
        "getObjectIndex",
        "primitiveArrayInstances",
        "Lshark/HeapObject$HeapPrimitiveArray;",
        "getPrimitiveArrayInstances",
        "recordSize",
        "getRecordSize",
        "simpleName",
        "getSimpleName",
        "subclasses",
        "getSubclasses",
        "superclass",
        "getSuperclass",
        "()Lshark/HeapObject$HeapClass;",
        "get",
        "Lshark/HeapField;",
        "fieldName",
        "instanceFieldName",
        "fieldRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "readFieldsByteSize",
        "readRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "readRecordFields",
        "",
        "readRecordStaticFields",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "readStaticField",
        "readStaticFields",
        "subclassOf",
        "superclassOf",
        "subclass",
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

.field private final indexedObject:Lshark/internal/IndexedObject$IndexedClass;

.field private final objectId:J

.field private final objectIndex:I


# direct methods
.method public constructor <init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedClass;JI)V
    .locals 1

    const-string v0, "hprofGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lshark/HeapObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    iput-object p2, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    iput-wide p3, p0, Lshark/HeapObject$HeapClass;->objectId:J

    iput p5, p0, Lshark/HeapObject$HeapClass;->objectIndex:I

    return-void
.end method

.method public static final synthetic access$getHprofGraph$p(Lshark/HeapObject$HeapClass;)Lshark/HprofHeapGraph;
    .locals 0

    .line 84
    iget-object p0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    return-object p0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lshark/HeapField;
    .locals 1

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p1}, Lshark/HeapObject$HeapClass;->readStaticField(Ljava/lang/String;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final getClassHierarchy()Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapClass;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lshark/HeapObject$HeapClass$classHierarchy$1;->INSTANCE:Lshark/HeapObject$HeapClass$classHierarchy$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final getDirectInstances()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapInstance;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v0}, Lshark/HprofHeapGraph;->getInstances()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lshark/HeapObject$HeapClass$directInstances$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapClass$directInstances$1;-><init>(Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getGraph()Lshark/HeapGraph;
    .locals 1

    .line 91
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    check-cast v0, Lshark/HeapGraph;

    return-object v0
.end method

.method public final getHasReferenceInstanceFields()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0, v1}, Lshark/HprofHeapGraph;->classDumpHasReferenceFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Z

    move-result v0

    return v0
.end method

.method public final getInstanceByteSize()I
    .locals 1

    .line 133
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedClass;->getInstanceSize()I

    move-result v0

    return v0
.end method

.method public final getInstances()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapInstance;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->isArrayClass()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v0}, Lshark/HprofHeapGraph;->getInstances()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lshark/HeapObject$HeapClass$instances$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapClass$instances$1;-><init>(Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lshark/HprofHeapGraph;->className$shark_graph(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObjectArrayInstances()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapObjectArray;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->isObjectArrayClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v0}, Lshark/HprofHeapGraph;->getObjectArrays()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lshark/HeapObject$HeapClass$objectArrayInstances$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapClass$objectArrayInstances$1;-><init>(Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lshark/HeapObject$HeapClass;->objectId:J

    return-wide v0
.end method

.method public getObjectIndex()I
    .locals 1

    .line 88
    iget v0, p0, Lshark/HeapObject$HeapClass;->objectIndex:I

    return v0
.end method

.method public final getPrimitiveArrayInstances()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapPrimitiveArray;",
            ">;"
        }
    .end annotation

    .line 234
    sget-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    invoke-virtual {v0}, Lshark/HeapObject$Companion;->getPrimitiveTypesByPrimitiveArrayClassName$shark_graph()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/PrimitiveType;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v1}, Lshark/HprofHeapGraph;->getPrimitiveArrays()Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lshark/HeapObject$HeapClass$primitiveArrayInstances$1;

    invoke-direct {v2, v0}, Lshark/HeapObject$HeapClass$primitiveArrayInstances$1;-><init>(Lshark/PrimitiveType;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 136
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedClass;->getRecordSize()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 2

    .line 124
    sget-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lshark/HeapObject$Companion;->access$classSimpleName(Lshark/HeapObject$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSubclasses()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapClass;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v0}, Lshark/HprofHeapGraph;->getClasses()Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lshark/HeapObject$HeapClass$subclasses$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapClass$subclasses$1;-><init>(Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final getSuperclass()Lshark/HeapObject$HeapClass;
    .locals 5

    .line 178
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedClass;->getSuperclassId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v1}, Lshark/internal/IndexedObject$IndexedClass;->getSuperclassId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lshark/HprofHeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lshark/HeapObject$HeapClass;

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type shark.HeapObject.HeapClass"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final instanceFieldName(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;
    .locals 3

    const-string v0, "fieldRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lshark/HprofHeapGraph;->fieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isArrayClass()Z
    .locals 5

    .line 145
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "[]"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isObjectArrayClass()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->isArrayClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->isPrimitiveArrayClass()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrimitiveArrayClass()Z
    .locals 2

    .line 148
    sget-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    invoke-virtual {v0}, Lshark/HeapObject$Companion;->getPrimitiveTypesByPrimitiveArrayClassName$shark_graph()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPrimitiveWrapperClass()Z
    .locals 2

    .line 97
    invoke-static {}, Lshark/HeapObject;->access$getPrimitiveWrapperClassNames$cp()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final readFieldsByteSize()I
    .locals 5

    .line 163
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->readRecordFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 661
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 662
    check-cast v2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    .line 164
    invoke-virtual {v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 165
    iget-object v2, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {v2}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result v2

    goto :goto_1

    .line 166
    :cond_0
    sget-object v3, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {v3}, Lshark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;
    .locals 4

    .line 254
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readClassDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedClass;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    move-result-object v0

    check-cast v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    return-object v0
.end method

.method public final readRecordFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0, v1}, Lshark/HprofHeapGraph;->classDumpFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readRecordStaticFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapClass;->indexedObject:Lshark/internal/IndexedObject$IndexedClass;

    invoke-virtual {v0, v1}, Lshark/HprofHeapGraph;->classDumpStaticFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readStaticField(Ljava/lang/String;)Lshark/HeapField;
    .locals 5

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->readRecordStaticFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    .line 294
    iget-object v2, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lshark/HprofHeapGraph;->staticFieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    new-instance v0, Lshark/HeapField;

    new-instance v2, Lshark/HeapValue;

    iget-object v3, p0, Lshark/HeapObject$HeapClass;->hprofGraph:Lshark/HprofHeapGraph;

    check-cast v3, Lshark/HeapGraph;

    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getValue()Lshark/ValueHolder;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lshark/HeapValue;-><init>(Lshark/HeapGraph;Lshark/ValueHolder;)V

    invoke-direct {v0, p0, p1, v2}, Lshark/HeapField;-><init>(Lshark/HeapObject$HeapClass;Ljava/lang/String;Lshark/HeapValue;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final readStaticFields()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapField;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->readRecordStaticFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 275
    new-instance v1, Lshark/HeapObject$HeapClass$readStaticFields$1;

    invoke-direct {v1, p0}, Lshark/HeapObject$HeapClass$readStaticFields$1;-><init>(Lshark/HeapObject$HeapClass;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final subclassOf(Lshark/HeapObject$HeapClass;)Z
    .locals 9

    const-string v0, "superclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject$HeapClass;

    .line 207
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v5

    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public final superclassOf(Lshark/HeapObject$HeapClass;)Z
    .locals 7

    const-string v0, "subclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 665
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/HeapObject$HeapClass;

    .line 200
    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v2

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
