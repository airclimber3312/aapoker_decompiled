.class public final Lshark/Hprof;
.super Ljava/lang/Object;
.source "Hprof.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/Hprof$HprofVersion;,
        Lshark/Hprof$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprof.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hprof.kt\nshark/Hprof\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1648#2,2:60\n*E\n*S KotlinDebug\n*F\n+ 1 Hprof.kt\nshark/Hprof\n*L\n39#1,2:60\n*E\n"
.end annotation

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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0001J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lshark/Hprof;",
        "Ljava/io/Closeable;",
        "file",
        "Ljava/io/File;",
        "header",
        "Lshark/HprofHeader;",
        "(Ljava/io/File;Lshark/HprofHeader;)V",
        "closeables",
        "",
        "getFile",
        "()Ljava/io/File;",
        "fileLength",
        "",
        "getFileLength",
        "()J",
        "getHeader",
        "()Lshark/HprofHeader;",
        "heapDumpTimestamp",
        "getHeapDumpTimestamp",
        "hprofVersion",
        "Lshark/Hprof$HprofVersion;",
        "getHprofVersion",
        "()Lshark/Hprof$HprofVersion;",
        "reader",
        "Lshark/HprofReader;",
        "getReader",
        "()Lshark/HprofReader;",
        "attachClosable",
        "",
        "closeable",
        "close",
        "Companion",
        "HprofVersion",
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
.field public static final Companion:Lshark/Hprof$Companion;


# instance fields
.field private final closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private final header:Lshark/HprofHeader;

.field private final reader:Lshark/HprofReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/Hprof$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/Hprof$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/Hprof;->Companion:Lshark/Hprof$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lshark/HprofHeader;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/Hprof;->file:Ljava/io/File;

    iput-object p2, p0, Lshark/Hprof;->header:Lshark/HprofHeader;

    .line 17
    new-instance p1, Lshark/HprofReader;

    invoke-direct {p1, p0}, Lshark/HprofReader;-><init>(Lshark/Hprof;)V

    iput-object p1, p0, Lshark/Hprof;->reader:Lshark/HprofReader;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lshark/Hprof;->closeables:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lshark/Hprof;-><init>(Ljava/io/File;Lshark/HprofHeader;)V

    return-void
.end method


# virtual methods
.method public final attachClosable(Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "closeable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lshark/Hprof;->closeables:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 39
    iget-object v0, p0, Lshark/Hprof;->closeables:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    .line 39
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 13
    iget-object v0, p0, Lshark/Hprof;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getFileLength()J
    .locals 2

    .line 26
    iget-object v0, p0, Lshark/Hprof;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeader()Lshark/HprofHeader;
    .locals 1

    .line 14
    iget-object v0, p0, Lshark/Hprof;->header:Lshark/HprofHeader;

    return-object v0
.end method

.method public final getHeapDumpTimestamp()J
    .locals 2

    .line 20
    iget-object v0, p0, Lshark/Hprof;->header:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getHeapDumpTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHprofVersion()Lshark/Hprof$HprofVersion;
    .locals 1

    .line 23
    iget-object v0, p0, Lshark/Hprof;->header:Lshark/HprofHeader;

    invoke-virtual {v0}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HprofVersion;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lshark/Hprof$HprofVersion;->valueOf(Ljava/lang/String;)Lshark/Hprof$HprofVersion;

    move-result-object v0

    return-object v0
.end method

.method public final getReader()Lshark/HprofReader;
    .locals 1

    .line 17
    iget-object v0, p0, Lshark/Hprof;->reader:Lshark/HprofReader;

    return-object v0
.end method
