.class public final Lshark/StreamingHprofReader$Companion;
.super Ljava/lang/Object;
.source "StreamingHprofReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/StreamingHprofReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingHprofReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingHprofReader.kt\nshark/StreamingHprofReader$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,351:1\n1#2:352\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/StreamingHprofReader$Companion;",
        "",
        "()V",
        "readerFor",
        "Lshark/StreamingHprofReader;",
        "hprofFile",
        "Ljava/io/File;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "hprofSourceProvider",
        "Lshark/StreamingSourceProvider;",
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

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lshark/StreamingHprofReader$Companion;-><init>()V

    return-void
.end method

.method public static synthetic readerFor$default(Lshark/StreamingHprofReader$Companion;Ljava/io/File;Lshark/HprofHeader;ILjava/lang/Object;)Lshark/StreamingHprofReader;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 331
    sget-object p2, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {p2, p1}, Lshark/HprofHeader$Companion;->parseHeaderOf(Ljava/io/File;)Lshark/HprofHeader;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lshark/StreamingHprofReader$Companion;->readerFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readerFor$default(Lshark/StreamingHprofReader$Companion;Lshark/StreamingSourceProvider;Lshark/HprofHeader;ILjava/lang/Object;)Lshark/StreamingHprofReader;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 344
    invoke-interface {p1}, Lshark/StreamingSourceProvider;->openStreamingSource()Lokio/BufferedSource;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    const/4 p3, 0x0

    .line 345
    move-object p4, p3

    check-cast p4, Ljava/lang/Throwable;

    :try_start_0
    move-object p4, p2

    check-cast p4, Lokio/BufferedSource;

    sget-object v0, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {v0, p4}, Lshark/HprofHeader$Companion;->parseHeaderOf(Lokio/BufferedSource;)Lshark/HprofHeader;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p2, p4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lshark/StreamingHprofReader$Companion;->readerFor(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final readerFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/StreamingHprofReader;
    .locals 1

    const-string v0, "hprofFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lshark/FileSourceProvider;

    invoke-direct {v0, p1}, Lshark/FileSourceProvider;-><init>(Ljava/io/File;)V

    .line 334
    move-object p1, p0

    check-cast p1, Lshark/StreamingHprofReader$Companion;

    check-cast v0, Lshark/StreamingSourceProvider;

    invoke-virtual {p0, v0, p2}, Lshark/StreamingHprofReader$Companion;->readerFor(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object p1

    return-object p1
.end method

.method public final readerFor(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)Lshark/StreamingHprofReader;
    .locals 2

    const-string v0, "hprofSourceProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lshark/StreamingHprofReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lshark/StreamingHprofReader;-><init>(Lshark/StreamingSourceProvider;Lshark/HprofHeader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
