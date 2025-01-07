.class public final Lshark/ByteArraySourceProvider;
.super Ljava/lang/Object;
.source "ByteArraySourceProvider.kt"

# interfaces
.implements Lshark/DualSourceProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteArraySourceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteArraySourceProvider.kt\nshark/ByteArraySourceProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/ByteArraySourceProvider;",
        "Lshark/DualSourceProvider;",
        "byteArray",
        "",
        "([B)V",
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
.field private final byteArray:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/ByteArraySourceProvider;->byteArray:[B

    return-void
.end method

.method public static final synthetic access$getByteArray$p(Lshark/ByteArraySourceProvider;)[B
    .locals 0

    .line 8
    iget-object p0, p0, Lshark/ByteArraySourceProvider;->byteArray:[B

    return-object p0
.end method


# virtual methods
.method public openRandomAccessSource()Lshark/RandomAccessSource;
    .locals 1

    .line 12
    new-instance v0, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;

    invoke-direct {v0, p0}, Lshark/ByteArraySourceProvider$openRandomAccessSource$1;-><init>(Lshark/ByteArraySourceProvider;)V

    check-cast v0, Lshark/RandomAccessSource;

    return-object v0
.end method

.method public openStreamingSource()Lokio/BufferedSource;
    .locals 2

    .line 9
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iget-object v1, p0, Lshark/ByteArraySourceProvider;->byteArray:[B

    invoke-virtual {v0, v1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    check-cast v0, Lokio/BufferedSource;

    return-object v0
.end method
