.class final Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;
.super Ljava/lang/Object;
.source "HprofDeobfuscator.kt"

# interfaces
.implements Lshark/OnHprofRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/HprofDeobfuscator;->writeHprofRecords(Ljava/io/File;Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofDeobfuscator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofDeobfuscator.kt\nshark/HprofDeobfuscator$writeHprofRecords$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n1648#2,2:212\n*E\n*S KotlinDebug\n*F\n+ 1 HprofDeobfuscator.kt\nshark/HprofDeobfuscator$writeHprofRecords$1$1\n*L\n132#1,2:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "record",
        "Lshark/HprofRecord;",
        "onHprofRecord",
        "shark/HprofDeobfuscator$writeHprofRecords$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $classNames$inlined:Ljava/util/Map;

.field final synthetic $hprofStringCache$inlined:Ljava/util/Map;

.field final synthetic $id$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $proguardMapping$inlined:Lshark/ProguardMapping;

.field final synthetic $reader$inlined:Lshark/StreamingRecordReaderAdapter;

.field final synthetic $writer:Lshark/HprofWriter;

.field final synthetic this$0:Lshark/HprofDeobfuscator;


# direct methods
.method constructor <init>(Lshark/HprofWriter;Lshark/HprofDeobfuscator;Lshark/StreamingRecordReaderAdapter;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$writer:Lshark/HprofWriter;

    iput-object p2, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->this$0:Lshark/HprofDeobfuscator;

    iput-object p3, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$reader$inlined:Lshark/StreamingRecordReaderAdapter;

    iput-object p4, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$proguardMapping$inlined:Lshark/ProguardMapping;

    iput-object p5, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$hprofStringCache$inlined:Ljava/util/Map;

    iput-object p6, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$classNames$inlined:Ljava/util/Map;

    iput-object p7, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$id$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHprofRecord(JLshark/HprofRecord;)V
    .locals 7

    const-string p1, "record"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    instance-of p1, p3, Lshark/HprofRecord$HeapDumpEndRecord;

    if-eqz p1, :cond_0

    return-void

    .line 122
    :cond_0
    instance-of p1, p3, Lshark/HprofRecord$StringRecord;

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$writer:Lshark/HprofWriter;

    .line 124
    iget-object p2, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->this$0:Lshark/HprofDeobfuscator;

    check-cast p3, Lshark/HprofRecord$StringRecord;

    iget-object v0, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$proguardMapping$inlined:Lshark/ProguardMapping;

    iget-object v1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$hprofStringCache$inlined:Ljava/util/Map;

    invoke-static {p2, p3, v0, v1}, Lshark/HprofDeobfuscator;->access$createDeobfuscatedStringRecord(Lshark/HprofDeobfuscator;Lshark/HprofRecord$StringRecord;Lshark/ProguardMapping;Ljava/util/Map;)Lshark/HprofRecord$StringRecord;

    move-result-object p2

    check-cast p2, Lshark/HprofRecord;

    .line 123
    invoke-virtual {p1, p2}, Lshark/HprofWriter;->write(Lshark/HprofRecord;)V

    goto :goto_1

    .line 127
    :cond_1
    instance-of p1, p3, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    if-eqz p1, :cond_2

    .line 128
    iget-object v0, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->this$0:Lshark/HprofDeobfuscator;

    .line 129
    move-object v1, p3

    check-cast v1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    iget-object v2, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$proguardMapping$inlined:Lshark/ProguardMapping;

    iget-object v3, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$hprofStringCache$inlined:Ljava/util/Map;

    iget-object v4, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$classNames$inlined:Ljava/util/Map;

    iget-object p1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$id$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v5, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 128
    invoke-static/range {v0 .. v6}, Lshark/HprofDeobfuscator;->access$createDeobfuscatedClassDumpRecord(Lshark/HprofDeobfuscator;Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 131
    iget-object p1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$id$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 132
    check-cast p2, Ljava/lang/Iterable;

    .line 212
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lshark/HprofRecord;

    .line 133
    iget-object p3, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$writer:Lshark/HprofWriter;

    invoke-virtual {p3, p2}, Lshark/HprofWriter;->write(Lshark/HprofRecord;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object p1, p0, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;->$writer:Lshark/HprofWriter;

    invoke-virtual {p1, p3}, Lshark/HprofWriter;->write(Lshark/HprofRecord;)V

    :cond_3
    :goto_1
    return-void
.end method
