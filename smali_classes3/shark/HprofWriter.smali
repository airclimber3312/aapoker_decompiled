.class public final Lshark/HprofWriter;
.super Ljava/lang/Object;
.source "HprofWriter.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofWriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofWriter.kt\nshark/HprofWriter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,474:1\n1648#2,2:475\n1648#2,2:477\n1648#2,2:479\n11482#3,2:481\n11503#3,2:483\n11489#3,2:485\n11496#3,2:487\n11468#3,2:489\n11475#3,2:491\n11482#3,2:493\n*E\n*S KotlinDebug\n*F\n+ 1 HprofWriter.kt\nshark/HprofWriter\n*L\n103#1,2:475\n258#1,2:477\n264#1,2:479\n366#1,2:481\n370#1,2:483\n378#1,2:485\n382#1,2:487\n386#1,2:489\n390#1,2:491\n394#1,2:493\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0018\n\u0002\u0010\u0019\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 =2\u00020\u0001:\u0001=B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0014\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bJ\u000e\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fJ\u000c\u0010 \u001a\u00020\u0017*\u00020\u0003H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020\"H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020#H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020$H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020%H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020&H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020\'H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020(H\u0002J\u0014\u0010\u001d\u001a\u00020\u0017*\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0014\u0010)\u001a\u00020\u0017*\u00020\u00032\u0006\u0010*\u001a\u00020+H\u0002J\u0014\u0010,\u001a\u00020\u0017*\u00020\u00032\u0006\u0010*\u001a\u00020-H\u0002J\u0014\u0010.\u001a\u00020\u0017*\u00020\u00032\u0006\u0010*\u001a\u00020/H\u0002J\u0014\u00100\u001a\u00020\u0017*\u00020\u00032\u0006\u00101\u001a\u000202H\u0002J\u0014\u00103\u001a\u00020\u0017*\u00020\u00032\u0006\u0010!\u001a\u00020\'H\u0002J-\u00104\u001a\u00020\u0017*\u00020\u00032\u0006\u00105\u001a\u00020\u00102\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001707\u00a2\u0006\u0002\u00088H\u0002J\u001c\u00109\u001a\u00020\u0017*\u00020\u00032\u0006\u00105\u001a\u00020\u00102\u0006\u0010:\u001a\u000202H\u0002J\u0014\u0010;\u001a\u00020\u0017*\u00020\u00032\u0006\u0010<\u001a\u00020\u001cH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\n8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u00108FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lshark/HprofWriter;",
        "Ljava/io/Closeable;",
        "sink",
        "Lokio/BufferedSink;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "(Lokio/BufferedSink;Lshark/HprofHeader;)V",
        "getHprofHeader",
        "()Lshark/HprofHeader;",
        "hprofVersion",
        "Lshark/Hprof$HprofVersion;",
        "getHprofVersion$annotations",
        "()V",
        "getHprofVersion",
        "()Lshark/Hprof$HprofVersion;",
        "identifierByteSize",
        "",
        "getIdentifierByteSize$annotations",
        "getIdentifierByteSize",
        "()I",
        "workBuffer",
        "Lokio/Buffer;",
        "close",
        "",
        "valuesToBytes",
        "",
        "values",
        "",
        "Lshark/ValueHolder;",
        "write",
        "record",
        "Lshark/HprofRecord;",
        "flushHeapBuffer",
        "array",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "writeBoolean",
        "value",
        "",
        "writeDouble",
        "",
        "writeFloat",
        "",
        "writeId",
        "id",
        "",
        "writeIdArray",
        "writeNonHeapRecord",
        "tag",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "writeTagHeader",
        "length",
        "writeValue",
        "wrapper",
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
.field public static final Companion:Lshark/HprofWriter$Companion;


# instance fields
.field private final hprofHeader:Lshark/HprofHeader;

.field private final sink:Lokio/BufferedSink;

.field private final workBuffer:Lokio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HprofWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HprofWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofWriter;->Companion:Lshark/HprofWriter$Companion;

    return-void
.end method

.method private constructor <init>(Lokio/BufferedSink;Lshark/HprofHeader;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HprofWriter;->sink:Lokio/BufferedSink;

    iput-object p2, p0, Lshark/HprofWriter;->hprofHeader:Lshark/HprofHeader;

    .line 86
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/BufferedSink;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lshark/HprofWriter;-><init>(Lokio/BufferedSink;Lshark/HprofHeader;)V

    return-void
.end method

.method public static final synthetic access$writeId(Lshark/HprofWriter;Lokio/BufferedSink;J)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    return-void
.end method

.method public static final synthetic access$writeIdArray(Lshark/HprofWriter;Lokio/BufferedSink;[J)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lshark/HprofWriter;->writeIdArray(Lokio/BufferedSink;[J)V

    return-void
.end method

.method private final flushHeapBuffer(Lokio/BufferedSink;)V
    .locals 6

    .line 408
    iget-object v0, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 409
    sget-object v0, Lshark/HprofRecordTag;->HEAP_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    iget-object v1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-direct {p0, p1, v0, v4, v5}, Lshark/HprofWriter;->writeTagHeader(Lokio/BufferedSink;IJ)V

    .line 410
    iget-object v0, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    check-cast v0, Lokio/Source;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 411
    sget-object v0, Lshark/HprofRecordTag;->HEAP_DUMP_END:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, v3}, Lshark/HprofWriter;->writeTagHeader(Lokio/BufferedSink;IJ)V

    :cond_0
    return-void
.end method

.method public static synthetic getHprofVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by HprofWriter.hprofHeader.version"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hprofHeader.version"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getIdentifierByteSize$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by HprofWriter.hprofHeader.identifierByteSize"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "hprofHeader.identifierByteSize"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private final write(Lokio/BufferedSink;Lshark/HprofRecord;)V
    .locals 5

    .line 135
    instance-of v0, p2, Lshark/HprofRecord$StringRecord;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    new-instance v1, Lshark/HprofWriter$write$1;

    invoke-direct {v1, p0, p2}, Lshark/HprofWriter$write$1;-><init>(Lshark/HprofWriter;Lshark/HprofRecord;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeNonHeapRecord(Lokio/BufferedSink;ILkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 141
    :cond_0
    instance-of v0, p2, Lshark/HprofRecord$LoadClassRecord;

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    new-instance v1, Lshark/HprofWriter$write$2;

    invoke-direct {v1, p0, p2}, Lshark/HprofWriter$write$2;-><init>(Lshark/HprofWriter;Lshark/HprofRecord;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeNonHeapRecord(Lokio/BufferedSink;ILkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 149
    :cond_1
    instance-of v0, p2, Lshark/HprofRecord$StackTraceRecord;

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lshark/HprofRecordTag;->STACK_TRACE:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    new-instance v1, Lshark/HprofWriter$write$3;

    invoke-direct {v1, p0, p2}, Lshark/HprofWriter$write$3;-><init>(Lshark/HprofWriter;Lshark/HprofRecord;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeNonHeapRecord(Lokio/BufferedSink;ILkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 157
    :cond_2
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    if-eqz p1, :cond_13

    .line 158
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 159
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$GcRootRecord;->getGcRoot()Lshark/GcRoot;

    move-result-object p2

    .line 160
    instance-of v0, p2, Lshark/GcRoot$Unknown;

    if-eqz v0, :cond_3

    .line 161
    sget-object v0, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 162
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 164
    :cond_3
    instance-of v0, p2, Lshark/GcRoot$JniGlobal;

    if-eqz v0, :cond_4

    .line 166
    sget-object v0, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 168
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 169
    check-cast p2, Lshark/GcRoot$JniGlobal;

    invoke-virtual {p2}, Lshark/GcRoot$JniGlobal;->getJniGlobalRefId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 171
    :cond_4
    instance-of v0, p2, Lshark/GcRoot$JniLocal;

    if-eqz v0, :cond_5

    .line 172
    sget-object v0, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 173
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 174
    check-cast p2, Lshark/GcRoot$JniLocal;

    invoke-virtual {p2}, Lshark/GcRoot$JniLocal;->getThreadSerialNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 175
    invoke-virtual {p2}, Lshark/GcRoot$JniLocal;->getFrameNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 177
    :cond_5
    instance-of v0, p2, Lshark/GcRoot$JavaFrame;

    if-eqz v0, :cond_6

    .line 178
    sget-object v0, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 179
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 180
    check-cast p2, Lshark/GcRoot$JavaFrame;

    invoke-virtual {p2}, Lshark/GcRoot$JavaFrame;->getThreadSerialNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 181
    invoke-virtual {p2}, Lshark/GcRoot$JavaFrame;->getFrameNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 183
    :cond_6
    instance-of v0, p2, Lshark/GcRoot$NativeStack;

    if-eqz v0, :cond_7

    .line 184
    sget-object v0, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 185
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 186
    check-cast p2, Lshark/GcRoot$NativeStack;

    invoke-virtual {p2}, Lshark/GcRoot$NativeStack;->getThreadSerialNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 188
    :cond_7
    instance-of v0, p2, Lshark/GcRoot$StickyClass;

    if-eqz v0, :cond_8

    .line 189
    sget-object v0, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 190
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 192
    :cond_8
    instance-of v0, p2, Lshark/GcRoot$ThreadBlock;

    if-eqz v0, :cond_9

    .line 193
    sget-object v0, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 194
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 195
    check-cast p2, Lshark/GcRoot$ThreadBlock;

    invoke-virtual {p2}, Lshark/GcRoot$ThreadBlock;->getThreadSerialNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 197
    :cond_9
    instance-of v0, p2, Lshark/GcRoot$MonitorUsed;

    if-eqz v0, :cond_a

    .line 198
    sget-object v0, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 199
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 201
    :cond_a
    instance-of v0, p2, Lshark/GcRoot$ThreadObject;

    if-eqz v0, :cond_b

    .line 202
    sget-object v0, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 203
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 204
    check-cast p2, Lshark/GcRoot$ThreadObject;

    invoke-virtual {p2}, Lshark/GcRoot$ThreadObject;->getThreadSerialNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 205
    invoke-virtual {p2}, Lshark/GcRoot$ThreadObject;->getStackTraceSerialNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 207
    :cond_b
    instance-of v0, p2, Lshark/GcRoot$ReferenceCleanup;

    if-eqz v0, :cond_c

    .line 208
    sget-object v0, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 209
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 211
    :cond_c
    instance-of v0, p2, Lshark/GcRoot$VmInternal;

    if-eqz v0, :cond_d

    .line 212
    sget-object v0, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 213
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 215
    :cond_d
    instance-of v0, p2, Lshark/GcRoot$JniMonitor;

    if-eqz v0, :cond_e

    .line 216
    sget-object v0, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 217
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 218
    check-cast p2, Lshark/GcRoot$JniMonitor;

    invoke-virtual {p2}, Lshark/GcRoot$JniMonitor;->getStackTraceSerialNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 219
    invoke-virtual {p2}, Lshark/GcRoot$JniMonitor;->getStackDepth()I

    move-result p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto/16 :goto_2

    .line 221
    :cond_e
    instance-of v0, p2, Lshark/GcRoot$InternedString;

    if-eqz v0, :cond_f

    .line 222
    sget-object v0, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 223
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 225
    :cond_f
    instance-of v0, p2, Lshark/GcRoot$Finalizing;

    if-eqz v0, :cond_10

    .line 226
    sget-object v0, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 227
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 229
    :cond_10
    instance-of v0, p2, Lshark/GcRoot$Debugger;

    if-eqz v0, :cond_11

    .line 230
    sget-object v0, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 231
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    .line 233
    :cond_11
    instance-of v0, p2, Lshark/GcRoot$Unreachable;

    if-eqz v0, :cond_12

    .line 234
    sget-object v0, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 235
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/GcRoot;->getId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_2

    :cond_12
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 240
    :cond_13
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    if-eqz p1, :cond_15

    .line 241
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 242
    sget-object v0, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 243
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 244
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getStackTraceSerialNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 245
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getSuperclassId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 246
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getClassLoaderId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 247
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getSignersId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 248
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getProtectionDomainId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    const-wide/16 v1, 0x0

    .line 250
    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 252
    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 253
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getInstanceSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p1, v1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 257
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getStaticFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 258
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getStaticFields()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 477
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    .line 259
    invoke-virtual {v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getNameStringId()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 260
    invoke-virtual {v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getType()I

    move-result v3

    invoke-virtual {p1, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 261
    invoke-virtual {v2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getValue()Lshark/ValueHolder;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lshark/HprofWriter;->writeValue(Lokio/BufferedSink;Lshark/ValueHolder;)V

    goto :goto_0

    .line 263
    :cond_14
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 264
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getFields()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 479
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    .line 265
    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getNameStringId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 266
    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_1

    .line 270
    :cond_15
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    if-eqz p1, :cond_16

    .line 271
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 272
    sget-object v0, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 273
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 274
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getStackTraceSerialNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 275
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getClassId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 276
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 277
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->getFieldValues()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->write([B)Lokio/Buffer;

    goto/16 :goto_2

    .line 280
    :cond_16
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    if-eqz p1, :cond_17

    .line 281
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 282
    sget-object v0, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 283
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 284
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getStackTraceSerialNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 285
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 286
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getArrayClassId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 287
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->writeIdArray(Lokio/BufferedSink;[J)V

    goto/16 :goto_2

    .line 290
    :cond_17
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    if-eqz p1, :cond_20

    .line 291
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 292
    sget-object v0, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 293
    move-object v0, p1

    check-cast v0, Lokio/BufferedSink;

    move-object v1, p2

    check-cast v1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;

    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;->getId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    .line 294
    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;->getStackTraceSerialNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 297
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    if-eqz v1, :cond_18

    .line 298
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getArray()[Z

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 299
    sget-object v1, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 300
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$BooleanArrayDump;->getArray()[Z

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[Z)V

    goto/16 :goto_2

    .line 302
    :cond_18
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    if-eqz v1, :cond_19

    .line 303
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 304
    sget-object v1, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 305
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$CharArrayDump;->getArray()[C

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[C)V

    goto/16 :goto_2

    .line 307
    :cond_19
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    if-eqz v1, :cond_1a

    .line 308
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getArray()[F

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 309
    sget-object v1, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 310
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$FloatArrayDump;->getArray()[F

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[F)V

    goto/16 :goto_2

    .line 312
    :cond_1a
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    if-eqz v1, :cond_1b

    .line 313
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getArray()[D

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 314
    sget-object v1, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 315
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$DoubleArrayDump;->getArray()[D

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[D)V

    goto/16 :goto_2

    .line 317
    :cond_1b
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    if-eqz v1, :cond_1c

    .line 318
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getArray()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 319
    sget-object v0, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {v0}, Lshark/PrimitiveType;->getHprofType()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 320
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ByteArrayDump;->getArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->write([B)Lokio/Buffer;

    goto/16 :goto_2

    .line 322
    :cond_1c
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    if-eqz v1, :cond_1d

    .line 323
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getArray()[S

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 324
    sget-object v1, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 325
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$ShortArrayDump;->getArray()[S

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[S)V

    goto :goto_2

    .line 327
    :cond_1d
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    if-eqz v1, :cond_1e

    .line 328
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getArray()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 329
    sget-object v1, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 330
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$IntArrayDump;->getArray()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[I)V

    goto :goto_2

    .line 332
    :cond_1e
    instance-of v1, p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    if-eqz v1, :cond_1f

    .line 333
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getArray()[J

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 334
    sget-object v1, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getHprofType()I

    move-result v1

    invoke-virtual {p1, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 335
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord$LongArrayDump;->getArray()[J

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[J)V

    goto :goto_2

    :cond_1f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 340
    :cond_20
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;

    if-eqz p1, :cond_21

    .line 341
    iget-object p1, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    .line 342
    sget-object v0, Lshark/HprofRecordTag;->HEAP_DUMP_INFO:Lshark/HprofRecordTag;

    invoke-virtual {v0}, Lshark/HprofRecordTag;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 343
    check-cast p2, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->getHeapId()I

    move-result v0

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 344
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->getHeapNameStringId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto :goto_2

    .line 347
    :cond_21
    instance-of p1, p2, Lshark/HprofRecord$HeapDumpEndRecord;

    if-nez p1, :cond_23

    :cond_22
    :goto_2
    return-void

    .line 348
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HprofWriter automatically emits HeapDumpEndRecord"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final write(Lokio/BufferedSink;[C)V
    .locals 1

    .line 374
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    sget-object p2, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-interface {p1, v0, p2}, Lokio/BufferedSink;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;

    return-void
.end method

.method private final write(Lokio/BufferedSink;[D)V
    .locals 4

    .line 487
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p2, v1

    .line 382
    invoke-direct {p0, p1, v2, v3}, Lshark/HprofWriter;->writeDouble(Lokio/BufferedSink;D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final write(Lokio/BufferedSink;[F)V
    .locals 3

    .line 485
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 378
    invoke-direct {p0, p1, v2}, Lshark/HprofWriter;->writeFloat(Lokio/BufferedSink;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final write(Lokio/BufferedSink;[I)V
    .locals 3

    .line 491
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 390
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final write(Lokio/BufferedSink;[J)V
    .locals 4

    .line 493
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p2, v1

    .line 394
    invoke-interface {p1, v2, v3}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final write(Lokio/BufferedSink;[S)V
    .locals 3

    .line 489
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p2, v1

    .line 386
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final write(Lokio/BufferedSink;[Z)V
    .locals 3

    .line 483
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-boolean v2, p2, v1

    .line 370
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final writeBoolean(Lokio/BufferedSink;Z)V
    .locals 0

    .line 362
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method

.method private final writeDouble(Lokio/BufferedSink;D)V
    .locals 0

    .line 354
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    return-void
.end method

.method private final writeFloat(Lokio/BufferedSink;F)V
    .locals 0

    .line 358
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void
.end method

.method private final writeId(Lokio/BufferedSink;J)V
    .locals 2

    .line 426
    iget-object v0, p0, Lshark/HprofWriter;->hprofHeader:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 430
    invoke-interface {p1, p2, p3}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    goto :goto_0

    .line 431
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    long-to-int p3, p2

    .line 429
    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_0

    :cond_2
    long-to-int p3, p2

    .line 428
    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    goto :goto_0

    :cond_3
    long-to-int p3, p2

    .line 427
    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    :goto_0
    return-void
.end method

.method private final writeIdArray(Lokio/BufferedSink;[J)V
    .locals 4

    .line 481
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p2, v1

    .line 366
    invoke-direct {p0, p1, v2, v3}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final writeNonHeapRecord(Lokio/BufferedSink;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSink;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1}, Lshark/HprofWriter;->flushHeapBuffer(Lokio/BufferedSink;)V

    .line 402
    iget-object v0, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object p3, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lshark/HprofWriter;->writeTagHeader(Lokio/BufferedSink;IJ)V

    .line 404
    iget-object p2, p0, Lshark/HprofWriter;->workBuffer:Lokio/Buffer;

    check-cast p2, Lokio/Source;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    return-void
.end method

.method private final writeTagHeader(Lokio/BufferedSink;IJ)V
    .locals 0

    .line 419
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    const/4 p2, 0x0

    .line 421
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    long-to-int p2, p3

    .line 422
    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void
.end method

.method private final writeValue(Lokio/BufferedSink;Lshark/ValueHolder;)V
    .locals 2

    .line 120
    instance-of v0, p2, Lshark/ValueHolder$ReferenceHolder;

    if-eqz v0, :cond_0

    check-cast p2, Lshark/ValueHolder$ReferenceHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeId(Lokio/BufferedSink;J)V

    goto/16 :goto_0

    .line 121
    :cond_0
    instance-of v0, p2, Lshark/ValueHolder$BooleanHolder;

    if-eqz v0, :cond_1

    check-cast p2, Lshark/ValueHolder$BooleanHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$BooleanHolder;->getValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lshark/HprofWriter;->writeBoolean(Lokio/BufferedSink;Z)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v0, p2, Lshark/ValueHolder$CharHolder;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [C

    check-cast p2, Lshark/ValueHolder$CharHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$CharHolder;->getValue()C

    move-result p2

    const/4 v1, 0x0

    aput-char p2, v0, v1

    invoke-direct {p0, p1, v0}, Lshark/HprofWriter;->write(Lokio/BufferedSink;[C)V

    goto :goto_0

    .line 123
    :cond_2
    instance-of v0, p2, Lshark/ValueHolder$FloatHolder;

    if-eqz v0, :cond_3

    check-cast p2, Lshark/ValueHolder$FloatHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$FloatHolder;->getValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lshark/HprofWriter;->writeFloat(Lokio/BufferedSink;F)V

    goto :goto_0

    .line 124
    :cond_3
    instance-of v0, p2, Lshark/ValueHolder$DoubleHolder;

    if-eqz v0, :cond_4

    check-cast p2, Lshark/ValueHolder$DoubleHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$DoubleHolder;->getValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lshark/HprofWriter;->writeDouble(Lokio/BufferedSink;D)V

    goto :goto_0

    .line 125
    :cond_4
    instance-of v0, p2, Lshark/ValueHolder$ByteHolder;

    if-eqz v0, :cond_5

    check-cast p2, Lshark/ValueHolder$ByteHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$ByteHolder;->getValue()B

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_0

    .line 126
    :cond_5
    instance-of v0, p2, Lshark/ValueHolder$ShortHolder;

    if-eqz v0, :cond_6

    check-cast p2, Lshark/ValueHolder$ShortHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$ShortHolder;->getValue()S

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    goto :goto_0

    .line 127
    :cond_6
    instance-of v0, p2, Lshark/ValueHolder$IntHolder;

    if-eqz v0, :cond_7

    check-cast p2, Lshark/ValueHolder$IntHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$IntHolder;->getValue()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_0

    .line 128
    :cond_7
    instance-of v0, p2, Lshark/ValueHolder$LongHolder;

    if-eqz v0, :cond_8

    check-cast p2, Lshark/ValueHolder$LongHolder;

    invoke-virtual {p2}, Lshark/ValueHolder$LongHolder;->getValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 114
    iget-object v0, p0, Lshark/HprofWriter;->sink:Lokio/BufferedSink;

    invoke-direct {p0, v0}, Lshark/HprofWriter;->flushHeapBuffer(Lokio/BufferedSink;)V

    .line 115
    iget-object v0, p0, Lshark/HprofWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    return-void
.end method

.method public final getHprofHeader()Lshark/HprofHeader;
    .locals 1

    .line 69
    iget-object v0, p0, Lshark/HprofWriter;->hprofHeader:Lshark/HprofHeader;

    return-object v0
.end method

.method public final getHprofVersion()Lshark/Hprof$HprofVersion;
    .locals 1

    .line 84
    iget-object v0, p0, Lshark/HprofWriter;->hprofHeader:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofVersion;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lshark/Hprof$HprofVersion;->valueOf(Ljava/lang/String;)Lshark/Hprof$HprofVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifierByteSize()I
    .locals 1

    .line 77
    iget-object v0, p0, Lshark/HprofWriter;->hprofHeader:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v0

    return v0
.end method

.method public final valuesToBytes(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lshark/ValueHolder;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 103
    check-cast p1, Ljava/lang/Iterable;

    .line 475
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/ValueHolder;

    .line 104
    move-object v2, v0

    check-cast v2, Lokio/BufferedSink;

    invoke-direct {p0, v2, v1}, Lshark/HprofWriter;->writeValue(Lokio/BufferedSink;Lshark/ValueHolder;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p1

    const-string v0, "valuesBuffer.readByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final write(Lshark/HprofRecord;)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lshark/HprofWriter;->sink:Lokio/BufferedSink;

    invoke-direct {p0, v0, p1}, Lshark/HprofWriter;->write(Lokio/BufferedSink;Lshark/HprofRecord;)V

    return-void
.end method
