.class public final Lshark/FileSourceProvider$openRandomAccessSource$1;
.super Ljava/lang/Object;
.source "FileSourceProvider.kt"

# interfaces
.implements Lshark/RandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/FileSourceProvider;->openRandomAccessSource()Lshark/RandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "shark/FileSourceProvider$openRandomAccessSource$1",
        "Lshark/RandomAccessSource;",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "position",
        "byteCount",
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
.field final synthetic $channel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lshark/FileSourceProvider$openRandomAccessSource$1;->$channel:Ljava/nio/channels/FileChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asStreamingSource()Lokio/BufferedSource;
    .locals 1

    .line 14
    invoke-static {p0}, Lshark/RandomAccessSource$DefaultImpls;->asStreamingSource(Lshark/RandomAccessSource;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 21
    iget-object v0, p0, Lshark/FileSourceProvider$openRandomAccessSource$1;->$channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;JJ)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lshark/FileSourceProvider$openRandomAccessSource$1;->$channel:Ljava/nio/channels/FileChannel;

    move-object v6, p1

    check-cast v6, Ljava/nio/channels/WritableByteChannel;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method
