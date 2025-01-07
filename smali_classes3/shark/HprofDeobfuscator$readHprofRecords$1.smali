.class final Lshark/HprofDeobfuscator$readHprofRecords$1;
.super Ljava/lang/Object;
.source "HprofDeobfuscator.kt"

# interfaces
.implements Lshark/OnHprofRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofDeobfuscator;->readHprofRecords(Ljava/io/File;)Lkotlin/Triple;
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
.field final synthetic $classNames:Ljava/util/Map;

.field final synthetic $hprofStringCache:Ljava/util/Map;

.field final synthetic $maxId:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$maxId:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$hprofStringCache:Ljava/util/Map;

    iput-object p3, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$classNames:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHprofRecord(JLshark/HprofRecord;)V
    .locals 4

    const-string p1, "record"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of p1, p3, Lshark/HprofRecord$StringRecord;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$maxId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$StringRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 71
    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$hprofStringCache:Ljava/util/Map;

    invoke-virtual {p3}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3}, Lshark/HprofRecord$StringRecord;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 73
    :cond_0
    instance-of p1, p3, Lshark/HprofRecord$LoadClassRecord;

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$maxId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$LoadClassRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$LoadClassRecord;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 75
    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$classNames:Ljava/util/Map;

    invoke-virtual {p3}, Lshark/HprofRecord$LoadClassRecord;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3}, Lshark/HprofRecord$LoadClassRecord;->getClassNameStringId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 77
    :cond_1
    instance-of p1, p3, Lshark/HprofRecord$StackFrameRecord;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$maxId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$StackFrameRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$StackFrameRecord;->getId()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_1

    .line 78
    :cond_2
    instance-of p1, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;

    if-eqz p1, :cond_7

    .line 79
    iget-object p1, p0, Lshark/HprofDeobfuscator$readHprofRecords$1;->$maxId:Lkotlin/jvm/internal/Ref$LongRef;

    .line 80
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    if-eqz p2, :cond_3

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getId()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 81
    :cond_3
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    if-eqz p2, :cond_4

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getId()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 82
    :cond_4
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    if-eqz p2, :cond_5

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getId()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 83
    :cond_5
    instance-of p2, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    if-eqz p2, :cond_6

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    check-cast p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    invoke-virtual {p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;->getId()J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p2

    .line 79
    :goto_0
    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_1

    .line 83
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method
