.class public final Lshark/HprofReader;
.super Ljava/lang/Object;
.source "HprofReader.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Replaced by HprofStreamingReader.readerFor or HprofRandomAccessReader.openReaderFor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\r\u001a\u00020\u000e2\u0014\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00120\u00110\u00102\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lshark/HprofReader;",
        "",
        "hprof",
        "Lshark/Hprof;",
        "(Lshark/Hprof;)V",
        "identifierByteSize",
        "",
        "getIdentifierByteSize",
        "()I",
        "startPosition",
        "",
        "getStartPosition",
        "()J",
        "readHprofRecords",
        "",
        "recordTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "Lshark/HprofRecord;",
        "listener",
        "Lshark/OnHprofRecordListener;",
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
.field private final hprof:Lshark/Hprof;


# direct methods
.method public constructor <init>(Lshark/Hprof;)V
    .locals 1

    const-string v0, "hprof"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HprofReader;->hprof:Lshark/Hprof;

    return-void
.end method


# virtual methods
.method public final getIdentifierByteSize()I
    .locals 1

    .line 11
    iget-object v0, p0, Lshark/HprofReader;->hprof:Lshark/Hprof;

    invoke-virtual {v0}, Lshark/Hprof;->getHeader()Lshark/HprofHeader;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v0

    return v0
.end method

.method public final getStartPosition()J
    .locals 2

    .line 14
    iget-object v0, p0, Lshark/HprofReader;->hprof:Lshark/Hprof;

    invoke-virtual {v0}, Lshark/Hprof;->getHeader()Lshark/HprofHeader;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofHeader;->getRecordsPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final readHprofRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lshark/HprofRecord;",
            ">;>;",
            "Lshark/OnHprofRecordListener;",
            ")V"
        }
    .end annotation

    const-string v0, "recordTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    sget-object v1, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    iget-object v2, p0, Lshark/HprofReader;->hprof:Lshark/Hprof;

    invoke-virtual {v2}, Lshark/Hprof;->getFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lshark/HprofReader;->hprof:Lshark/Hprof;

    invoke-virtual {v3}, Lshark/Hprof;->getHeader()Lshark/HprofHeader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lshark/StreamingHprofReader$Companion;->readerFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lshark/StreamingRecordReaderAdapter$Companion;->asStreamingRecordReader(Lshark/StreamingHprofReader;)Lshark/StreamingRecordReaderAdapter;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p2}, Lshark/StreamingRecordReaderAdapter;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J

    return-void
.end method
