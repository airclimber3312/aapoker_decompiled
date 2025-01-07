.class public final Lshark/internal/HprofInMemoryIndex;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/HprofInMemoryIndex$Builder;,
        Lshark/internal/HprofInMemoryIndex$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofInMemoryIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofInMemoryIndex.kt\nshark/internal/HprofInMemoryIndex\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,734:1\n140#2,2:735\n140#2,2:737\n*E\n*S KotlinDebug\n*F\n+ 1 HprofInMemoryIndex.kt\nshark/internal/HprofInMemoryIndex\n*L\n114#1,2:735\n118#1,2:737\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 D2\u00020\u0001:\u0002CDB\u0095\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\u0006\u00a2\u0006\u0002\u0010+J\u000e\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)J\u0016\u0010,\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010-\u001a\u00020)J\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0010\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020)H\u0002J\u0012\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020100J\u0012\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040100J\u0012\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060100J\u0016\u00107\u001a\n\u0012\u0004\u0012\u000209\u0018\u0001082\u0006\u0010:\u001a\u00020)J\u0012\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002090100J\u0012\u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=0100J\u0014\u0010>\u001a\u0008\u0012\u0004\u0012\u000209012\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010@\u001a\u00020\u00182\u0006\u0010:\u001a\u00020)J\u000c\u0010A\u001a\u000202*\u00020BH\u0002R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010\u001b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\"\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001fR\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001fR\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lshark/internal/HprofInMemoryIndex;",
        "",
        "positionSize",
        "",
        "hprofStringCache",
        "Lshark/internal/hppc/LongObjectScatterMap;",
        "",
        "classNames",
        "Lshark/internal/hppc/LongLongScatterMap;",
        "classIndex",
        "Lshark/internal/SortedBytesMap;",
        "instanceIndex",
        "objectArrayIndex",
        "primitiveArrayIndex",
        "gcRoots",
        "",
        "Lshark/GcRoot;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "bytesForClassSize",
        "bytesForInstanceSize",
        "bytesForObjectArraySize",
        "bytesForPrimitiveArraySize",
        "useForwardSlashClassPackageSeparator",
        "",
        "classFieldsReader",
        "Lshark/internal/ClassFieldsReader;",
        "classFieldsIndexSize",
        "(ILshark/internal/hppc/LongObjectScatterMap;Lshark/internal/hppc/LongLongScatterMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Ljava/util/List;Lshark/ProguardMapping;IIIIZLshark/internal/ClassFieldsReader;I)V",
        "classCount",
        "getClassCount",
        "()I",
        "getClassFieldsReader",
        "()Lshark/internal/ClassFieldsReader;",
        "instanceCount",
        "getInstanceCount",
        "objectArrayCount",
        "getObjectArrayCount",
        "primitiveArrayCount",
        "getPrimitiveArrayCount",
        "classId",
        "",
        "className",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "fieldName",
        "id",
        "hprofStringById",
        "indexedClassSequence",
        "Lkotlin/sequences/Sequence;",
        "Lshark/internal/hppc/LongObjectPair;",
        "Lshark/internal/IndexedObject$IndexedClass;",
        "indexedInstanceSequence",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        "indexedObjectArraySequence",
        "Lshark/internal/IndexedObject$IndexedObjectArray;",
        "indexedObjectOrNull",
        "Lshark/internal/hppc/IntObjectPair;",
        "Lshark/internal/IndexedObject;",
        "objectId",
        "indexedObjectSequence",
        "indexedPrimitiveArraySequence",
        "Lshark/internal/IndexedObject$IndexedPrimitiveArray;",
        "objectAtIndex",
        "index",
        "objectIdIsIndexed",
        "readClass",
        "Lshark/internal/ByteSubArray;",
        "Builder",
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
.field public static final Companion:Lshark/internal/HprofInMemoryIndex$Companion;


# instance fields
.field private final bytesForClassSize:I

.field private final bytesForInstanceSize:I

.field private final bytesForObjectArraySize:I

.field private final bytesForPrimitiveArraySize:I

.field private final classFieldsIndexSize:I

.field private final classFieldsReader:Lshark/internal/ClassFieldsReader;

.field private final classIndex:Lshark/internal/SortedBytesMap;

.field private final classNames:Lshark/internal/hppc/LongLongScatterMap;

.field private final gcRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/GcRoot;",
            ">;"
        }
    .end annotation
.end field

.field private final hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lshark/internal/hppc/LongObjectScatterMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceIndex:Lshark/internal/SortedBytesMap;

.field private final objectArrayIndex:Lshark/internal/SortedBytesMap;

.field private final positionSize:I

.field private final primitiveArrayIndex:Lshark/internal/SortedBytesMap;

.field private final proguardMapping:Lshark/ProguardMapping;

.field private final useForwardSlashClassPackageSeparator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/internal/HprofInMemoryIndex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/internal/HprofInMemoryIndex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/internal/HprofInMemoryIndex;->Companion:Lshark/internal/HprofInMemoryIndex$Companion;

    return-void
.end method

.method private constructor <init>(ILshark/internal/hppc/LongObjectScatterMap;Lshark/internal/hppc/LongLongScatterMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Ljava/util/List;Lshark/ProguardMapping;IIIIZLshark/internal/ClassFieldsReader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lshark/internal/hppc/LongObjectScatterMap<",
            "Ljava/lang/String;",
            ">;",
            "Lshark/internal/hppc/LongLongScatterMap;",
            "Lshark/internal/SortedBytesMap;",
            "Lshark/internal/SortedBytesMap;",
            "Lshark/internal/SortedBytesMap;",
            "Lshark/internal/SortedBytesMap;",
            "Ljava/util/List<",
            "+",
            "Lshark/GcRoot;",
            ">;",
            "Lshark/ProguardMapping;",
            "IIIIZ",
            "Lshark/internal/ClassFieldsReader;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    move-object v1, p2

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    move-object v1, p3

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    move-object v1, p4

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    move-object v1, p5

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    move-object v1, p6

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    move-object v1, p7

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    move-object v1, p8

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->gcRoots:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->proguardMapping:Lshark/ProguardMapping;

    move v1, p10

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->bytesForClassSize:I

    move v1, p11

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    move v1, p12

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    move v1, p13

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lshark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex;->classFieldsReader:Lshark/internal/ClassFieldsReader;

    move/from16 v1, p16

    iput v1, v0, Lshark/internal/HprofInMemoryIndex;->classFieldsIndexSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILshark/internal/hppc/LongObjectScatterMap;Lshark/internal/hppc/LongLongScatterMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Ljava/util/List;Lshark/ProguardMapping;IIIIZLshark/internal/ClassFieldsReader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p16}, Lshark/internal/HprofInMemoryIndex;-><init>(ILshark/internal/hppc/LongObjectScatterMap;Lshark/internal/hppc/LongLongScatterMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Ljava/util/List;Lshark/ProguardMapping;IIIIZLshark/internal/ClassFieldsReader;I)V

    return-void
.end method

.method public static final synthetic access$getBytesForInstanceSize$p(Lshark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 51
    iget p0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    return p0
.end method

.method public static final synthetic access$getBytesForObjectArraySize$p(Lshark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 51
    iget p0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    return p0
.end method

.method public static final synthetic access$getBytesForPrimitiveArraySize$p(Lshark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 51
    iget p0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    return p0
.end method

.method public static final synthetic access$getPositionSize$p(Lshark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 51
    iget p0, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    return p0
.end method

.method public static final synthetic access$readClass(Lshark/internal/HprofInMemoryIndex;Lshark/internal/ByteSubArray;)Lshark/internal/IndexedObject$IndexedClass;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lshark/internal/HprofInMemoryIndex;->readClass(Lshark/internal/ByteSubArray;)Lshark/internal/IndexedObject$IndexedClass;

    move-result-object p0

    return-object p0
.end method

.method private final hprofStringById(J)Ljava/lang/String;
    .locals 3

    .line 299
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/hppc/LongObjectScatterMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hprof string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " not in cache"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final readClass(Lshark/internal/ByteSubArray;)Lshark/internal/IndexedObject$IndexedClass;
    .locals 10

    .line 265
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v2

    .line 266
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v4

    .line 267
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readInt()I

    move-result v6

    .line 269
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForClassSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    .line 270
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->classFieldsIndexSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v0

    long-to-int v9, v0

    .line 272
    new-instance p1, Lshark/internal/IndexedObject$IndexedClass;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lshark/internal/IndexedObject$IndexedClass;-><init>(JJIJI)V

    return-object p1
.end method


# virtual methods
.method public final classId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lshark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 109
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-virtual {v0}, Lshark/internal/hppc/LongObjectScatterMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 735
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lshark/internal/hppc/LongObjectPair;

    .line 114
    invoke-virtual {v3}, Lshark/internal/hppc/LongObjectPair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 736
    :goto_0
    check-cast v1, Lshark/internal/hppc/LongObjectPair;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lshark/internal/hppc/LongObjectPair;->getFirst()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_7

    .line 116
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 117
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    invoke-virtual {p1}, Lshark/internal/hppc/LongLongScatterMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 737
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lshark/internal/hppc/LongLongPair;

    .line 118
    invoke-virtual {v4}, Lshark/internal/hppc/LongLongPair;->getSecond()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_6
    move-object v3, v2

    .line 738
    :goto_3
    check-cast v3, Lshark/internal/hppc/LongLongPair;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lshark/internal/hppc/LongLongPair;->getFirst()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v2, p1

    :cond_7
    return-object v2
.end method

.method public final className(J)Ljava/lang/String;
    .locals 6

    .line 96
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->get(J)J

    move-result-wide p1

    .line 97
    invoke-direct {p0, p1, p2}, Lshark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lshark/internal/HprofInMemoryIndex;->proguardMapping:Lshark/ProguardMapping;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lshark/ProguardMapping;->deobfuscateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 99
    :goto_0
    iget-boolean p1, p0, Lshark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    if-eqz p1, :cond_1

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 101
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final fieldName(JJ)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-direct {p0, p3, p4}, Lshark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p3

    .line 87
    iget-object p4, p0, Lshark/internal/HprofInMemoryIndex;->proguardMapping:Lshark/ProguardMapping;

    if-eqz p4, :cond_0

    .line 88
    iget-object p4, p0, Lshark/internal/HprofInMemoryIndex;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    invoke-virtual {p4, p1, p2}, Lshark/internal/hppc/LongLongScatterMap;->get(J)J

    move-result-wide p1

    .line 89
    invoke-direct {p0, p1, p2}, Lshark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lshark/internal/HprofInMemoryIndex;->proguardMapping:Lshark/ProguardMapping;

    invoke-virtual {p2, p1, p3}, Lshark/ProguardMapping;->deobfuscateFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    return-object p3
.end method

.method public final gcRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/GcRoot;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->gcRoots:Ljava/util/List;

    return-object v0
.end method

.method public final getClassCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getClassFieldsReader()Lshark/internal/ClassFieldsReader;
    .locals 1

    .line 66
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classFieldsReader:Lshark/internal/ClassFieldsReader;

    return-object v0
.end method

.method public final getInstanceCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getObjectArrayCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getPrimitiveArrayCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final indexedClassSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedClass;",
            ">;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 125
    new-instance v1, Lshark/internal/HprofInMemoryIndex$indexedClassSequence$1;

    invoke-direct {v1, p0}, Lshark/internal/HprofInMemoryIndex$indexedClassSequence$1;-><init>(Lshark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedInstanceSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedInstance;",
            ">;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 134
    new-instance v1, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;

    invoke-direct {v1, p0}, Lshark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;-><init>(Lshark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedObjectArraySequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedObjectArray;",
            ">;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 148
    new-instance v1, Lshark/internal/HprofInMemoryIndex$indexedObjectArraySequence$1;

    invoke-direct {v1, p0}, Lshark/internal/HprofInMemoryIndex$indexedObjectArraySequence$1;-><init>(Lshark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedObjectOrNull(J)Lshark/internal/hppc/IntObjectPair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lshark/internal/hppc/IntObjectPair<",
            "Lshark/internal/IndexedObject;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 230
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lshark/internal/HprofInMemoryIndex;->readClass(Lshark/internal/ByteSubArray;)Lshark/internal/IndexedObject$IndexedClass;

    move-result-object p1

    invoke-static {v0, p1}, Lshark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 233
    :cond_0
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_1

    .line 235
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p2}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result p2

    add-int/2addr p2, v0

    new-instance v7, Lshark/internal/IndexedObject$IndexedInstance;

    .line 237
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v1

    .line 238
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v3

    .line 239
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v0, v7

    .line 236
    invoke-direct/range {v0 .. v6}, Lshark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    invoke-static {p2, v7}, Lshark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 242
    :cond_1
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_2

    .line 244
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p2}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result p2

    iget-object v1, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v1}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    new-instance v7, Lshark/internal/IndexedObject$IndexedObjectArray;

    .line 246
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v1

    .line 247
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v3

    .line 248
    iget v0, p0, Lshark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    invoke-virtual {p1, v0}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v0, v7

    .line 245
    invoke-direct/range {v0 .. v6}, Lshark/internal/IndexedObject$IndexedObjectArray;-><init>(JJJ)V

    invoke-static {p2, v7}, Lshark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 251
    :cond_2
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->indexOf(J)I

    move-result p1

    if-ltz p1, :cond_3

    .line 253
    iget-object p2, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p2, p1}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p2

    .line 254
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v0

    iget-object v1, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v1}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result p1

    add-int/2addr v0, p1

    new-instance p1, Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    .line 255
    iget v1, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p2, v1}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v2

    .line 256
    invoke-static {}, Lshark/PrimitiveType;->values()[Lshark/PrimitiveType;

    move-result-object v1

    invoke-virtual {p2}, Lshark/internal/ByteSubArray;->readByte()B

    move-result v4

    .line 257
    aget-object v4, v1, v4

    .line 258
    iget v1, p0, Lshark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    invoke-virtual {p2, v1}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v1, p1

    .line 254
    invoke-direct/range {v1 .. v6}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;-><init>(JLshark/PrimitiveType;J)V

    invoke-static {v0, p1}, Lshark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final indexedObjectSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject;",
            ">;>;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lshark/internal/HprofInMemoryIndex;->indexedClassSequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lshark/internal/HprofInMemoryIndex;->indexedInstanceSequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lshark/internal/HprofInMemoryIndex;->indexedObjectArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lshark/internal/HprofInMemoryIndex;->indexedPrimitiveArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedPrimitiveArraySequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject$IndexedPrimitiveArray;",
            ">;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lshark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 162
    new-instance v1, Lshark/internal/HprofInMemoryIndex$indexedPrimitiveArraySequence$1;

    invoke-direct {v1, p0}, Lshark/internal/HprofInMemoryIndex$indexedPrimitiveArraySequence$1;-><init>(Lshark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final objectAtIndex(I)Lshark/internal/hppc/LongObjectPair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lshark/internal/hppc/LongObjectPair<",
            "Lshark/internal/IndexedObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v2}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 190
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1}, Lshark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 191
    iget-object v2, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v2, p1}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 192
    invoke-direct {p0, p1}, Lshark/internal/HprofInMemoryIndex;->readClass(Lshark/internal/ByteSubArray;)Lshark/internal/IndexedObject$IndexedClass;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    iget-object v2, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v2}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v2

    sub-int v2, p1, v2

    .line 195
    iget-object v4, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 196
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 197
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 198
    new-instance v9, Lshark/internal/IndexedObject$IndexedInstance;

    .line 199
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 200
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 201
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 198
    invoke-direct/range {v2 .. v8}, Lshark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    invoke-static {v0, v1, v9}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 204
    :cond_2
    iget-object v4, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v4

    sub-int/2addr v2, v4

    .line 205
    iget-object v4, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 206
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 207
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 208
    new-instance v9, Lshark/internal/IndexedObject$IndexedObjectArray;

    .line 209
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 210
    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 211
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 208
    invoke-direct/range {v2 .. v8}, Lshark/internal/IndexedObject$IndexedObjectArray;-><init>(JJJ)V

    invoke-static {v0, v1, v9}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 214
    :cond_3
    iget-object v4, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v4

    sub-int/2addr v2, v4

    .line 215
    iget-object v4, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lshark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge p1, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 216
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 217
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lshark/internal/SortedBytesMap;->getAtIndex(I)Lshark/internal/ByteSubArray;

    move-result-object p1

    .line 218
    new-instance v8, Lshark/internal/IndexedObject$IndexedPrimitiveArray;

    .line 219
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 220
    invoke-static {}, Lshark/PrimitiveType;->values()[Lshark/PrimitiveType;

    move-result-object v2

    invoke-virtual {p1}, Lshark/internal/ByteSubArray;->readByte()B

    move-result v5

    .line 221
    aget-object v5, v2, v5

    .line 222
    iget v2, p0, Lshark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    invoke-virtual {p1, v2}, Lshark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v6

    move-object v2, v8

    .line 218
    invoke-direct/range {v2 .. v7}, Lshark/internal/IndexedObject$IndexedPrimitiveArray;-><init>(JLshark/PrimitiveType;J)V

    invoke-static {v0, v1, v8}, Lshark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 215
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 188
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final objectIdIsIndexed(J)Z
    .locals 2

    .line 283
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->classIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->get(J)Lshark/internal/ByteSubArray;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->instanceIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->get(J)Lshark/internal/ByteSubArray;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 289
    :cond_1
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->objectArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->get(J)Lshark/internal/ByteSubArray;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    .line 292
    :cond_2
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lshark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lshark/internal/SortedBytesMap;->get(J)Lshark/internal/ByteSubArray;

    move-result-object p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
