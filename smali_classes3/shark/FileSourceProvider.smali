.class public final Lshark/FileSourceProvider;
.super Ljava/lang/Object;
.source "FileSourceProvider.kt"

# interfaces
.implements Lshark/DualSourceProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/FileSourceProvider;",
        "Lshark/DualSourceProvider;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "openRandomAccessSource",
        "Lshark/RandomAccessSource;",
        "openStreamingSource",
        "Lokio/BufferedSource;",
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
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/FileSourceProvider;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public openRandomAccessSource()Lshark/RandomAccessSource;
    .locals 2

    .line 13
    iget-object v0, p0, Lshark/FileSourceProvider;->file:Ljava/io/File;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 14
    new-instance v1, Lshark/FileSourceProvider$openRandomAccessSource$1;

    invoke-direct {v1, v0}, Lshark/FileSourceProvider$openRandomAccessSource$1;-><init>(Ljava/nio/channels/FileChannel;)V

    check-cast v1, Lshark/RandomAccessSource;

    return-object v1
.end method

.method public openStreamingSource()Lokio/BufferedSource;
    .locals 2

    .line 10
    iget-object v0, p0, Lshark/FileSourceProvider;->file:Ljava/io/File;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    const-string v1, "Okio.buffer(Okio.source(file.inputStream()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
