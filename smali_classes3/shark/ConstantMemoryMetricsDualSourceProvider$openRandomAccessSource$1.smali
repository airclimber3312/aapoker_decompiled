.class public final Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;
.super Ljava/lang/Object;
.source "ConstantMemoryMetricsDualSourceProvider.kt"

# interfaces
.implements Lshark/RandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/ConstantMemoryMetricsDualSourceProvider;->openRandomAccessSource()Lshark/RandomAccessSource;
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
        "shark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1",
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
.field final synthetic $randomAccessSource:Lshark/RandomAccessSource;

.field final synthetic this$0:Lshark/ConstantMemoryMetricsDualSourceProvider;


# direct methods
.method constructor <init>(Lshark/ConstantMemoryMetricsDualSourceProvider;Lshark/RandomAccessSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/RandomAccessSource;",
            ")V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;->this$0:Lshark/ConstantMemoryMetricsDualSourceProvider;

    iput-object p2, p0, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;->$randomAccessSource:Lshark/RandomAccessSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asStreamingSource()Lokio/BufferedSource;
    .locals 1

    .line 52
    invoke-static {p0}, Lshark/RandomAccessSource$DefaultImpls;->asStreamingSource(Lshark/RandomAccessSource;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;->$randomAccessSource:Lshark/RandomAccessSource;

    invoke-interface {v0}, Lshark/RandomAccessSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;JJ)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;->$randomAccessSource:Lshark/RandomAccessSource;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lshark/RandomAccessSource;->read(Lokio/Buffer;JJ)J

    move-result-wide p4

    .line 59
    iget-object p1, p0, Lshark/ConstantMemoryMetricsDualSourceProvider$openRandomAccessSource$1;->this$0:Lshark/ConstantMemoryMetricsDualSourceProvider;

    invoke-static {p1, p2, p3, p4, p5}, Lshark/ConstantMemoryMetricsDualSourceProvider;->access$updateRandomAccessStatsOnRead(Lshark/ConstantMemoryMetricsDualSourceProvider;JJ)V

    return-wide p4
.end method
