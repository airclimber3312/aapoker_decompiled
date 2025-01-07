.class public final Lshark/HprofPrimitiveArrayStripper;
.super Ljava/lang/Object;
.source "HprofPrimitiveArrayStripper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofPrimitiveArrayStripper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofPrimitiveArrayStripper.kt\nshark/HprofPrimitiveArrayStripper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/HprofPrimitiveArrayStripper;",
        "",
        "()V",
        "stripPrimitiveArrays",
        "Ljava/io/File;",
        "inputHprofFile",
        "outputHprofFile",
        "",
        "hprofSourceProvider",
        "Lshark/StreamingSourceProvider;",
        "hprofSink",
        "Lokio/BufferedSink;",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic stripPrimitiveArrays$default(Lshark/HprofPrimitiveArrayStripper;Ljava/io/File;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string p3, "inputHprofFile.name"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".hprof"

    const-string v2, "-stripped.hprof"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "-stripped"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 34
    :goto_0
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p4

    :cond_1
    invoke-virtual {p0, p1, p2}, Lshark/HprofPrimitiveArrayStripper;->stripPrimitiveArrays(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final stripPrimitiveArrays(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2

    const-string v0, "inputHprofFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputHprofFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lshark/FileSourceProvider;

    invoke-direct {v0, p1}, Lshark/FileSourceProvider;-><init>(Ljava/io/File;)V

    check-cast v0, Lshark/StreamingSourceProvider;

    .line 41
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    const-string v1, "Okio.buffer(Okio.sink(ou\u2026profFile.outputStream()))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0, p1}, Lshark/HprofPrimitiveArrayStripper;->stripPrimitiveArrays(Lshark/StreamingSourceProvider;Lokio/BufferedSink;)V

    return-object p2
.end method

.method public final stripPrimitiveArrays(Lshark/StreamingSourceProvider;Lokio/BufferedSink;)V
    .locals 11

    const-string v0, "hprofSourceProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofSink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Lshark/StreamingSourceProvider;->openStreamingSource()Lokio/BufferedSource;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lokio/BufferedSource;

    sget-object v3, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {v3, v2}, Lshark/HprofHeader$Companion;->parseHeaderOf(Lokio/BufferedSource;)Lshark/HprofHeader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 55
    sget-object v0, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    sget-object v3, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    invoke-virtual {v3, p1, v2}, Lshark/StreamingHprofReader$Companion;->readerFor(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lshark/StreamingRecordReaderAdapter$Companion;->asStreamingRecordReader(Lshark/StreamingHprofReader;)Lshark/StreamingRecordReaderAdapter;

    move-result-object p1

    .line 56
    sget-object v0, Lshark/HprofWriter;->Companion:Lshark/HprofWriter$Companion;

    .line 58
    new-instance v10, Lshark/HprofHeader;

    const-wide/16 v4, 0x0

    .line 59
    invoke-virtual {v2}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v7

    .line 60
    invoke-virtual {v2}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v10

    .line 58
    invoke-direct/range {v3 .. v9}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    invoke-virtual {v0, p2, v10}, Lshark/HprofWriter$Companion;->openWriterFor(Lokio/BufferedSink;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 63
    :try_start_1
    move-object v0, p2

    check-cast v0, Lshark/HprofWriter;

    .line 64
    const-class v2, Lshark/HprofRecord;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 65
    new-instance v3, Lshark/HprofPrimitiveArrayStripper$stripPrimitiveArrays$2$1;

    invoke-direct {v3, v0}, Lshark/HprofPrimitiveArrayStripper$stripPrimitiveArrays$2$1;-><init>(Lshark/HprofWriter;)V

    check-cast v3, Lshark/OnHprofRecordListener;

    .line 64
    invoke-virtual {p1, v2, v3}, Lshark/StreamingRecordReaderAdapter;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p1

    .line 53
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
