.class public final Lshark/HeapObject$HeapInstance;
.super Lshark/HeapObject;
.source "HeapObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HeapObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapInstance"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeapObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeapObject.kt\nshark/HeapObject$HeapInstance\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,659:1\n1052#2,2:660\n1052#2,2:662\n140#2,2:664\n*E\n*S KotlinDebug\n*F\n+ 1 HeapObject.kt\nshark/HeapObject$HeapInstance\n*L\n378#1,2:660\n392#1,2:662\n418#1,2:664\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u001cH\u0086\u0002J#\u0010(\u001a\u0004\u0018\u00010)2\u000e\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020.0-2\u0006\u0010+\u001a\u00020\u001cH\u0086\u0002J\u0011\u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\u001cH\u0086\u0004J\u0015\u0010/\u001a\u00020\"2\n\u00101\u001a\u0006\u0012\u0002\u0008\u00030-H\u0086\u0004J\u0011\u0010/\u001a\u00020\"2\u0006\u00101\u001a\u00020\u0015H\u0086\u0004J\u0008\u00102\u001a\u0004\u0018\u00010\u001cJ\u0018\u00103\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u001cJ \u00103\u001a\u0004\u0018\u00010)2\u000e\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020.0-2\u0006\u0010+\u001a\u00020\u001cJ\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020)05J\u0008\u00106\u001a\u000207H\u0016J\u0008\u00108\u001a\u00020\u001cH\u0016R\u0011\u0010\u000b\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001eR\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010#R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\rR\u0014\u0010&\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\r\u00a8\u00069"
    }
    d2 = {
        "Lshark/HeapObject$HeapInstance;",
        "Lshark/HeapObject;",
        "hprofGraph",
        "Lshark/HprofHeapGraph;",
        "indexedObject",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        "objectId",
        "",
        "objectIndex",
        "",
        "(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedInstance;JI)V",
        "byteSize",
        "getByteSize",
        "()I",
        "graph",
        "Lshark/HeapGraph;",
        "getGraph",
        "()Lshark/HeapGraph;",
        "getIndexedObject$shark_graph",
        "()Lshark/internal/IndexedObject$IndexedInstance;",
        "instanceClass",
        "Lshark/HeapObject$HeapClass;",
        "getInstanceClass",
        "()Lshark/HeapObject$HeapClass;",
        "instanceClassId",
        "getInstanceClassId",
        "()J",
        "instanceClassName",
        "",
        "getInstanceClassName",
        "()Ljava/lang/String;",
        "instanceClassSimpleName",
        "getInstanceClassSimpleName",
        "isPrimitiveWrapper",
        "",
        "()Z",
        "getObjectId",
        "getObjectIndex",
        "recordSize",
        "getRecordSize",
        "get",
        "Lshark/HeapField;",
        "declaringClassName",
        "fieldName",
        "declaringClass",
        "Lkotlin/reflect/KClass;",
        "",
        "instanceOf",
        "className",
        "expectedClass",
        "readAsJavaString",
        "readField",
        "readFields",
        "Lkotlin/sequences/Sequence;",
        "readRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
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

.field private final indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

.field private final objectId:J

.field private final objectIndex:I


# direct methods
.method public constructor <init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedInstance;JI)V
    .locals 1

    const-string v0, "hprofGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0}, Lshark/HeapObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    iput-object p2, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    iput-wide p3, p0, Lshark/HeapObject$HeapInstance;->objectId:J

    iput p5, p0, Lshark/HeapObject$HeapInstance;->objectIndex:I

    return-void
.end method

.method public static final synthetic access$getHprofGraph$p(Lshark/HeapObject$HeapInstance;)Lshark/HprofHeapGraph;
    .locals 0

    .line 315
    iget-object p0, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    return-object p0
.end method


# virtual methods
.method public final get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;
    .locals 1

    const-string v0, "declaringClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, p1, p2}, Lshark/HeapObject$HeapInstance;->readField(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lkotlin/reflect/KClass;Ljava/lang/String;)Lshark/HeapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lshark/HeapField;"
        }
    .end annotation

    const-string v0, "declaringClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, p1, p2}, Lshark/HeapObject$HeapInstance;->readField(Lkotlin/reflect/KClass;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final getByteSize()I
    .locals 1

    .line 335
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getInstanceByteSize()I

    move-result v0

    return v0
.end method

.method public getGraph()Lshark/HeapGraph;
    .locals 1

    .line 329
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    check-cast v0, Lshark/HeapGraph;

    return-object v0
.end method

.method public final getIndexedObject$shark_graph()Lshark/internal/IndexedObject$IndexedInstance;
    .locals 1

    .line 317
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    return-object v0
.end method

.method public final getInstanceClass()Lshark/HeapObject$HeapClass;
    .locals 3

    .line 353
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    invoke-virtual {v1}, Lshark/internal/IndexedObject$IndexedInstance;->getClassId()J

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

.method public final getInstanceClassId()J
    .locals 2

    .line 359
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedInstance;->getClassId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInstanceClassName()Ljava/lang/String;
    .locals 3

    .line 341
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    iget-object v1, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    invoke-virtual {v1}, Lshark/internal/IndexedObject$IndexedInstance;->getClassId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lshark/HprofHeapGraph;->className$shark_graph(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceClassSimpleName()Ljava/lang/String;
    .locals 2

    .line 347
    sget-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lshark/HeapObject$Companion;->access$classSimpleName(Lshark/HeapObject$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lshark/HeapObject$HeapInstance;->objectId:J

    return-wide v0
.end method

.method public getObjectIndex()I
    .locals 1

    .line 319
    iget v0, p0, Lshark/HeapObject$HeapInstance;->objectIndex:I

    return v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 371
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    invoke-virtual {v0}, Lshark/internal/IndexedObject$IndexedInstance;->getRecordSize()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final instanceOf(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 660
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject$HeapClass;

    .line 378
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final instanceOf(Lkotlin/reflect/KClass;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "expectedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "expectedClass.java.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lshark/HeapObject$HeapInstance;->instanceOf(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final instanceOf(Lshark/HeapObject$HeapClass;)Z
    .locals 8

    const-string v0, "expectedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject$HeapClass;

    .line 392
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v3

    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v5

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final isPrimitiveWrapper()Z
    .locals 2

    .line 326
    invoke-static {}, Lshark/HeapObject;->access$getPrimitiveWrapperClassNames$cp()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final readAsJavaString()Ljava/lang/String;
    .locals 6

    .line 467
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "count"

    .line 472
    invoke-virtual {p0, v1, v0}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/HeapValue;->getAsInt()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 473
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    :goto_1
    const-string v3, "value"

    .line 481
    invoke-virtual {p0, v1, v3}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v4}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v4}, Lshark/HeapObject;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object v4

    .line 482
    instance-of v5, v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    if-eqz v5, :cond_9

    const-string v3, "offset"

    .line 487
    invoke-virtual {p0, v1, v3}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lshark/HeapValue;->getAsInt()Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 492
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-virtual {v4}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object v3

    array-length v3, v3

    if-le v1, v3, :cond_7

    .line 493
    invoke-virtual {v4}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object v0

    array-length v0, v0

    goto :goto_2

    .line 494
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 495
    :goto_2
    invoke-virtual {v4}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_3

    .line 497
    :cond_8
    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-virtual {v4}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object v0

    .line 499
    :goto_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 501
    :cond_9
    instance-of v0, v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    if-eqz v0, :cond_a

    .line 502
    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    invoke-virtual {v4}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Charset.forName(\"UTF-8\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 504
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\'value\' field "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-virtual {v1}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was expected to be either a char or byte array in string instance with id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final readField(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;
    .locals 4

    const-string v0, "declaringClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->readFields()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lshark/HeapField;

    .line 418
    invoke-virtual {v2}, Lshark/HeapField;->getDeclaringClass()Lshark/HeapObject$HeapClass;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lshark/HeapField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 665
    :goto_1
    check-cast v1, Lshark/HeapField;

    return-object v1
.end method

.method public final readField(Lkotlin/reflect/KClass;Ljava/lang/String;)Lshark/HeapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lshark/HeapField;"
        }
    .end annotation

    const-string v0, "declaringClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "declaringClass.java.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lshark/HeapObject$HeapInstance;->readField(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object p1

    return-object p1
.end method

.method public final readFields()Lkotlin/sequences/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapField;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;

    invoke-direct {v0, p0}, Lshark/HeapObject$HeapInstance$readFields$fieldReader$2;-><init>(Lshark/HeapObject$HeapInstance;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v1

    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 449
    new-instance v2, Lshark/HeapObject$HeapInstance$readFields$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lshark/HeapObject$HeapInstance$readFields$1;-><init>(Lshark/HeapObject$HeapInstance;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 457
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;
    .locals 4

    .line 367
    iget-object v0, p0, Lshark/HeapObject$HeapInstance;->hprofGraph:Lshark/HprofHeapGraph;

    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v1

    iget-object v3, p0, Lshark/HeapObject$HeapInstance;->indexedObject:Lshark/internal/IndexedObject$IndexedInstance;

    invoke-virtual {v0, v1, v2, v3}, Lshark/HprofHeapGraph;->readInstanceDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedInstance;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object v0

    check-cast v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instance @"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
