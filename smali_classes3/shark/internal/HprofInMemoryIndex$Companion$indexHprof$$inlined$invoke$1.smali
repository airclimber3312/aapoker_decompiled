.class public final Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;
.super Ljava/lang/Object;
.source "OnHprofRecordTagListener.kt"

# interfaces
.implements Lshark/OnHprofRecordTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/HprofInMemoryIndex$Companion;->indexHprof(Lshark/StreamingHprofReader;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/internal/HprofInMemoryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnHprofRecordTagListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnHprofRecordTagListener.kt\nshark/OnHprofRecordTagListener$Companion$invoke$1\n+ 2 HprofInMemoryIndex.kt\nshark/internal/HprofInMemoryIndex$Companion\n*L\n1#1,44:1\n673#2,28:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "shark/OnHprofRecordTagListener$Companion$invoke$1",
        "Lshark/OnHprofRecordTagListener;",
        "onHprofRecord",
        "",
        "tag",
        "Lshark/HprofRecordTag;",
        "length",
        "",
        "reader",
        "Lshark/HprofRecordReader;",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $classCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $classFieldsTotalBytes$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $instanceCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $maxClassSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $maxInstanceSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $maxObjectArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $maxPrimitiveArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $objectArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $primitiveArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$classCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxClassSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p3, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$classFieldsTotalBytes$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$instanceCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxInstanceSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p6, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$objectArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p7, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxObjectArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p8, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$primitiveArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p9, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxPrimitiveArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHprofRecord(Lshark/HprofRecordTag;JLshark/HprofRecordReader;)V
    .locals 6

    const-string p2, "tag"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "reader"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p2

    .line 46
    sget-object v0, Lshark/internal/HprofInMemoryIndex$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lshark/HprofRecordTag;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$primitiveArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v0

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 68
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipPrimitiveArrayDumpRecord()V

    .line 69
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxPrimitiveArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$objectArrayCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v0

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 63
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipObjectArrayDumpRecord()V

    .line 64
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxObjectArraySize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$instanceCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v0

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 58
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipInstanceDumpRecord()V

    .line 59
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxInstanceSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_0

    .line 48
    :cond_3
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$classCount$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v0

    iput v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 49
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipClassDumpHeader()V

    .line 50
    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v0

    .line 51
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipClassDumpStaticFields()V

    .line 52
    invoke-virtual {p4}, Lshark/HprofRecordReader;->skipClassDumpFields()V

    .line 53
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$maxClassSize$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 54
    iget-object p1, p0, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;->$classFieldsTotalBytes$inlined:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p4}, Lshark/HprofRecordReader;->getBytesRead()J

    move-result-wide p3

    sub-long/2addr p3, v0

    long-to-int p4, p3

    add-int/2addr p2, p4

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_0
    return-void
.end method
