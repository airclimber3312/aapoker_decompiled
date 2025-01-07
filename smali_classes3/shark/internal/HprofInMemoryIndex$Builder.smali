.class final Lshark/internal/HprofInMemoryIndex$Builder;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"

# interfaces
.implements Lshark/OnHprofRecordTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/HprofInMemoryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/J\u0008\u00100\u001a\u000201H\u0002J \u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u000208H\u0016J\u0014\u00109\u001a\u000203*\u0002082\u0006\u0010:\u001a\u00020\u0007H\u0002R\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lshark/internal/HprofInMemoryIndex$Builder;",
        "Lshark/OnHprofRecordTagListener;",
        "longIdentifiers",
        "",
        "maxPosition",
        "",
        "classCount",
        "",
        "instanceCount",
        "objectArrayCount",
        "primitiveArrayCount",
        "bytesForClassSize",
        "bytesForInstanceSize",
        "bytesForObjectArraySize",
        "bytesForPrimitiveArraySize",
        "classFieldsTotalBytes",
        "(ZJIIIIIIIII)V",
        "getBytesForClassSize",
        "()I",
        "getBytesForInstanceSize",
        "getBytesForObjectArraySize",
        "getBytesForPrimitiveArraySize",
        "classFieldBytes",
        "",
        "classFieldsIndex",
        "classFieldsIndexSize",
        "getClassFieldsTotalBytes",
        "classIndex",
        "Lshark/internal/UnsortedByteEntries;",
        "classNames",
        "Lshark/internal/hppc/LongLongScatterMap;",
        "gcRoots",
        "",
        "Lshark/GcRoot;",
        "hprofStringCache",
        "Lshark/internal/hppc/LongObjectScatterMap;",
        "",
        "identifierSize",
        "instanceIndex",
        "objectArrayIndex",
        "positionSize",
        "primitiveArrayIndex",
        "buildIndex",
        "Lshark/internal/HprofInMemoryIndex;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "lastClassFieldsShort",
        "",
        "onHprofRecord",
        "",
        "tag",
        "Lshark/HprofRecordTag;",
        "length",
        "reader",
        "Lshark/HprofRecordReader;",
        "copyToClassFields",
        "byteCount",
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
.field private final bytesForClassSize:I

.field private final bytesForInstanceSize:I

.field private final bytesForObjectArraySize:I

.field private final bytesForPrimitiveArraySize:I

.field private final classFieldBytes:[B

.field private classFieldsIndex:I

.field private final classFieldsIndexSize:I

.field private final classFieldsTotalBytes:I

.field private final classIndex:Lshark/internal/UnsortedByteEntries;

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

.field private final identifierSize:I

.field private final instanceIndex:Lshark/internal/UnsortedByteEntries;

.field private final objectArrayIndex:Lshark/internal/UnsortedByteEntries;

.field private final positionSize:I

.field private final primitiveArrayIndex:Lshark/internal/UnsortedByteEntries;


# direct methods
.method public constructor <init>(ZJIIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    iput v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    iput v3, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    iput v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    iput v5, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsTotalBytes:I

    const/4 v6, 0x4

    if-eqz p1, :cond_0

    const/16 v7, 0x8

    const/16 v15, 0x8

    goto :goto_0

    :cond_0
    const/4 v15, 0x4

    .line 316
    :goto_0
    iput v15, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    .line 317
    sget-object v7, Lshark/internal/HprofInMemoryIndex;->Companion:Lshark/internal/HprofInMemoryIndex$Companion;

    move-wide/from16 v8, p2

    invoke-static {v7, v8, v9}, Lshark/internal/HprofInMemoryIndex$Companion;->access$byteSizeForUnsigned(Lshark/internal/HprofInMemoryIndex$Companion;J)I

    move-result v14

    iput v14, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    .line 318
    sget-object v7, Lshark/internal/HprofInMemoryIndex;->Companion:Lshark/internal/HprofInMemoryIndex$Companion;

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Lshark/internal/HprofInMemoryIndex$Companion;->access$byteSizeForUnsigned(Lshark/internal/HprofInMemoryIndex$Companion;J)I

    move-result v7

    iput v7, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    .line 330
    new-instance v8, Lshark/internal/hppc/LongObjectScatterMap;

    invoke-direct {v8}, Lshark/internal/hppc/LongObjectScatterMap;-><init>()V

    iput-object v8, v0, Lshark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    .line 335
    new-instance v8, Lshark/internal/hppc/LongLongScatterMap;

    move/from16 v10, p4

    invoke-direct {v8, v10}, Lshark/internal/hppc/LongLongScatterMap;-><init>(I)V

    iput-object v8, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    .line 337
    new-array v5, v5, [B

    iput-object v5, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    .line 341
    new-instance v5, Lshark/internal/UnsortedByteEntries;

    add-int v8, v14, v15

    add-int/2addr v8, v6

    add-int/2addr v8, v1

    add-int/2addr v8, v7

    const-wide/16 v11, 0x0

    const/16 v13, 0x8

    const/4 v1, 0x0

    move-object v7, v5

    move/from16 v9, p1

    move v6, v14

    move-object v14, v1

    invoke-direct/range {v7 .. v14}, Lshark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classIndex:Lshark/internal/UnsortedByteEntries;

    .line 346
    new-instance v1, Lshark/internal/UnsortedByteEntries;

    add-int v14, v6, v15

    add-int v8, v14, v2

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p5

    invoke-direct/range {v7 .. v14}, Lshark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lshark/internal/UnsortedByteEntries;

    .line 351
    new-instance v1, Lshark/internal/UnsortedByteEntries;

    add-int v14, v6, v15

    add-int v8, v14, v3

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p6

    invoke-direct/range {v7 .. v14}, Lshark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lshark/internal/UnsortedByteEntries;

    .line 356
    new-instance v1, Lshark/internal/UnsortedByteEntries;

    add-int/lit8 v14, v6, 0x1

    add-int v8, v14, v4

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p7

    invoke-direct/range {v7 .. v14}, Lshark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lshark/internal/UnsortedByteEntries;

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    return-void
.end method

.method private final copyToClassFields(Lshark/HprofRecordReader;I)V
    .locals 4

    const/4 v0, 0x1

    if-gt v0, p2, :cond_0

    .line 366
    :goto_0
    iget-object v1, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    iget v2, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {p1}, Lshark/HprofRecordReader;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    if-eq v0, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final lastClassFieldsShort()S
    .locals 3

    .line 371
    iget-object v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    iget v1, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    .line 372
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public final buildIndex(Lshark/ProguardMapping;Lshark/HprofHeader;)Lshark/internal/HprofInMemoryIndex;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "hprofHeader"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    iget-object v3, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    array-length v3, v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 614
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lshark/internal/UnsortedByteEntries;->moveToSortedMap()Lshark/internal/SortedBytesMap;

    move-result-object v11

    .line 615
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lshark/internal/UnsortedByteEntries;->moveToSortedMap()Lshark/internal/SortedBytesMap;

    move-result-object v12

    .line 616
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lshark/internal/UnsortedByteEntries;->moveToSortedMap()Lshark/internal/SortedBytesMap;

    move-result-object v13

    .line 617
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lshark/internal/UnsortedByteEntries;->moveToSortedMap()Lshark/internal/SortedBytesMap;

    move-result-object v10

    .line 619
    new-instance v1, Lshark/internal/HprofInMemoryIndex;

    .line 620
    iget v7, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    .line 621
    iget-object v8, v0, Lshark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    .line 622
    iget-object v9, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    .line 627
    iget-object v14, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    .line 629
    iget v3, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    .line 630
    iget v15, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    .line 631
    iget v6, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    .line 632
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    .line 633
    invoke-virtual/range {p2 .. p2}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v2

    sget-object v5, Lshark/HprofVersion;->ANDROID:Lshark/HprofVersion;

    if-eq v2, v5, :cond_1

    const/16 v20, 0x1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    .line 634
    :goto_1
    new-instance v2, Lshark/internal/ClassFieldsReader;

    move-object/from16 v21, v2

    iget v5, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    move/from16 v16, v6

    iget-object v6, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    invoke-direct {v2, v5, v6}, Lshark/internal/ClassFieldsReader;-><init>(I[B)V

    .line 635
    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    move/from16 v22, v2

    const/16 v23, 0x0

    move/from16 v2, v16

    move-object v6, v1

    move v5, v15

    move-object/from16 v15, p1

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v4

    .line 619
    invoke-direct/range {v6 .. v23}, Lshark/internal/HprofInMemoryIndex;-><init>(ILshark/internal/hppc/LongObjectScatterMap;Lshark/internal/hppc/LongLongScatterMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Lshark/internal/SortedBytesMap;Ljava/util/List;Lshark/ProguardMapping;IIIIZLshark/internal/ClassFieldsReader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 611
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into fields bytes instead of expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final getBytesForClassSize()I
    .locals 1

    .line 309
    iget v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    return v0
.end method

.method public final getBytesForInstanceSize()I
    .locals 1

    .line 310
    iget v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    return v0
.end method

.method public final getBytesForObjectArraySize()I
    .locals 1

    .line 311
    iget v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    return v0
.end method

.method public final getBytesForPrimitiveArraySize()I
    .locals 1

    .line 312
    iget v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    return v0
.end method

.method public final getClassFieldsTotalBytes()I
    .locals 1

    .line 313
    iget v0, p0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsTotalBytes:I

    return v0
.end method

.method public onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-string v2, "tag"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    sget-object v2, Lshark/internal/HprofInMemoryIndex$Builder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 589
    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 590
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 591
    sget-object v6, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v6}, Lshark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lshark/HprofRecordReader;->skip(I)V

    .line 592
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readInt()I

    move-result v6

    .line 593
    sget-object v7, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {v7}, Lshark/PrimitiveType$Companion;->getPrimitiveTypeByHprofType()Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lshark/PrimitiveType;

    .line 594
    invoke-virtual {v7}, Lshark/PrimitiveType;->getByteSize()I

    move-result v8

    mul-int v6, v6, v8

    invoke-virtual {v1, v6}, Lshark/HprofRecordReader;->skip(I)V

    .line 595
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 596
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lshark/internal/UnsortedByteEntries;->append(J)Lshark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 598
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 599
    invoke-virtual {v7}, Lshark/PrimitiveType;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeByte(B)V

    .line 600
    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    invoke-virtual {v1, v8, v9, v2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 601
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 574
    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 575
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 576
    sget-object v6, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v6}, Lshark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lshark/HprofRecordReader;->skip(I)V

    .line 577
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readInt()I

    move-result v6

    .line 578
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v7

    .line 579
    iget v9, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    mul-int v9, v9, v6

    invoke-virtual {v1, v9}, Lshark/HprofRecordReader;->skip(I)V

    .line 580
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 581
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lshark/internal/UnsortedByteEntries;->append(J)Lshark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 583
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 584
    invoke-virtual {v1, v7, v8}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 585
    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    invoke-virtual {v1, v9, v10, v2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 586
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 559
    :pswitch_2
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 560
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 561
    sget-object v6, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v6}, Lshark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lshark/HprofRecordReader;->skip(I)V

    .line 562
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v6

    .line 563
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readInt()I

    move-result v8

    .line 564
    invoke-virtual {v1, v8}, Lshark/HprofRecordReader;->skip(I)V

    .line 565
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 566
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lshark/internal/UnsortedByteEntries;->append(J)Lshark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 568
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 569
    invoke-virtual {v1, v6, v7}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 570
    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    invoke-virtual {v1, v8, v9, v2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 571
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 506
    :pswitch_3
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 507
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 509
    sget-object v6, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v6}, Lshark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lshark/HprofRecordReader;->skip(I)V

    .line 510
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v6

    .line 511
    iget v8, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    mul-int/lit8 v8, v8, 0x5

    invoke-virtual {v1, v8}, Lshark/HprofRecordReader;->skip(I)V

    .line 515
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readInt()I

    move-result v8

    .line 517
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->skipClassDumpConstantPool()V

    .line 519
    iget v9, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    .line 521
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v10

    const/4 v12, 0x2

    .line 523
    invoke-direct {v0, v1, v12}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    .line 524
    invoke-direct/range {p0 .. p0}, Lshark/internal/HprofInMemoryIndex$Builder;->lastClassFieldsShort()S

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    const/4 v15, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v15, v13, :cond_1

    .line 526
    iget v12, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v12}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    .line 527
    invoke-direct {v0, v1, v14}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    .line 528
    iget-object v12, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    move/from16 v16, v13

    iget v13, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    sub-int/2addr v13, v14

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 530
    iget v12, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v12}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    goto :goto_1

    .line 532
    :cond_0
    sget-object v13, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {v13}, Lshark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-direct {v0, v1, v12}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    const/4 v12, 0x2

    goto :goto_0

    .line 536
    :cond_1
    invoke-direct {v0, v1, v12}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    .line 537
    invoke-direct/range {p0 .. p0}, Lshark/internal/HprofInMemoryIndex$Builder;->lastClassFieldsShort()S

    move-result v12

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_2

    .line 539
    iget v15, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v15}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    .line 540
    invoke-direct {v0, v1, v14}, Lshark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lshark/HprofRecordReader;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 543
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v12

    sub-long/2addr v12, v10

    long-to-int v10, v12

    .line 544
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v11

    sub-long/2addr v11, v2

    .line 546
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classIndex:Lshark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lshark/internal/UnsortedByteEntries;->append(J)Lshark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 548
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 549
    invoke-virtual {v1, v6, v7}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 550
    invoke-virtual {v1, v8}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeInt(I)V

    .line 551
    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    invoke-virtual {v1, v11, v12, v2}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    int-to-long v2, v9

    .line 552
    iget v4, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    invoke-virtual {v1, v2, v3, v4}, Lshark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 553
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/2addr v9, v10

    .line 554
    iget v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    if-ne v9, v1, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_4

    goto/16 :goto_4

    .line 555
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to have moved by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and be equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 499
    :pswitch_4
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readUnreachableGcRootRecord()Lshark/GcRoot$Unreachable;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Lshark/GcRoot$Unreachable;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 501
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 492
    :pswitch_5
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readJniMonitorGcRootRecord()Lshark/GcRoot$JniMonitor;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Lshark/GcRoot$JniMonitor;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_6

    .line 494
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 485
    :pswitch_6
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readVmInternalGcRootRecord()Lshark/GcRoot$VmInternal;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lshark/GcRoot$VmInternal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_7

    .line 487
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 478
    :pswitch_7
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readReferenceCleanupGcRootRecord()Lshark/GcRoot$ReferenceCleanup;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Lshark/GcRoot$ReferenceCleanup;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_8

    .line 480
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 471
    :pswitch_8
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readDebuggerGcRootRecord()Lshark/GcRoot$Debugger;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lshark/GcRoot$Debugger;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    .line 473
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 464
    :pswitch_9
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readFinalizingGcRootRecord()Lshark/GcRoot$Finalizing;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lshark/GcRoot$Finalizing;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_a

    .line 466
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 457
    :pswitch_a
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readInternedStringGcRootRecord()Lshark/GcRoot$InternedString;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lshark/GcRoot$InternedString;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b

    .line 459
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 450
    :pswitch_b
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readThreadObjectGcRootRecord()Lshark/GcRoot$ThreadObject;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Lshark/GcRoot$ThreadObject;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_c

    .line 452
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 443
    :pswitch_c
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readMonitorUsedGcRootRecord()Lshark/GcRoot$MonitorUsed;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lshark/GcRoot$MonitorUsed;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_d

    .line 445
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 436
    :pswitch_d
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readThreadBlockGcRootRecord()Lshark/GcRoot$ThreadBlock;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lshark/GcRoot$ThreadBlock;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_e

    .line 438
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 429
    :pswitch_e
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readStickyClassGcRootRecord()Lshark/GcRoot$StickyClass;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lshark/GcRoot$StickyClass;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_f

    .line 431
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 422
    :pswitch_f
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readNativeStackGcRootRecord()Lshark/GcRoot$NativeStack;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Lshark/GcRoot$NativeStack;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_10

    .line 424
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 415
    :pswitch_10
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readJavaFrameGcRootRecord()Lshark/GcRoot$JavaFrame;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lshark/GcRoot$JavaFrame;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_11

    .line 417
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    .line 408
    :pswitch_11
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readJniLocalGcRootRecord()Lshark/GcRoot$JniLocal;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Lshark/GcRoot$JniLocal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_12

    .line 410
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 401
    :pswitch_12
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readJniGlobalGcRootRecord()Lshark/GcRoot$JniGlobal;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Lshark/GcRoot$JniGlobal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_13

    .line 403
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 394
    :pswitch_13
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readUnknownGcRootRecord()Lshark/GcRoot$Unknown;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lshark/GcRoot$Unknown;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_14

    .line 396
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 386
    :pswitch_14
    sget-object v2, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v2}, Lshark/PrimitiveType;->getByteSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lshark/HprofRecordReader;->skip(I)V

    .line 387
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v2

    .line 389
    sget-object v4, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v4}, Lshark/PrimitiveType;->getByteSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lshark/HprofRecordReader;->skip(I)V

    .line 390
    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 391
    iget-object v1, v0, Lshark/internal/HprofInMemoryIndex$Builder;->classNames:Lshark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v1, v2, v3, v4, v5}, Lshark/internal/hppc/LongLongScatterMap;->set(JJ)J

    goto :goto_4

    .line 382
    :pswitch_15
    iget-object v2, v0, Lshark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lshark/internal/hppc/LongObjectScatterMap;

    invoke-virtual/range {p4 .. p4}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v3

    iget v5, v0, Lshark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    int-to-long v5, v5

    sub-long v5, p2, v5

    invoke-virtual {v1, v5, v6}, Lshark/HprofRecordReader;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lshark/internal/hppc/LongObjectScatterMap;->set(JLjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
