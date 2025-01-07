.class public final Lshark/HprofRecordReader;
.super Ljava/lang/Object;
.source "HprofRecordReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofRecordReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00bc\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u0000 {2\u00020\u0001:\u0001{B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020%2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010&\u001a\u00020\'J\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020+2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020\u0008J\u000e\u0010/\u001a\u0002002\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u00020\rJ\u000e\u00104\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u000208J\u0006\u00109\u001a\u00020:J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020>J\u0006\u0010?\u001a\u00020@J\u0006\u0010A\u001a\u00020\u0008J\u000e\u0010B\u001a\u0002002\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u00020FJ\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u00020JJ\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020NJ\u000e\u0010O\u001a\u00020P2\u0006\u0010\u0014\u001a\u00020\rJ\u0006\u0010Q\u001a\u00020RJ\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020VJ\u0016\u0010W\u001a\u00020X2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010Y\u001a\u00020ZJ\u000e\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\u0008J\u0006\u0010^\u001a\u00020_J\u0006\u0010`\u001a\u00020aJ\u0006\u0010b\u001a\u00020cJ\u0006\u0010d\u001a\u00020eJ\u0006\u0010f\u001a\u00020\rJ\u0006\u0010g\u001a\u00020\u0008J\u0006\u0010h\u001a\u00020\rJ\u000e\u0010i\u001a\u00020X2\u0006\u0010\u0019\u001a\u00020\u0008J\u000e\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020\rJ\u0006\u0010m\u001a\u00020nJ\u000e\u0010o\u001a\u00020\r2\u0006\u0010l\u001a\u00020\rJ\u000e\u0010p\u001a\u00020q2\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010p\u001a\u00020q2\u0006\u0010\u0019\u001a\u00020\u0008J\u0006\u0010r\u001a\u00020qJ\u0006\u0010s\u001a\u00020qJ\u0006\u0010t\u001a\u00020qJ\u0006\u0010u\u001a\u00020qJ\u0006\u0010v\u001a\u00020qJ\u0006\u0010w\u001a\u00020qJ\u0006\u0010x\u001a\u00020qJ\u0006\u0010y\u001a\u00020qJ\u0006\u0010z\u001a\u00020qR\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006|"
    }
    d2 = {
        "Lshark/HprofRecordReader;",
        "",
        "header",
        "Lshark/HprofHeader;",
        "source",
        "Lokio/BufferedSource;",
        "(Lshark/HprofHeader;Lokio/BufferedSource;)V",
        "<set-?>",
        "",
        "bytesRead",
        "getBytesRead",
        "()J",
        "identifierByteSize",
        "",
        "typeSizes",
        "",
        "readBoolean",
        "",
        "readBooleanArray",
        "",
        "arrayLength",
        "readByte",
        "",
        "readByteArray",
        "",
        "byteCount",
        "readChar",
        "",
        "readCharArray",
        "",
        "readClassDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "readDebuggerGcRootRecord",
        "Lshark/GcRoot$Debugger;",
        "readDouble",
        "",
        "readDoubleArray",
        "",
        "readFinalizingGcRootRecord",
        "Lshark/GcRoot$Finalizing;",
        "readFloat",
        "",
        "readFloatArray",
        "",
        "readHeapDumpInfoRecord",
        "Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;",
        "readId",
        "readIdArray",
        "",
        "readInstanceDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "readInt",
        "readIntArray",
        "readInternedStringGcRootRecord",
        "Lshark/GcRoot$InternedString;",
        "readJavaFrameGcRootRecord",
        "Lshark/GcRoot$JavaFrame;",
        "readJniGlobalGcRootRecord",
        "Lshark/GcRoot$JniGlobal;",
        "readJniLocalGcRootRecord",
        "Lshark/GcRoot$JniLocal;",
        "readJniMonitorGcRootRecord",
        "Lshark/GcRoot$JniMonitor;",
        "readLoadClassRecord",
        "Lshark/HprofRecord$LoadClassRecord;",
        "readLong",
        "readLongArray",
        "readMonitorUsedGcRootRecord",
        "Lshark/GcRoot$MonitorUsed;",
        "readNativeStackGcRootRecord",
        "Lshark/GcRoot$NativeStack;",
        "readObjectArrayDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;",
        "readPrimitiveArrayDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;",
        "readReferenceCleanupGcRootRecord",
        "Lshark/GcRoot$ReferenceCleanup;",
        "readShort",
        "",
        "readShortArray",
        "",
        "readStackFrameRecord",
        "Lshark/HprofRecord$StackFrameRecord;",
        "readStackTraceRecord",
        "Lshark/HprofRecord$StackTraceRecord;",
        "readStickyClassGcRootRecord",
        "Lshark/GcRoot$StickyClass;",
        "readString",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readStringRecord",
        "Lshark/HprofRecord$StringRecord;",
        "length",
        "readThreadBlockGcRootRecord",
        "Lshark/GcRoot$ThreadBlock;",
        "readThreadObjectGcRootRecord",
        "Lshark/GcRoot$ThreadObject;",
        "readUnknownGcRootRecord",
        "Lshark/GcRoot$Unknown;",
        "readUnreachableGcRootRecord",
        "Lshark/GcRoot$Unreachable;",
        "readUnsignedByte",
        "readUnsignedInt",
        "readUnsignedShort",
        "readUtf8",
        "readValue",
        "Lshark/ValueHolder;",
        "type",
        "readVmInternalGcRootRecord",
        "Lshark/GcRoot$VmInternal;",
        "sizeOf",
        "skip",
        "",
        "skipClassDumpConstantPool",
        "skipClassDumpFields",
        "skipClassDumpHeader",
        "skipClassDumpRecord",
        "skipClassDumpStaticFields",
        "skipHeapDumpInfoRecord",
        "skipInstanceDumpRecord",
        "skipObjectArrayDumpRecord",
        "skipPrimitiveArrayDumpRecord",
        "Companion",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final BOOLEAN_SIZE:I

.field private static final BOOLEAN_TYPE:I

.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_SIZE:I

.field private static final BYTE_TYPE:I

.field private static final CHAR_SIZE:I

.field private static final CHAR_TYPE:I

.field public static final Companion:Lshark/HprofRecordReader$Companion;

.field private static final DOUBLE_TYPE:I

.field private static final FLOAT_TYPE:I

.field private static final INT_MASK:J = 0xffffffffL

.field private static final INT_SIZE:I

.field private static final INT_TYPE:I

.field private static final LONG_SIZE:I

.field private static final LONG_TYPE:I

.field private static final SHORT_SIZE:I

.field private static final SHORT_TYPE:I


# instance fields
.field private bytesRead:J

.field private final identifierByteSize:I

.field private final source:Lokio/BufferedSource;

.field private final typeSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HprofRecordReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HprofRecordReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofRecordReader;->Companion:Lshark/HprofRecordReader$Companion;

    .line 549
    sget-object v0, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->BOOLEAN_SIZE:I

    .line 550
    sget-object v0, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->CHAR_SIZE:I

    .line 551
    sget-object v0, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->BYTE_SIZE:I

    .line 552
    sget-object v0, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->SHORT_SIZE:I

    .line 553
    sget-object v0, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->INT_SIZE:I

    .line 554
    sget-object v0, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getByteSize()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->LONG_SIZE:I

    .line 556
    sget-object v0, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->BOOLEAN_TYPE:I

    .line 557
    sget-object v0, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->CHAR_TYPE:I

    .line 558
    sget-object v0, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->FLOAT_TYPE:I

    .line 559
    sget-object v0, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->DOUBLE_TYPE:I

    .line 560
    sget-object v0, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->BYTE_TYPE:I

    .line 561
    sget-object v0, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->SHORT_TYPE:I

    .line 562
    sget-object v0, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->INT_TYPE:I

    .line 563
    sget-object v0, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/HprofRecordReader;->LONG_TYPE:I

    return-void
.end method

.method public constructor <init>(Lshark/HprofHeader;Lokio/BufferedSource;)V
    .locals 4

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    .line 82
    invoke-virtual {p1}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result p1

    iput p1, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    .line 88
    sget-object p2, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {p2}, Lshark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 92
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lshark/HprofRecordReader;->typeSizes:[I

    return-void
.end method


# virtual methods
.method public final getBytesRead()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    return-wide v0
.end method

.method public final readBoolean()Z
    .locals 4

    .line 506
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    sget v2, Lshark/HprofRecordReader;->BOOLEAN_SIZE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 507
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final readBooleanArray(I)[Z
    .locals 4

    .line 458
    new-array v0, p1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final readByte()B
    .locals 4

    .line 501
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    sget v2, Lshark/HprofRecordReader;->BYTE_SIZE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 502
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    return v0
.end method

.method public final readByteArray(I)[B
    .locals 4

    .line 512
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 513
    iget-object p1, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object p1

    const-string v0, "source.readByteArray(byteCount.toLong())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final readChar()C
    .locals 2

    .line 517
    sget v0, Lshark/HprofRecordReader;->CHAR_SIZE:I

    sget-object v1, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lshark/HprofRecordReader;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final readCharArray(I)[C
    .locals 3

    .line 462
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 463
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readClassDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;
    .locals 21

    move-object/from16 v0, p0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v2

    .line 208
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 209
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v5

    .line 211
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v7

    .line 213
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v9

    .line 215
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v11

    .line 217
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    .line 219
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    .line 223
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v13

    .line 226
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_0

    .line 229
    sget v14, Lshark/HprofRecordReader;->SHORT_SIZE:I

    invoke-virtual {v0, v14}, Lshark/HprofRecordReader;->skip(I)V

    .line 230
    iget-object v14, v0, Lshark/HprofRecordReader;->typeSizes:[I

    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v17

    aget v14, v14, v17

    invoke-virtual {v0, v14}, Lshark/HprofRecordReader;->skip(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v1

    .line 234
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v1, :cond_1

    move-wide/from16 v17, v11

    .line 237
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v11

    move/from16 v19, v1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v1

    move/from16 v20, v13

    .line 239
    invoke-virtual {v0, v1}, Lshark/HprofRecordReader;->readValue(I)Lshark/ValueHolder;

    move-result-object v13

    .line 242
    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    invoke-direct {v0, v11, v12, v1, v13}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;-><init>(JILshark/ValueHolder;)V

    .line 241
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v11, v17

    move/from16 v1, v19

    move/from16 v13, v20

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v11

    move/from16 v20, v13

    .line 250
    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v0, :cond_2

    .line 253
    new-instance v12, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    move-wide v15, v9

    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v13

    invoke-direct {v12, v9, v10, v13}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;-><init>(JI)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide v9, v15

    goto :goto_2

    :cond_2
    move-wide v15, v9

    .line 256
    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    .line 264
    check-cast v14, Ljava/util/List;

    .line 265
    move-object/from16 v19, v1

    check-cast v19, Ljava/util/List;

    move-object v1, v0

    move-wide/from16 v11, v17

    move/from16 v13, v20

    move-object/from16 v15, v19

    .line 256
    invoke-direct/range {v1 .. v15}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;-><init>(JIJJJJILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final readDebuggerGcRootRecord()Lshark/GcRoot$Debugger;
    .locals 3

    .line 166
    new-instance v0, Lshark/GcRoot$Debugger;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$Debugger;-><init>(J)V

    return-object v0
.end method

.method public final readDouble()D
    .locals 2

    .line 525
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray(I)[D
    .locals 4

    .line 480
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readFinalizingGcRootRecord()Lshark/GcRoot$Finalizing;
    .locals 3

    .line 164
    new-instance v0, Lshark/GcRoot$Finalizing;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$Finalizing;-><init>(J)V

    return-object v0
.end method

.method public final readFloat()F
    .locals 1

    .line 521
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatArray(I)[F
    .locals 3

    .line 476
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readHeapDumpInfoRecord()Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;
    .locals 4

    .line 198
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 199
    new-instance v1, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;-><init>(IJ)V

    return-object v1
.end method

.method public final readId()J
    .locals 2

    .line 530
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readLong()J

    move-result-wide v0

    goto :goto_1

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readShort()S

    move-result v0

    goto :goto_0

    .line 531
    :cond_3
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readByte()B

    move-result v0

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0
.end method

.method public final readIdArray(I)[J
    .locals 4

    .line 454
    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readInstanceDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;
    .locals 8

    .line 184
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 185
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 186
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 187
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 188
    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->readByteArray(I)[B

    move-result-object v6

    .line 189
    new-instance v7, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;-><init>(JIJ[B)V

    return-object v7
.end method

.method public final readInt()I
    .locals 4

    .line 449
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    sget v2, Lshark/HprofRecordReader;->INT_SIZE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 450
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    return v0
.end method

.method public final readIntArray(I)[I
    .locals 3

    .line 488
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readInternedStringGcRootRecord()Lshark/GcRoot$InternedString;
    .locals 3

    .line 162
    new-instance v0, Lshark/GcRoot$InternedString;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$InternedString;-><init>(J)V

    return-object v0
.end method

.method public final readJavaFrameGcRootRecord()Lshark/GcRoot$JavaFrame;
    .locals 5

    .line 139
    new-instance v0, Lshark/GcRoot$JavaFrame;

    .line 140
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 141
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 142
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 139
    invoke-direct {v0, v1, v2, v3, v4}, Lshark/GcRoot$JavaFrame;-><init>(JII)V

    return-object v0
.end method

.method public final readJniGlobalGcRootRecord()Lshark/GcRoot$JniGlobal;
    .locals 5

    .line 128
    new-instance v0, Lshark/GcRoot$JniGlobal;

    .line 129
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 130
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v3

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lshark/GcRoot$JniGlobal;-><init>(JJ)V

    return-object v0
.end method

.method public final readJniLocalGcRootRecord()Lshark/GcRoot$JniLocal;
    .locals 5

    .line 133
    new-instance v0, Lshark/GcRoot$JniLocal;

    .line 134
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 135
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 136
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 133
    invoke-direct {v0, v1, v2, v3, v4}, Lshark/GcRoot$JniLocal;-><init>(JII)V

    return-object v0
.end method

.method public final readJniMonitorGcRootRecord()Lshark/GcRoot$JniMonitor;
    .locals 5

    .line 172
    new-instance v0, Lshark/GcRoot$JniMonitor;

    .line 173
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 174
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 175
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 172
    invoke-direct {v0, v1, v2, v3, v4}, Lshark/GcRoot$JniMonitor;-><init>(JII)V

    return-object v0
.end method

.method public final readLoadClassRecord()Lshark/HprofRecord$LoadClassRecord;
    .locals 8

    .line 104
    new-instance v7, Lshark/HprofRecord$LoadClassRecord;

    .line 105
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v2

    .line 107
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 108
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v5

    move-object v0, v7

    .line 104
    invoke-direct/range {v0 .. v6}, Lshark/HprofRecord$LoadClassRecord;-><init>(IJIJ)V

    return-object v7
.end method

.method public final readLong()J
    .locals 4

    .line 496
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    sget v2, Lshark/HprofRecordReader;->LONG_SIZE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 497
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray(I)[J
    .locals 4

    .line 492
    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readMonitorUsedGcRootRecord()Lshark/GcRoot$MonitorUsed;
    .locals 3

    .line 154
    new-instance v0, Lshark/GcRoot$MonitorUsed;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$MonitorUsed;-><init>(J)V

    return-object v0
.end method

.method public final readNativeStackGcRootRecord()Lshark/GcRoot$NativeStack;
    .locals 4

    .line 145
    new-instance v0, Lshark/GcRoot$NativeStack;

    .line 146
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 147
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 145
    invoke-direct {v0, v1, v2, v3}, Lshark/GcRoot$NativeStack;-><init>(JI)V

    return-object v0
.end method

.method public final readObjectArrayDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;
    .locals 8

    .line 310
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 312
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 313
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 314
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 315
    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->readIdArray(I)[J

    move-result-object v6

    .line 316
    new-instance v7, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;-><init>(JIJ[J)V

    return-object v7
.end method

.method public final readPrimitiveArrayDumpRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;
    .locals 6

    .line 273
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v0

    .line 274
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v2

    .line 276
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 277
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v4

    .line 278
    sget v5, Lshark/HprofRecordReader;->BOOLEAN_TYPE:I

    if-ne v4, v5, :cond_0

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    .line 279
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readBooleanArray(I)[Z

    move-result-object v3

    .line 278
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;-><init>(JI[Z)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto/16 :goto_0

    .line 281
    :cond_0
    sget v5, Lshark/HprofRecordReader;->CHAR_TYPE:I

    if-ne v4, v5, :cond_1

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    .line 282
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readCharArray(I)[C

    move-result-object v3

    .line 281
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;-><init>(JI[C)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 284
    :cond_1
    sget v5, Lshark/HprofRecordReader;->FLOAT_TYPE:I

    if-ne v4, v5, :cond_2

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    .line 285
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readFloatArray(I)[F

    move-result-object v3

    .line 284
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;-><init>(JI[F)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 287
    :cond_2
    sget v5, Lshark/HprofRecordReader;->DOUBLE_TYPE:I

    if-ne v4, v5, :cond_3

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    .line 288
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readDoubleArray(I)[D

    move-result-object v3

    .line 287
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;-><init>(JI[D)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 290
    :cond_3
    sget v5, Lshark/HprofRecordReader;->BYTE_TYPE:I

    if-ne v4, v5, :cond_4

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    .line 291
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readByteArray(I)[B

    move-result-object v3

    .line 290
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;-><init>(JI[B)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 293
    :cond_4
    sget v5, Lshark/HprofRecordReader;->SHORT_TYPE:I

    if-ne v4, v5, :cond_5

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    .line 294
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readShortArray(I)[S

    move-result-object v3

    .line 293
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;-><init>(JI[S)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 296
    :cond_5
    sget v5, Lshark/HprofRecordReader;->INT_TYPE:I

    if-ne v4, v5, :cond_6

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    .line 297
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readIntArray(I)[I

    move-result-object v3

    .line 296
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;-><init>(JI[I)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    goto :goto_0

    .line 299
    :cond_6
    sget v5, Lshark/HprofRecordReader;->LONG_TYPE:I

    if-ne v4, v5, :cond_7

    new-instance v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    .line 300
    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readLongArray(I)[J

    move-result-object v3

    .line 299
    invoke-direct {v4, v0, v1, v2, v3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;-><init>(JI[J)V

    check-cast v4, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    :goto_0
    return-object v4

    .line 302
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final readReferenceCleanupGcRootRecord()Lshark/GcRoot$ReferenceCleanup;
    .locals 3

    .line 168
    new-instance v0, Lshark/GcRoot$ReferenceCleanup;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$ReferenceCleanup;-><init>(J)V

    return-object v0
.end method

.method public final readShort()S
    .locals 4

    .line 444
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    sget v2, Lshark/HprofRecordReader;->SHORT_SIZE:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 445
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    return v0
.end method

.method public final readShortArray(I)[S
    .locals 3

    .line 484
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final readStackFrameRecord()Lshark/HprofRecord$StackFrameRecord;
    .locals 12

    .line 111
    new-instance v11, Lshark/HprofRecord$StackFrameRecord;

    .line 112
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 113
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v3

    .line 114
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v5

    .line 115
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v7

    .line 116
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v9

    .line 117
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v10

    move-object v0, v11

    .line 111
    invoke-direct/range {v0 .. v10}, Lshark/HprofRecord$StackFrameRecord;-><init>(JJJJII)V

    return-object v11
.end method

.method public final readStackTraceRecord()Lshark/HprofRecord$StackTraceRecord;
    .locals 4

    .line 120
    new-instance v0, Lshark/HprofRecord$StackTraceRecord;

    .line 121
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v2

    .line 123
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->readIdArray(I)[J

    move-result-object v3

    .line 120
    invoke-direct {v0, v1, v2, v3}, Lshark/HprofRecord$StackTraceRecord;-><init>(II[J)V

    return-object v0
.end method

.method public final readStickyClassGcRootRecord()Lshark/GcRoot$StickyClass;
    .locals 3

    .line 150
    new-instance v0, Lshark/GcRoot$StickyClass;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$StickyClass;-><init>(J)V

    return-object v0
.end method

.method public final readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 472
    iget-object p1, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v2, v3, p2}, Lokio/BufferedSource;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "source.readString(byteCount.toLong(), charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final readStringRecord(J)Lshark/HprofRecord$StringRecord;
    .locals 5

    .line 99
    new-instance v0, Lshark/HprofRecord$StringRecord;

    .line 100
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 101
    iget v3, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    int-to-long v3, v3

    sub-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Lshark/HprofRecordReader;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {v0, v1, v2, p1}, Lshark/HprofRecord$StringRecord;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public final readThreadBlockGcRootRecord()Lshark/GcRoot$ThreadBlock;
    .locals 4

    .line 152
    new-instance v0, Lshark/GcRoot$ThreadBlock;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lshark/GcRoot$ThreadBlock;-><init>(JI)V

    return-object v0
.end method

.method public final readThreadObjectGcRootRecord()Lshark/GcRoot$ThreadObject;
    .locals 5

    .line 156
    new-instance v0, Lshark/GcRoot$ThreadObject;

    .line 157
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    .line 158
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v3

    .line 159
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v4

    .line 156
    invoke-direct {v0, v1, v2, v3, v4}, Lshark/GcRoot$ThreadObject;-><init>(JII)V

    return-object v0
.end method

.method public final readUnknownGcRootRecord()Lshark/GcRoot$Unknown;
    .locals 3

    .line 126
    new-instance v0, Lshark/GcRoot$Unknown;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$Unknown;-><init>(J)V

    return-object v0
.end method

.method public final readUnreachableGcRootRecord()Lshark/GcRoot$Unreachable;
    .locals 3

    .line 178
    new-instance v0, Lshark/GcRoot$Unreachable;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$Unreachable;-><init>(J)V

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    .line 422
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedInt()J
    .locals 4

    .line 418
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final readUnsignedShort()I
    .locals 2

    .line 545
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final readUtf8(J)Ljava/lang/String;
    .locals 2

    .line 540
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 541
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "source.readUtf8(byteCount)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final readValue(I)Lshark/ValueHolder;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 430
    new-instance p1, Lshark/ValueHolder$ReferenceHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$ReferenceHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 431
    :cond_0
    sget v0, Lshark/HprofRecordReader;->BOOLEAN_TYPE:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lshark/ValueHolder$BooleanHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readBoolean()Z

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$BooleanHolder;-><init>(Z)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 432
    :cond_1
    sget v0, Lshark/HprofRecordReader;->CHAR_TYPE:I

    if-ne p1, v0, :cond_2

    new-instance p1, Lshark/ValueHolder$CharHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readChar()C

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$CharHolder;-><init>(C)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 433
    :cond_2
    sget v0, Lshark/HprofRecordReader;->FLOAT_TYPE:I

    if-ne p1, v0, :cond_3

    new-instance p1, Lshark/ValueHolder$FloatHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readFloat()F

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$FloatHolder;-><init>(F)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 434
    :cond_3
    sget v0, Lshark/HprofRecordReader;->DOUBLE_TYPE:I

    if-ne p1, v0, :cond_4

    new-instance p1, Lshark/ValueHolder$DoubleHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readDouble()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$DoubleHolder;-><init>(D)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 435
    :cond_4
    sget v0, Lshark/HprofRecordReader;->BYTE_TYPE:I

    if-ne p1, v0, :cond_5

    new-instance p1, Lshark/ValueHolder$ByteHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readByte()B

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ByteHolder;-><init>(B)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 436
    :cond_5
    sget v0, Lshark/HprofRecordReader;->SHORT_TYPE:I

    if-ne p1, v0, :cond_6

    new-instance p1, Lshark/ValueHolder$ShortHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readShort()S

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ShortHolder;-><init>(S)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 437
    :cond_6
    sget v0, Lshark/HprofRecordReader;->INT_TYPE:I

    if-ne p1, v0, :cond_7

    new-instance p1, Lshark/ValueHolder$IntHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$IntHolder;-><init>(I)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 438
    :cond_7
    sget v0, Lshark/HprofRecordReader;->LONG_TYPE:I

    if-ne p1, v0, :cond_8

    new-instance p1, Lshark/ValueHolder$LongHolder;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$LongHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    :goto_0
    return-object p1

    .line 439
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final readVmInternalGcRootRecord()Lshark/GcRoot$VmInternal;
    .locals 3

    .line 170
    new-instance v0, Lshark/GcRoot$VmInternal;

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lshark/GcRoot$VmInternal;-><init>(J)V

    return-object v0
.end method

.method public final sizeOf(I)I
    .locals 1

    .line 97
    iget-object v0, p0, Lshark/HprofRecordReader;->typeSizes:[I

    aget p1, v0, p1

    return p1
.end method

.method public final skip(I)V
    .locals 4

    .line 408
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 409
    iget-object p1, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    return-void
.end method

.method public final skip(J)V
    .locals 2

    .line 413
    iget-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lshark/HprofRecordReader;->bytesRead:J

    .line 414
    iget-object v0, p0, Lshark/HprofRecordReader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void
.end method

.method public final skipClassDumpConstantPool()V
    .locals 3

    .line 331
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 334
    sget-object v2, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v2}, Lshark/PrimitiveType;->getByteSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    .line 335
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->sizeOf(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final skipClassDumpFields()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    .line 356
    iget v1, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    invoke-virtual {p0, v1}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method

.method public final skipClassDumpHeader()V
    .locals 2

    .line 325
    sget v0, Lshark/HprofRecordReader;->INT_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    .line 326
    invoke-virtual {p0}, Lshark/HprofRecordReader;->skipClassDumpConstantPool()V

    return-void
.end method

.method public final skipClassDumpRecord()V
    .locals 5

    .line 367
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    sget v1, Lshark/HprofRecordReader;->INT_SIZE:I

    add-int v2, v0, v1

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 366
    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    .line 371
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 374
    sget v3, Lshark/HprofRecordReader;->SHORT_SIZE:I

    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->skip(I)V

    .line 375
    iget-object v3, p0, Lshark/HprofRecordReader;->typeSizes:[I

    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lshark/HprofRecordReader;->skip(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 381
    iget v2, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    .line 382
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v2

    .line 383
    iget-object v3, p0, Lshark/HprofRecordReader;->typeSizes:[I

    aget v2, v3, v2

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    .line 387
    iget v1, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    sget v2, Lshark/HprofRecordReader;->BYTE_SIZE:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method

.method public final skipClassDumpStaticFields()V
    .locals 4

    .line 340
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 342
    iget v2, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    .line 343
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 346
    iget v2, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    goto :goto_1

    .line 348
    :cond_0
    sget-object v3, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    invoke-virtual {v3}, Lshark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 344
    :goto_1
    invoke-virtual {p0, v2}, Lshark/HprofRecordReader;->skip(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final skipHeapDumpInfoRecord()V
    .locals 1

    .line 404
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    add-int/2addr v0, v0

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method

.method public final skipInstanceDumpRecord()V
    .locals 2

    .line 360
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    sget v1, Lshark/HprofRecordReader;->INT_SIZE:I

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lshark/HprofRecordReader;->skip(I)V

    .line 361
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 362
    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method

.method public final skipObjectArrayDumpRecord()V
    .locals 2

    .line 391
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    sget v1, Lshark/HprofRecordReader;->INT_SIZE:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    .line 392
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 393
    iget v1, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    mul-int v0, v0, v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method

.method public final skipPrimitiveArrayDumpRecord()V
    .locals 3

    .line 397
    iget v0, p0, Lshark/HprofRecordReader;->identifierByteSize:I

    sget v1, Lshark/HprofRecordReader;->INT_SIZE:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    .line 398
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readInt()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Lshark/HprofRecordReader;->readUnsignedByte()I

    move-result v1

    .line 400
    iget-object v2, p0, Lshark/HprofRecordReader;->typeSizes:[I

    aget v1, v2, v1

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lshark/HprofRecordReader;->skip(I)V

    return-void
.end method
