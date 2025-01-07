.class public final Lshark/internal/hppc/TuplesKt;
.super Ljava/lang/Object;
.source "Tuples.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u0080\u0004\u00a2\u0006\u0002\u0010\u0005\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00072\u0006\u0010\u0004\u001a\u0002H\u0002H\u0080\u0004\u00a2\u0006\u0002\u0010\u0008\u001a\u0015\u0010\u0000\u001a\u00020\t*\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0080\u0004\u00a8\u0006\n"
    }
    d2 = {
        "to",
        "Lshark/internal/hppc/IntObjectPair;",
        "B",
        "",
        "that",
        "(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;",
        "Lshark/internal/hppc/LongObjectPair;",
        "",
        "(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;",
        "Lshark/internal/hppc/LongLongPair;",
        "shark-graph"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final to(ILjava/lang/Object;)Lshark/internal/hppc/IntObjectPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(ITB;)",
            "Lshark/internal/hppc/IntObjectPair<",
            "TB;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lshark/internal/hppc/IntObjectPair;

    invoke-direct {v0, p0, p1}, Lshark/internal/hppc/IntObjectPair;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static final to(JJ)Lshark/internal/hppc/LongLongPair;
    .locals 1

    .line 25
    new-instance v0, Lshark/internal/hppc/LongLongPair;

    invoke-direct {v0, p0, p1, p2, p3}, Lshark/internal/hppc/LongLongPair;-><init>(JJ)V

    return-object v0
.end method

.method public static final to(JLjava/lang/Object;)Lshark/internal/hppc/LongObjectPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(JTB;)",
            "Lshark/internal/hppc/LongObjectPair<",
            "TB;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lshark/internal/hppc/LongObjectPair;

    invoke-direct {v0, p0, p1, p2}, Lshark/internal/hppc/LongObjectPair;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method
