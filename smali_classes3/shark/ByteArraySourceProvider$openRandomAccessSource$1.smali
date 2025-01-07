.class public final Lshark/ByteArraySourceProvider$openRandomAccessSource$1;
.super Ljava/lang/Object;
.source "ByteArraySourceProvider.kt"

# interfaces
.implements Lshark/RandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/ByteArraySourceProvider;->openRandomAccessSource()Lshark/RandomAccessSource;
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "shark/ByteArraySourceProvider$openRandomAccessSource$1",
        "Lshark/RandomAccessSource;",
        "closed",
        "",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
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
.field private closed:Z

.field final synthetic this$0:Lshark/ByteArraySourceProvider;


# direct methods
.method constructor <init>(Lshark/ByteArraySourceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->this$0:Lshark/ByteArraySourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asStreamingSource()Lokio/BufferedSource;
    .locals 1

    .line 12
    invoke-static {p0}, Lshark/RandomAccessSource$DefaultImpls;->asStreamingSource(Lshark/RandomAccessSource;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->closed:Z

    return-void
.end method

.method public final getClosed()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->closed:Z

    return v0
.end method

.method public read(Lokio/Buffer;JJ)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->closed:Z

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->this$0:Lshark/ByteArraySourceProvider;

    invoke-static {v0}, Lshark/ByteArraySourceProvider;->access$getByteArray$p(Lshark/ByteArraySourceProvider;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    sub-long/2addr v0, p2

    invoke-static {p4, p5, v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p4

    .line 25
    iget-object v0, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->this$0:Lshark/ByteArraySourceProvider;

    invoke-static {v0}, Lshark/ByteArraySourceProvider;->access$getByteArray$p(Lshark/ByteArraySourceProvider;)[B

    move-result-object v0

    long-to-int p3, p2

    long-to-int p2, p4

    invoke-virtual {p1, v0, p3, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-wide p4

    .line 22
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Source closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final setClosed(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;->closed:Z

    return-void
.end method
