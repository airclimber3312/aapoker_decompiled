.class public final Lshark/HprofWriter$Companion;
.super Ljava/lang/Object;
.source "HprofWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lshark/HprofWriter$Companion;",
        "",
        "()V",
        "open",
        "Lshark/HprofWriter;",
        "hprofFile",
        "Ljava/io/File;",
        "identifierByteSize",
        "",
        "hprofVersion",
        "Lshark/Hprof$HprofVersion;",
        "openWriterFor",
        "hprofHeader",
        "Lshark/HprofHeader;",
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
.method private constructor <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lshark/HprofWriter$Companion;-><init>()V

    return-void
.end method

.method public static synthetic open$default(Lshark/HprofWriter$Companion;Ljava/io/File;ILshark/Hprof$HprofVersion;ILjava/lang/Object;)Lshark/HprofWriter;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x4

    :cond_0
    and-int/2addr p4, v0

    if-eqz p4, :cond_1

    .line 464
    sget-object p3, Lshark/Hprof$HprofVersion;->ANDROID:Lshark/Hprof$HprofVersion;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofWriter$Companion;->open(Ljava/io/File;ILshark/Hprof$HprofVersion;)Lshark/HprofWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic openWriterFor$default(Lshark/HprofWriter$Companion;Ljava/io/File;Lshark/HprofHeader;ILjava/lang/Object;)Lshark/HprofWriter;
    .locals 7

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 439
    new-instance p2, Lshark/HprofHeader;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lshark/HprofWriter$Companion;->openWriterFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic openWriterFor$default(Lshark/HprofWriter$Companion;Lokio/BufferedSink;Lshark/HprofHeader;ILjava/lang/Object;)Lshark/HprofWriter;
    .locals 7

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 446
    new-instance p2, Lshark/HprofHeader;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lshark/HprofWriter$Companion;->openWriterFor(Lokio/BufferedSink;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final open(Ljava/io/File;ILshark/Hprof$HprofVersion;)Lshark/HprofWriter;
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by HprofWriter.openWriterFor()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "shark.HprofWriter.openWriterFor(hprofFile)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "hprofFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    move-object v0, p0

    check-cast v0, Lshark/HprofWriter$Companion;

    .line 467
    new-instance v0, Lshark/HprofHeader;

    const-wide/16 v2, 0x0

    .line 468
    invoke-virtual {p3}, Lshark/Hprof$HprofVersion;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lshark/HprofVersion;->valueOf(Ljava/lang/String;)Lshark/HprofVersion;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    move v5, p2

    .line 467
    invoke-direct/range {v1 .. v7}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 465
    invoke-virtual {p0, p1, v0}, Lshark/HprofWriter$Companion;->openWriterFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object p1

    return-object p1
.end method

.method public final openWriterFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/HprofWriter;
    .locals 1

    const-string v0, "hprofFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    move-object v0, p0

    check-cast v0, Lshark/HprofWriter$Companion;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/OutputStream;

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    const-string v0, "Okio.buffer(Okio.sink(hprofFile.outputStream()))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lshark/HprofWriter$Companion;->openWriterFor(Lokio/BufferedSink;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object p1

    return-object p1
.end method

.method public final openWriterFor(Lokio/BufferedSink;Lshark/HprofHeader;)Lshark/HprofWriter;
    .locals 2

    const-string v0, "hprofSink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofVersion;->getVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x0

    .line 449
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 450
    invoke-virtual {p2}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 451
    invoke-virtual {p2}, Lshark/HprofHeader;->getHeapDumpTimestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSink;->writeLong(J)Lokio/BufferedSink;

    .line 452
    new-instance v0, Lshark/HprofWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lshark/HprofWriter;-><init>(Lokio/BufferedSink;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
