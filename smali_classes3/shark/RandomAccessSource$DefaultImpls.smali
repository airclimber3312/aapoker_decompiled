.class public final Lshark/RandomAccessSource$DefaultImpls;
.super Ljava/lang/Object;
.source "RandomAccessSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/RandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static asStreamingSource(Lshark/RandomAccessSource;)Lokio/BufferedSource;
    .locals 1

    .line 20
    new-instance v0, Lshark/RandomAccessSource$asStreamingSource$1;

    invoke-direct {v0, p0}, Lshark/RandomAccessSource$asStreamingSource$1;-><init>(Lshark/RandomAccessSource;)V

    check-cast v0, Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    const-string v0, "Okio.buffer(object : Sou\u2026 bytesRead\n      }\n    })"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
