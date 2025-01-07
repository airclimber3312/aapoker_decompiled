.class public final Lshark/RandomAccessSource$asStreamingSource$1;
.super Ljava/lang/Object;
.source "RandomAccessSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/RandomAccessSource$DefaultImpls;->asStreamingSource(Lshark/RandomAccessSource;)Lokio/BufferedSource;
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "shark/RandomAccessSource$asStreamingSource$1",
        "Lokio/Source;",
        "position",
        "",
        "getPosition",
        "()J",
        "setPosition",
        "(J)V",
        "close",
        "",
        "read",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "kotlin.jvm.PlatformType",
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
.field private position:J

.field final synthetic this$0:Lshark/RandomAccessSource;


# direct methods
.method constructor <init>(Lshark/RandomAccessSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lshark/RandomAccessSource$asStreamingSource$1;->this$0:Lshark/RandomAccessSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    return-void
.end method

.method public final getPosition()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    return-wide v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-wide v3, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    .line 36
    iget-object v1, p0, Lshark/RandomAccessSource$asStreamingSource$1;->this$0:Lshark/RandomAccessSource;

    move-object v2, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lshark/RandomAccessSource;->read(Lokio/Buffer;JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    return-wide v7

    .line 40
    :cond_0
    iget-wide v0, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    return-wide p1

    .line 34
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Source closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final setPosition(J)V
    .locals 0

    .line 21
    iput-wide p1, p0, Lshark/RandomAccessSource$asStreamingSource$1;->position:J

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 23
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
