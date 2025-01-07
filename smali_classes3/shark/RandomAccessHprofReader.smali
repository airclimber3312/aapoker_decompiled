.class public final Lshark/RandomAccessHprofReader;
.super Ljava/lang/Object;
.source "RandomAccessHprofReader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/RandomAccessHprofReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J:\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H\u000e0\u0013\u00a2\u0006\u0002\u0008\u0014\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lshark/RandomAccessHprofReader;",
        "Ljava/io/Closeable;",
        "source",
        "Lshark/RandomAccessSource;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "(Lshark/RandomAccessSource;Lshark/HprofHeader;)V",
        "buffer",
        "Lokio/Buffer;",
        "reader",
        "Lshark/HprofRecordReader;",
        "close",
        "",
        "readRecord",
        "T",
        "recordPosition",
        "",
        "recordSize",
        "withRecordReader",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(JJLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field public static final Companion:Lshark/RandomAccessHprofReader$Companion;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private final reader:Lshark/HprofRecordReader;

.field private final source:Lshark/RandomAccessSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/RandomAccessHprofReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/RandomAccessHprofReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/RandomAccessHprofReader;->Companion:Lshark/RandomAccessHprofReader$Companion;

    return-void
.end method

.method private constructor <init>(Lshark/RandomAccessSource;Lshark/HprofHeader;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/RandomAccessHprofReader;->source:Lshark/RandomAccessSource;

    .line 15
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lshark/RandomAccessHprofReader;->buffer:Lokio/Buffer;

    .line 16
    new-instance v0, Lshark/HprofRecordReader;

    check-cast p1, Lokio/BufferedSource;

    invoke-direct {v0, p2, p1}, Lshark/HprofRecordReader;-><init>(Lshark/HprofHeader;Lokio/BufferedSource;)V

    iput-object v0, p0, Lshark/RandomAccessHprofReader;->reader:Lshark/HprofRecordReader;

    return-void
.end method

.method public synthetic constructor <init>(Lshark/RandomAccessSource;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lshark/RandomAccessHprofReader;-><init>(Lshark/RandomAccessSource;Lshark/HprofHeader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lshark/RandomAccessHprofReader;->source:Lshark/RandomAccessSource;

    invoke-interface {v0}, Lshark/RandomAccessSource;->close()V

    return-void
.end method

.method public final readRecord(JJLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lshark/HprofRecordReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    const-string v4, "withRecordReader"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_6

    move-wide/from16 v15, p1

    :goto_1
    cmp-long v8, v1, v6

    if-lez v8, :cond_3

    .line 36
    iget-object v9, v0, Lshark/RandomAccessHprofReader;->source:Lshark/RandomAccessSource;

    iget-object v10, v0, Lshark/RandomAccessHprofReader;->buffer:Lokio/Buffer;

    move-wide v11, v15

    move-wide v13, v1

    invoke-interface/range {v9 .. v14}, Lshark/RandomAccessSource;->read(Lokio/Buffer;JJ)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_2

    add-long/2addr v15, v8

    sub-long/2addr v1, v8

    goto :goto_1

    .line 38
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes after reading "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v15, p1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", got 0 bytes instead."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 43
    :cond_3
    iget-object v1, v0, Lshark/RandomAccessHprofReader;->reader:Lshark/HprofRecordReader;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget-object v2, v0, Lshark/RandomAccessHprofReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    return-object v1

    .line 45
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer not fully consumed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lshark/RandomAccessHprofReader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 30
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recordSize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " must be > 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
