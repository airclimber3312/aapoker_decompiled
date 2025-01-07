.class public final Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;
.super Lshark/HprofRecord$HeapDumpRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeapDumpInfoRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;",
        "Lshark/HprofRecord$HeapDumpRecord;",
        "heapId",
        "",
        "heapNameStringId",
        "",
        "(IJ)V",
        "getHeapId",
        "()I",
        "getHeapNameStringId",
        "()J",
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
.field private final heapId:I

.field private final heapNameStringId:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Lshark/HprofRecord$HeapDumpRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->heapId:I

    iput-wide p2, p0, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->heapNameStringId:J

    return-void
.end method


# virtual methods
.method public final getHeapId()I
    .locals 1

    .line 173
    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->heapId:I

    return v0
.end method

.method public final getHeapNameStringId()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$HeapDumpInfoRecord;->heapNameStringId:J

    return-wide v0
.end method
