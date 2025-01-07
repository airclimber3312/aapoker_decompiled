.class final Lshark/HprofPrimitiveArrayStripper$stripPrimitiveArrays$2$1;
.super Ljava/lang/Object;
.source "HprofPrimitiveArrayStripper.kt"

# interfaces
.implements Lshark/OnHprofRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofPrimitiveArrayStripper;->stripPrimitiveArrays(Lshark/StreamingSourceProvider;Lokio/BufferedSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "record",
        "Lshark/HprofRecord;",
        "onHprofRecord"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $writer:Lshark/HprofWriter;


# direct methods
.method constructor <init>(Lshark/HprofWriter;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofPrimitiveArrayStripper$stripPrimitiveArrays$2$1;->$writer:Lshark/HprofWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHprofRecord(JLshark/HprofRecord;)V
    .locals 5

    const-string p1, "record"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of p1, p3, Lshark/HprofRecord$HeapDumpEndRecord;

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p1, p0, Lshark/HprofPrimitiveArrayStripper$stripPrimitiveArrays$2$1;->$writer:Lshark/HprofWriter;

    .line 74
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    if-eqz p2, :cond_1

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    .line 75
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 76
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getArray()[Z

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Z

    .line 74
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;-><init>(JI[Z)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto/16 :goto_1

    .line 78
    :cond_1
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    if-eqz p2, :cond_3

    .line 79
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getStackTraceSerialNumber()I

    move-result p2

    .line 80
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object p3

    array-length p3, p3

    new-array v2, p3, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    const/16 v4, 0x3f

    .line 81
    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_2
    new-instance p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-direct {p3, v0, v1, p2, v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;-><init>(JI[C)V

    check-cast p3, Lshark/HprofRecord;

    goto/16 :goto_1

    .line 84
    :cond_3
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    if-eqz p2, :cond_4

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    .line 85
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 86
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getArray()[F

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [F

    .line 84
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;-><init>(JI[F)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto/16 :goto_1

    .line 88
    :cond_4
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    if-eqz p2, :cond_5

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    .line 89
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 90
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getArray()[D

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [D

    .line 88
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;-><init>(JI[D)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto/16 :goto_1

    .line 92
    :cond_5
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    if-eqz p2, :cond_6

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    .line 93
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 94
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getArray()[B

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [B

    .line 92
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;-><init>(JI[B)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto :goto_1

    .line 96
    :cond_6
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    if-eqz p2, :cond_7

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    .line 97
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 98
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getArray()[S

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [S

    .line 96
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;-><init>(JI[S)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto :goto_1

    .line 100
    :cond_7
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    if-eqz p2, :cond_8

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    .line 101
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 102
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getArray()[I

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [I

    .line 100
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;-><init>(JI[I)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    goto :goto_1

    .line 104
    :cond_8
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    if-eqz p2, :cond_9

    new-instance p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    .line 105
    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getId()J

    move-result-wide v0

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getStackTraceSerialNumber()I

    move-result v2

    .line 106
    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getArray()[J

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [J

    .line 104
    invoke-direct {p2, v0, v1, v2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;-><init>(JI[J)V

    move-object p3, p2

    check-cast p3, Lshark/HprofRecord;

    .line 72
    :cond_9
    :goto_1
    invoke-virtual {p1, p3}, Lshark/HprofWriter;->write(Lshark/HprofRecord;)V

    return-void
.end method
