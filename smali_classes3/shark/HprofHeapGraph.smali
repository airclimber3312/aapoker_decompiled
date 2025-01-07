.class public final Lshark/HprofHeapGraph;
.super Ljava/lang/Object;
.source "HprofHeapGraph.kt"

# interfaces
.implements Lshark/CloseableHeapGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofHeapGraph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofHeapGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofHeapGraph.kt\nshark/HprofHeapGraph\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,456:1\n1#2:457\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00f6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 u2\u00020\u0001:\u0001uB\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001b\u00106\u001a\u0008\u0012\u0004\u0012\u0002070\u00172\u0006\u00108\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008:J\u0015\u0010;\u001a\u00020<2\u0006\u00108\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008=J\u001b\u0010>\u001a\u0008\u0012\u0004\u0012\u00020?0\u00172\u0006\u00108\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008@J\u0015\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020*H\u0000\u00a2\u0006\u0002\u0008DJ\u0008\u0010E\u001a\u00020FH\u0016J\u0015\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0000\u00a2\u0006\u0002\u0008KJ\u001d\u0010L\u001a\u00020B2\u0006\u0010C\u001a\u00020*2\u0006\u0010M\u001a\u000207H\u0000\u00a2\u0006\u0002\u0008NJ\u0012\u0010O\u001a\u0004\u0018\u00010\u000f2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010P\u001a\u00020/2\u0006\u0010Q\u001a\u00020*H\u0016J\u0012\u0010R\u001a\u0004\u0018\u00010/2\u0006\u0010Q\u001a\u00020*H\u0016J\u0010\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020\nH\u0016J\u0006\u0010U\u001a\u00020BJ\u0010\u0010V\u001a\u00020<2\u0006\u0010Q\u001a\u00020*H\u0016J\u001d\u0010W\u001a\u00020X2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008ZJ\u001d\u0010[\u001a\u00020J2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020\\H\u0000\u00a2\u0006\u0002\u0008]J\u001d\u0010^\u001a\u00020\n2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020_H\u0000\u00a2\u0006\u0002\u0008`J\u001d\u0010a\u001a\u00020b2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020_H\u0000\u00a2\u0006\u0002\u0008cJ@\u0010d\u001a\u0002He\"\u0008\u0008\u0000\u0010e*\u00020+2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020f2\u0017\u0010g\u001a\u0013\u0012\u0004\u0012\u00020i\u0012\u0004\u0012\u0002He0h\u00a2\u0006\u0002\u0008jH\u0002\u00a2\u0006\u0002\u0010kJ\u001d\u0010l\u001a\u00020\n2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020mH\u0000\u00a2\u0006\u0002\u0008nJ\u001d\u0010o\u001a\u00020p2\u0006\u0010Q\u001a\u00020*2\u0006\u0010Y\u001a\u00020mH\u0000\u00a2\u0006\u0002\u0008qJ\u001d\u0010r\u001a\u00020B2\u0006\u0010C\u001a\u00020*2\u0006\u0010M\u001a\u00020?H\u0000\u00a2\u0006\u0002\u0008sJ \u0010t\u001a\u00020/2\u0006\u0010T\u001a\u00020\n2\u0006\u0010Y\u001a\u00020f2\u0006\u0010Q\u001a\u00020*H\u0002R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u000cR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0011R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u000cR\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0011R\u001a\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u000cR\u001a\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u0011R\u0014\u00101\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u000cR\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u0002040\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006v"
    }
    d2 = {
        "Lshark/HprofHeapGraph;",
        "Lshark/CloseableHeapGraph;",
        "header",
        "Lshark/HprofHeader;",
        "reader",
        "Lshark/RandomAccessHprofReader;",
        "index",
        "Lshark/internal/HprofInMemoryIndex;",
        "(Lshark/HprofHeader;Lshark/RandomAccessHprofReader;Lshark/internal/HprofInMemoryIndex;)V",
        "classCount",
        "",
        "getClassCount",
        "()I",
        "classes",
        "Lkotlin/sequences/Sequence;",
        "Lshark/HeapObject$HeapClass;",
        "getClasses",
        "()Lkotlin/sequences/Sequence;",
        "context",
        "Lshark/GraphContext;",
        "getContext",
        "()Lshark/GraphContext;",
        "gcRoots",
        "",
        "Lshark/GcRoot;",
        "getGcRoots",
        "()Ljava/util/List;",
        "identifierByteSize",
        "getIdentifierByteSize",
        "instanceCount",
        "getInstanceCount",
        "instances",
        "Lshark/HeapObject$HeapInstance;",
        "getInstances",
        "javaLangObjectClass",
        "objectArrayCount",
        "getObjectArrayCount",
        "objectArrays",
        "Lshark/HeapObject$HeapObjectArray;",
        "getObjectArrays",
        "objectCache",
        "Lshark/internal/LruCache;",
        "",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "objectCount",
        "getObjectCount",
        "objects",
        "Lshark/HeapObject;",
        "getObjects",
        "primitiveArrayCount",
        "getPrimitiveArrayCount",
        "primitiveArrays",
        "Lshark/HeapObject$HeapPrimitiveArray;",
        "getPrimitiveArrays",
        "classDumpFields",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "indexedClass",
        "Lshark/internal/IndexedObject$IndexedClass;",
        "classDumpFields$shark_graph",
        "classDumpHasReferenceFields",
        "",
        "classDumpHasReferenceFields$shark_graph",
        "classDumpStaticFields",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "classDumpStaticFields$shark_graph",
        "className",
        "",
        "classId",
        "className$shark_graph",
        "close",
        "",
        "createFieldValuesReader",
        "Lshark/internal/FieldValuesReader;",
        "record",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "createFieldValuesReader$shark_graph",
        "fieldName",
        "fieldRecord",
        "fieldName$shark_graph",
        "findClassByName",
        "findObjectById",
        "objectId",
        "findObjectByIdOrNull",
        "findObjectByIndex",
        "objectIndex",
        "lruCacheStats",
        "objectExists",
        "readClassDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "indexedObject",
        "readClassDumpRecord$shark_graph",
        "readInstanceDumpRecord",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        "readInstanceDumpRecord$shark_graph",
        "readObjectArrayByteSize",
        "Lshark/internal/IndexedObject$IndexedObjectArray;",
        "readObjectArrayByteSize$shark_graph",
        "readObjectArrayDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;",
        "readObjectArrayDumpRecord$shark_graph",
        "readObjectRecord",
        "T",
        "Lshark/internal/IndexedObject;",
        "readBlock",
        "Lkotlin/Function1;",
        "Lshark/HprofRecordReader;",
        "Lkotlin/ExtensionFunctionType;",
        "(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "readPrimitiveArrayByteSize",
        "Lshark/internal/IndexedObject$IndexedPrimitiveArray;",
        "readPrimitiveArrayByteSize$shark_graph",
        "readPrimitiveArrayDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;",
        "readPrimitiveArrayDumpRecord$shark_graph",
        "staticFieldName",
        "staticFieldName$shark_graph",
        "wrapIndexedObject",
        "Companion",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/HprofHeapGraph$Companion;

.field private static INTERNAL_LRU_CACHE_SIZE:I


# instance fields
.field private final context:Lshark/GraphContext;

.field private final header:Lshark/HprofHeader;

.field private final index:Lshark/internal/HprofInMemoryIndex;

.field private final javaLangObjectClass:Lshark/HeapObject$HeapClass;

.field private final objectCache:Lshark/internal/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lshark/internal/LruCache<",
            "Ljava/lang/Long;",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lshark/RandomAccessHprofReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HprofHeapGraph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HprofHeapGraph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofHeapGraph;->Companion:Lshark/HprofHeapGraph$Companion;

    const/16 v0, 0xbb8

    .line 377
    sput v0, Lshark/HprofHeapGraph;->INTERNAL_LRU_CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>(Lshark/HprofHeader;Lshark/RandomAccessHprofReader;Lshark/internal/HprofInMemoryIndex;)V
    .locals 1

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "index"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HprofHeapGraph;->header:Lshark/HprofHeader;

    iput-object p2, p0, Lshark/HprofHeapGraph;->reader:Lshark/RandomAccessHprofReader;

    iput-object p3, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    .line 61
    new-instance p1, Lshark/GraphContext;

    invoke-direct {p1}, Lshark/GraphContext;-><init>()V

    iput-object p1, p0, Lshark/HprofHeapGraph;->context:Lshark/GraphContext;

    .line 132
    new-instance p1, Lshark/internal/LruCache;

    sget p2, Lshark/HprofHeapGraph;->INTERNAL_LRU_CACHE_SIZE:I

    invoke-direct {p1, p2}, Lshark/internal/LruCache;-><init>(I)V

    iput-object p1, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    const-string p1, "java.lang.Object"

    .line 135
    invoke-virtual {p0, p1}, Lshark/HprofHeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object p1

    iput-object p1, p0, Lshark/HprofHeapGraph;->javaLangObjectClass:Lshark/HeapObject$HeapClass;

    return-void
.end method

.method public static final synthetic access$getINTERNAL_LRU_CACHE_SIZE$cp()I
    .locals 1

    .line 53
    sget v0, Lshark/HprofHeapGraph;->INTERNAL_LRU_CACHE_SIZE:I

    return v0
.end method

.method public static final synthetic access$setINTERNAL_LRU_CACHE_SIZE$cp(I)V
    .locals 0

    .line 53
    sput p0, Lshark/HprofHeapGraph;->INTERNAL_LRU_CACHE_SIZE:I

    return-void
.end method

.method public static final synthetic access$wrapIndexedObject(Lshark/HprofHeapGraph;ILshark/internal/IndexedObject;J)Lshark/HeapObject;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lshark/HprofHeapGraph;->wrapIndexedObject(ILshark/internal/IndexedObject;J)Lshark/HeapObject;

    move-result-object p0

    return-object p0
.end method

.method private final readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
            ">(J",
            "Lshark/internal/IndexedObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/HprofRecordReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lshark/internal/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    if-eqz v0, :cond_0

    return-object v0

    .line 343
    :cond_0
    iget-object v1, p0, Lshark/HprofHeapGraph;->reader:Lshark/RandomAccessHprofReader;

    invoke-virtual {p3}, Lshark/internal/IndexedObject;->getPosition()J

    move-result-wide v2

    invoke-virtual {p3}, Lshark/internal/IndexedObject;->getRecordSize()J

    move-result-wide v4

    new-instance p3, Lshark/HprofHeapGraph$readObjectRecord$1;

    invoke-direct {p3, p4}, Lshark/HprofHeapGraph$readObjectRecord$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v6, p3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v1 .. v6}, Lshark/RandomAccessHprofReader;->readRecord(JJLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p3

    .line 345
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    iget-object p4, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1, p3}, Lshark/internal/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private final wrapIndexedObject(ILshark/internal/IndexedObject;J)Lshark/HeapObject;
    .locals 7

    .line 354
    instance-of v0, p2, Lshark/internal/IndexedObject$IndexedClass;

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Lshark/HeapObject$HeapClass;

    move-object v3, p2

    check-cast v3, Lshark/internal/IndexedObject$IndexedClass;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lshark/HeapObject$HeapClass;-><init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedClass;JI)V

    check-cast v0, Lshark/HeapObject;

    goto :goto_0

    .line 357
    :cond_0
    instance-of v0, p2, Lshark/internal/IndexedObject$IndexedInstance;

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Lshark/HeapObject$HeapInstance;

    move-object v3, p2

    check-cast v3, Lshark/internal/IndexedObject$IndexedInstance;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lshark/HeapObject$HeapInstance;-><init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedInstance;JI)V

    check-cast v0, Lshark/HeapObject;

    goto :goto_0

    .line 360
    :cond_1
    instance-of v0, p2, Lshark/internal/IndexedObject$IndexedObjectArray;

    if-eqz v0, :cond_2

    .line 361
    new-instance v0, Lshark/HeapObject$HeapObjectArray;

    move-object v3, p2

    check-cast v3, Lshark/internal/IndexedObject$IndexedObjectArray;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lshark/HeapObject$HeapObjectArray;-><init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedObjectArray;JI)V

    check-cast v0, Lshark/HeapObject;

    goto :goto_0

    .line 363
    :cond_2
    instance-of v0, p2, Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    if-eqz v0, :cond_3

    new-instance v0, Lshark/HeapObject$HeapPrimitiveArray;

    move-object v3, p2

    check-cast v3, Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lshark/HeapObject$HeapPrimitiveArray;-><init>(Lshark/HprofHeapGraph;Lshark/internal/IndexedObject$IndexedPrimitiveArray;JI)V

    check-cast v0, Lshark/HeapObject;

    :goto_0
    return-object v0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final classDumpFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getClassFieldsReader()Lshark/internal/ClassFieldsReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lshark/internal/ClassFieldsReader;->classDumpFields(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final classDumpHasReferenceFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Z
    .locals 1

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getClassFieldsReader()Lshark/internal/ClassFieldsReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lshark/internal/ClassFieldsReader;->classDumpHasReferenceFields(Lshark/internal/IndexedObject$IndexedClass;)Z

    move-result p1

    return p1
.end method

.method public final classDumpStaticFields$shark_graph(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/IndexedObject$IndexedClass;",
            ")",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "indexedClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getClassFieldsReader()Lshark/internal/ClassFieldsReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lshark/internal/ClassFieldsReader;->classDumpStaticFields(Lshark/internal/IndexedObject$IndexedClass;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final className$shark_graph(J)Ljava/lang/String;
    .locals 8

    .line 232
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0, p1, p2}, Lshark/internal/HprofInMemoryIndex;->className(J)Ljava/lang/String;

    move-result-object p1

    .line 233
    iget-object p2, p0, Lshark/HprofHeapGraph;->header:Lshark/HprofHeader;

    invoke-virtual {p2}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object p2

    sget-object v0, Lshark/HprofVersion;->ANDROID:Lshark/HprofVersion;

    if-eq p2, v0, :cond_7

    .line 234
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x5b

    const/4 v7, 0x2

    invoke-static {v1, v2, p2, v7, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/16 v2, 0x5b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 235
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p2

    const-string v0, "[]"

    .line 236
    check-cast v0, Ljava/lang/CharSequence;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_6

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_4

    const/16 p1, 0x53

    if-eq v1, p1, :cond_3

    const/16 p1, 0x5a

    if-eq v1, p1, :cond_2

    const/16 p1, 0x49

    if-eq v1, p1, :cond_1

    const/16 p1, 0x4a

    if-eq v1, p1, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected type char "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 245
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "double"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 243
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "char"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 246
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "byte"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "long"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "int"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "boolean"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "short"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    add-int/2addr p2, v7

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "float"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .line 199
    iget-object v0, p0, Lshark/HprofHeapGraph;->reader:Lshark/RandomAccessHprofReader;

    invoke-virtual {v0}, Lshark/RandomAccessHprofReader;->close()V

    return-void
.end method

.method public final createFieldValuesReader$shark_graph(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;)Lshark/internal/FieldValuesReader;
    .locals 2

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lshark/internal/FieldValuesReader;

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lshark/internal/FieldValuesReader;-><init>(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V

    return-object v0
.end method

.method public final fieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;
    .locals 3

    const-string v0, "fieldRecord"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getNameStringId()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lshark/internal/HprofInMemoryIndex;->fieldName(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;
    .locals 8

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lshark/HprofHeapGraph;->header:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v0

    sget-object v1, Lshark/HprofVersion;->ANDROID:Lshark/HprofVersion;

    if-eq v0, v1, :cond_1

    .line 166
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x53

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "float"

    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x46

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :sswitch_2
    const-string v1, "long"

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x4a

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :sswitch_3
    const-string v1, "char"

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x43

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :sswitch_4
    const-string v1, "byte"

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x42

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :sswitch_5
    const-string v1, "int"

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x49

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :sswitch_6
    const-string v1, "double"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x44

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    .line 178
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_1
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0, p1}, Lshark/internal/HprofInMemoryIndex;->classId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lshark/HprofHeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lshark/HeapObject$HeapClass;

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type shark.HeapObject.HeapClass"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_6
        0x197ef -> :sswitch_5
        0x2e6108 -> :sswitch_4
        0x2e9356 -> :sswitch_3
        0x32c67c -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public findObjectById(J)Lshark/HeapObject;
    .locals 3

    .line 144
    invoke-virtual {p0, p1, p2}, Lshark/HprofHeapGraph;->findObjectByIdOrNull(J)Lshark/HeapObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " not found in heap dump."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public findObjectByIdOrNull(J)Lshark/HeapObject;
    .locals 3

    .line 158
    iget-object v0, p0, Lshark/HprofHeapGraph;->javaLangObjectClass:Lshark/HeapObject$HeapClass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-object p1, p0, Lshark/HprofHeapGraph;->javaLangObjectClass:Lshark/HeapObject$HeapClass;

    check-cast p1, Lshark/HeapObject;

    return-object p1

    .line 160
    :cond_0
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0, p1, p2}, Lshark/internal/HprofInMemoryIndex;->indexedObjectOrNull(J)Lshark/internal/hppc/IntObjectPair;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/internal/hppc/IntObjectPair;->component1()I

    move-result v1

    invoke-virtual {v0}, Lshark/internal/hppc/IntObjectPair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/internal/IndexedObject;

    .line 161
    invoke-direct {p0, v1, v0, p1, p2}, Lshark/HprofHeapGraph;->wrapIndexedObject(ILshark/internal/IndexedObject;J)Lshark/HeapObject;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findObjectByIndex(I)Lshark/HeapObject;
    .locals 3

    .line 150
    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getObjectCount()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0, p1}, Lshark/internal/HprofInMemoryIndex;->objectAtIndex(I)Lshark/internal/hppc/LongObjectPair;

    move-result-object v0

    invoke-virtual {v0}, Lshark/internal/hppc/LongObjectPair;->component1()J

    move-result-wide v1

    invoke-virtual {v0}, Lshark/internal/hppc/LongObjectPair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/internal/IndexedObject;

    .line 154
    invoke-direct {p0, p1, v0, v1, v2}, Lshark/HprofHeapGraph;->wrapIndexedObject(ILshark/internal/IndexedObject;J)Lshark/HeapObject;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be in range [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getObjectCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getClassCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getClassCount()I

    move-result v0

    return v0
.end method

.method public getClasses()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapClass;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 93
    iget-object v1, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v1}, Lshark/internal/HprofInMemoryIndex;->indexedClassSequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 94
    new-instance v2, Lshark/HprofHeapGraph$classes$1;

    invoke-direct {v2, p0, v0}, Lshark/HprofHeapGraph$classes$1;-><init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lshark/GraphContext;
    .locals 1

    .line 61
    iget-object v0, p0, Lshark/HprofHeapGraph;->context:Lshark/GraphContext;

    return-object v0
.end method

.method public getGcRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/GcRoot;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->gcRoots()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierByteSize()I
    .locals 1

    .line 59
    iget-object v0, p0, Lshark/HprofHeapGraph;->header:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v0

    return v0
.end method

.method public getInstanceCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getInstanceCount()I

    move-result v0

    return v0
.end method

.method public getInstances()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapInstance;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getClassCount()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 104
    iget-object v1, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v1}, Lshark/internal/HprofInMemoryIndex;->indexedInstanceSequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 105
    new-instance v2, Lshark/HprofHeapGraph$instances$1;

    invoke-direct {v2, p0, v0}, Lshark/HprofHeapGraph$instances$1;-><init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getObjectArrayCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getObjectArrayCount()I

    move-result v0

    return v0
.end method

.method public getObjectArrays()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapObjectArray;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getClassCount()I

    move-result v1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getInstanceCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 115
    iget-object v1, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v1}, Lshark/internal/HprofInMemoryIndex;->indexedObjectArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lshark/HprofHeapGraph$objectArrays$1;

    invoke-direct {v2, p0, v0}, Lshark/HprofHeapGraph$objectArrays$1;-><init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getObjectCount()I
    .locals 2

    .line 64
    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getClassCount()I

    move-result v0

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getInstanceCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getObjectArrayCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getPrimitiveArrayCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getObjects()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 84
    iget-object v1, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v1}, Lshark/internal/HprofInMemoryIndex;->indexedObjectSequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 85
    new-instance v2, Lshark/HprofHeapGraph$objects$1;

    invoke-direct {v2, p0, v0}, Lshark/HprofHeapGraph$objects$1;-><init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitiveArrayCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0}, Lshark/internal/HprofInMemoryIndex;->getPrimitiveArrayCount()I

    move-result v0

    return v0
.end method

.method public getPrimitiveArrays()Lkotlin/sequences/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/HeapObject$HeapPrimitiveArray;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getClassCount()I

    move-result v1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getInstanceCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getObjectArrayCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 125
    iget-object v1, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v1}, Lshark/internal/HprofInMemoryIndex;->indexedPrimitiveArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lshark/HprofHeapGraph$primitiveArrays$1;

    invoke-direct {v2, p0, v0}, Lshark/HprofHeapGraph$primitiveArrays$1;-><init>(Lshark/HprofHeapGraph;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final lruCacheStats()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    invoke-virtual {v0}, Lshark/internal/LruCache;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectExists(J)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {v0, p1, p2}, Lshark/internal/HprofInMemoryIndex;->objectIdIsIndexed(J)Z

    move-result p1

    return p1
.end method

.method public final readClassDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedClass;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;
    .locals 1

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    check-cast p3, Lshark/internal/IndexedObject;

    sget-object v0, Lshark/HprofHeapGraph$readClassDumpRecord$1;->INSTANCE:Lshark/HprofHeapGraph$readClassDumpRecord$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, p3, v0}, Lshark/HprofHeapGraph;->readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    return-object p1
.end method

.method public final readInstanceDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedInstance;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;
    .locals 1

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    check-cast p3, Lshark/internal/IndexedObject;

    sget-object v0, Lshark/HprofHeapGraph$readInstanceDumpRecord$1;->INSTANCE:Lshark/HprofHeapGraph$readInstanceDumpRecord$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, p3, v0}, Lshark/HprofHeapGraph;->readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    return-object p1
.end method

.method public final readObjectArrayByteSize$shark_graph(JLshark/internal/IndexedObject$IndexedObjectArray;)I
    .locals 8

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lshark/internal/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result p2

    :goto_0
    mul-int p1, p1, p2

    return p1

    .line 274
    :cond_0
    invoke-virtual {p3}, Lshark/internal/IndexedObject$IndexedObjectArray;->getPosition()J

    move-result-wide p1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    sget-object p3, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {p3}, Lshark/PrimitiveType;->getByteSize()I

    move-result p3

    int-to-long v0, p3

    add-long v3, p1, v0

    .line 275
    sget-object p1, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getByteSize()I

    move-result p1

    int-to-long v5, p1

    .line 276
    iget-object v2, p0, Lshark/HprofHeapGraph;->reader:Lshark/RandomAccessHprofReader;

    sget-object p1, Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;->INSTANCE:Lshark/HprofHeapGraph$readObjectArrayByteSize$thinRecordSize$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v2 .. v7}, Lshark/RandomAccessHprofReader;->readRecord(JJLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 279
    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result p2

    goto :goto_0
.end method

.method public final readObjectArrayDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedObjectArray;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;
    .locals 1

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    check-cast p3, Lshark/internal/IndexedObject;

    sget-object v0, Lshark/HprofHeapGraph$readObjectArrayDumpRecord$1;->INSTANCE:Lshark/HprofHeapGraph$readObjectArrayDumpRecord$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, p3, v0}, Lshark/HprofHeapGraph;->readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    return-object p1
.end method

.method public final readPrimitiveArrayByteSize$shark_graph(JLshark/internal/IndexedObject$IndexedPrimitiveArray;)I
    .locals 8

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lshark/HprofHeapGraph;->objectCache:Lshark/internal/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lshark/internal/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    if-eqz p1, :cond_8

    .line 298
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    if-eqz p2, :cond_0

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getArray()[Z

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    :goto_0
    mul-int p1, p1, p2

    goto/16 :goto_1

    .line 299
    :cond_0
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    if-eqz p2, :cond_1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 300
    :cond_1
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    if-eqz p2, :cond_2

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getArray()[F

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 301
    :cond_2
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    if-eqz p2, :cond_3

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getArray()[D

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 302
    :cond_3
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    if-eqz p2, :cond_4

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getArray()[B

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 303
    :cond_4
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    if-eqz p2, :cond_5

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getArray()[S

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 304
    :cond_5
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    if-eqz p2, :cond_6

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getArray()[I

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto :goto_0

    .line 305
    :cond_6
    instance-of p2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    if-eqz p2, :cond_7

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getArray()[J

    move-result-object p1

    array-length p1, p1

    sget-object p2, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    goto/16 :goto_0

    :goto_1
    return p1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 308
    :cond_8
    invoke-virtual {p3}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;->getPosition()J

    move-result-wide p1

    invoke-virtual {p0}, Lshark/HprofHeapGraph;->getIdentifierByteSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    sget-object v0, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    int-to-long v0, v0

    add-long v3, p1, v0

    .line 309
    iget-object v2, p0, Lshark/HprofHeapGraph;->reader:Lshark/RandomAccessHprofReader;

    sget-object p1, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getByteSize()I

    move-result p1

    int-to-long v5, p1

    sget-object p1, Lshark/HprofHeapGraph$readPrimitiveArrayByteSize$size$1;->INSTANCE:Lshark/HprofHeapGraph$readPrimitiveArrayByteSize$size$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v2 .. v7}, Lshark/RandomAccessHprofReader;->readRecord(JJLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 312
    invoke-virtual {p3}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;->getPrimitiveType()Lshark/PrimitiveType;

    move-result-object p2

    invoke-virtual {p2}, Lshark/PrimitiveType;->getByteSize()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method

.method public final readPrimitiveArrayDumpRecord$shark_graph(JLshark/internal/IndexedObject$IndexedPrimitiveArray;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;
    .locals 1

    const-string v0, "indexedObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    check-cast p3, Lshark/internal/IndexedObject;

    sget-object v0, Lshark/HprofHeapGraph$readPrimitiveArrayDumpRecord$1;->INSTANCE:Lshark/HprofHeapGraph$readPrimitiveArrayDumpRecord$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, p3, v0}, Lshark/HprofHeapGraph;->readObjectRecord(JLshark/internal/IndexedObject;Lkotlin/jvm/functions/Function1;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    move-result-object p1

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    return-object p1
.end method

.method public final staticFieldName$shark_graph(JLshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;)Ljava/lang/String;
    .locals 3

    const-string v0, "fieldRecord"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lshark/HprofHeapGraph;->index:Lshark/internal/HprofInMemoryIndex;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getNameStringId()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lshark/internal/HprofInMemoryIndex;->fieldName(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
