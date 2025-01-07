.class public final Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;
.super Ljava/lang/Object;
.source "UnsortedByteEntries.kt"

# interfaces
.implements Lshark/internal/aosp/ByteArrayComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/UnsortedByteEntries;->moveToSortedMap()Lshark/internal/SortedBytesMap;
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "shark/internal/UnsortedByteEntries$moveToSortedMap$1",
        "Lshark/internal/aosp/ByteArrayComparator;",
        "compare",
        "",
        "entrySize",
        "o1Array",
        "",
        "o1Index",
        "o2Array",
        "o2Index",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lshark/internal/UnsortedByteEntries;


# direct methods
.method constructor <init>(Lshark/internal/UnsortedByteEntries;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(I[BI[BI)I
    .locals 1

    const-string v0, "o1Array"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2Array"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lshark/internal/UnsortedByteEntries;->access$getLongIdentifiers$p(Lshark/internal/UnsortedByteEntries;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    mul-int p3, p3, p1

    invoke-static {v0, p2, p3}, Lshark/internal/UnsortedByteEntries;->access$readLong(Lshark/internal/UnsortedByteEntries;[BI)J

    move-result-wide p2

    .line 64
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    mul-int p5, p5, p1

    invoke-static {v0, p4, p5}, Lshark/internal/UnsortedByteEntries;->access$readLong(Lshark/internal/UnsortedByteEntries;[BI)J

    move-result-wide p4

    cmp-long p1, p2, p4

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    mul-int p3, p3, p1

    invoke-static {v0, p2, p3}, Lshark/internal/UnsortedByteEntries;->access$readInt(Lshark/internal/UnsortedByteEntries;[BI)I

    move-result p2

    .line 69
    iget-object p3, p0, Lshark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lshark/internal/UnsortedByteEntries;

    mul-int p5, p5, p1

    invoke-static {p3, p4, p5}, Lshark/internal/UnsortedByteEntries;->access$readInt(Lshark/internal/UnsortedByteEntries;[BI)I

    move-result p1

    .line 68
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_0
    return p1
.end method
