.class public final Lshark/internal/FieldValuesReader;
.super Ljava/lang/Object;
.source "FieldValuesReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/FieldValuesReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0005H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lshark/internal/FieldValuesReader;",
        "",
        "record",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "identifierByteSize",
        "",
        "(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V",
        "position",
        "readBoolean",
        "",
        "readByte",
        "",
        "readChar",
        "",
        "readDouble",
        "",
        "readFloat",
        "",
        "readId",
        "",
        "readInt",
        "readLong",
        "readShort",
        "",
        "readValue",
        "Lshark/ValueHolder;",
        "field",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
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
.field private static final BOOLEAN_TYPE:I

.field private static final BYTE_TYPE:I

.field private static final CHAR_TYPE:I

.field public static final Companion:Lshark/internal/FieldValuesReader$Companion;

.field private static final DOUBLE_TYPE:I

.field private static final FLOAT_TYPE:I

.field private static final INT_TYPE:I

.field private static final LONG_TYPE:I

.field private static final SHORT_TYPE:I


# instance fields
.field private final identifierByteSize:I

.field private position:I

.field private final record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/internal/FieldValuesReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/internal/FieldValuesReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/internal/FieldValuesReader;->Companion:Lshark/internal/FieldValuesReader$Companion;

    .line 103
    sget-object v0, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->BOOLEAN_TYPE:I

    .line 104
    sget-object v0, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->CHAR_TYPE:I

    .line 105
    sget-object v0, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->FLOAT_TYPE:I

    .line 106
    sget-object v0, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->DOUBLE_TYPE:I

    .line 107
    sget-object v0, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->BYTE_TYPE:I

    .line 108
    sget-object v0, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->SHORT_TYPE:I

    .line 109
    sget-object v0, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->INT_TYPE:I

    .line 110
    sget-object v0, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    sput v0, Lshark/internal/FieldValuesReader;->LONG_TYPE:I

    return-void
.end method

.method public constructor <init>(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    iput p2, p0, Lshark/internal/FieldValuesReader;->identifierByteSize:I

    return-void
.end method

.method private final readBoolean()Z
    .locals 4

    .line 59
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 60
    iput v1, p0, Lshark/internal/FieldValuesReader;->position:I

    const/4 v1, 0x0

    int-to-byte v3, v1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private final readByte()B
    .locals 2

    .line 65
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 66
    iput v1, p0, Lshark/internal/FieldValuesReader;->position:I

    return v0
.end method

.method private final readChar()C
    .locals 5

    .line 97
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    sget-object v2, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 98
    iget v0, p0, Lshark/internal/FieldValuesReader;->position:I

    add-int/2addr v0, v4

    iput v0, p0, Lshark/internal/FieldValuesReader;->position:I

    const/4 v0, 0x0

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private final readDouble()D
    .locals 2

    .line 93
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private final readFloat()F
    .locals 1

    .line 89
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method private final readId()J
    .locals 2

    .line 49
    iget v0, p0, Lshark/internal/FieldValuesReader;->identifierByteSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readLong()J

    move-result-wide v0

    goto :goto_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 52
    :cond_1
    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readInt()I

    move-result v0

    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readShort()S

    move-result v0

    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readByte()B

    move-result v0

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0
.end method

.method private final readInt()I
    .locals 2

    .line 71
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    invoke-static {v0, v1}, Lshark/internal/ByteSubArrayKt;->readInt([BI)I

    move-result v0

    .line 72
    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lshark/internal/FieldValuesReader;->position:I

    return v0
.end method

.method private final readLong()J
    .locals 3

    .line 83
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    invoke-static {v0, v1}, Lshark/internal/ByteSubArrayKt;->readLong([BI)J

    move-result-wide v0

    .line 84
    iget v2, p0, Lshark/internal/FieldValuesReader;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lshark/internal/FieldValuesReader;->position:I

    return-wide v0
.end method

.method private final readShort()S
    .locals 2

    .line 77
    iget-object v0, p0, Lshark/internal/FieldValuesReader;->record:Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    invoke-static {v0, v1}, Lshark/internal/ByteSubArrayKt;->readShort([BI)S

    move-result v0

    .line 78
    iget v1, p0, Lshark/internal/FieldValuesReader;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lshark/internal/FieldValuesReader;->position:I

    return v0
.end method


# virtual methods
.method public final readValue(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Lshark/ValueHolder;
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 34
    new-instance p1, Lshark/ValueHolder$ReferenceHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readId()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$ReferenceHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 35
    :cond_0
    sget v1, Lshark/internal/FieldValuesReader;->BOOLEAN_TYPE:I

    if-ne v0, v1, :cond_1

    new-instance p1, Lshark/ValueHolder$BooleanHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readBoolean()Z

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$BooleanHolder;-><init>(Z)V

    check-cast p1, Lshark/ValueHolder;

    goto/16 :goto_0

    .line 36
    :cond_1
    sget v1, Lshark/internal/FieldValuesReader;->CHAR_TYPE:I

    if-ne v0, v1, :cond_2

    new-instance p1, Lshark/ValueHolder$CharHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readChar()C

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$CharHolder;-><init>(C)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 37
    :cond_2
    sget v1, Lshark/internal/FieldValuesReader;->FLOAT_TYPE:I

    if-ne v0, v1, :cond_3

    new-instance p1, Lshark/ValueHolder$FloatHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readFloat()F

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$FloatHolder;-><init>(F)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 38
    :cond_3
    sget v1, Lshark/internal/FieldValuesReader;->DOUBLE_TYPE:I

    if-ne v0, v1, :cond_4

    new-instance p1, Lshark/ValueHolder$DoubleHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readDouble()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$DoubleHolder;-><init>(D)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 39
    :cond_4
    sget v1, Lshark/internal/FieldValuesReader;->BYTE_TYPE:I

    if-ne v0, v1, :cond_5

    new-instance p1, Lshark/ValueHolder$ByteHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readByte()B

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ByteHolder;-><init>(B)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 40
    :cond_5
    sget v1, Lshark/internal/FieldValuesReader;->SHORT_TYPE:I

    if-ne v0, v1, :cond_6

    new-instance p1, Lshark/ValueHolder$ShortHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readShort()S

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$ShortHolder;-><init>(S)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 41
    :cond_6
    sget v1, Lshark/internal/FieldValuesReader;->INT_TYPE:I

    if-ne v0, v1, :cond_7

    new-instance p1, Lshark/ValueHolder$IntHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readInt()I

    move-result v0

    invoke-direct {p1, v0}, Lshark/ValueHolder$IntHolder;-><init>(I)V

    check-cast p1, Lshark/ValueHolder;

    goto :goto_0

    .line 42
    :cond_7
    sget v1, Lshark/internal/FieldValuesReader;->LONG_TYPE:I

    if-ne v0, v1, :cond_8

    new-instance p1, Lshark/ValueHolder$LongHolder;

    invoke-direct {p0}, Lshark/internal/FieldValuesReader;->readLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lshark/ValueHolder$LongHolder;-><init>(J)V

    check-cast p1, Lshark/ValueHolder;

    :goto_0
    return-object p1

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
