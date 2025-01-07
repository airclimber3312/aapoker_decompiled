.class public final Lshark/GcRoot$JavaFrame;
.super Lshark/GcRoot;
.source "GcRoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/GcRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaFrame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lshark/GcRoot$JavaFrame;",
        "Lshark/GcRoot;",
        "id",
        "",
        "threadSerialNumber",
        "",
        "frameNumber",
        "(JII)V",
        "getFrameNumber",
        "()I",
        "getId",
        "()J",
        "getThreadSerialNumber",
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
.field private final frameNumber:I

.field private final id:J

.field private final threadSerialNumber:I


# direct methods
.method public constructor <init>(JII)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lshark/GcRoot;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/GcRoot$JavaFrame;->id:J

    iput p3, p0, Lshark/GcRoot$JavaFrame;->threadSerialNumber:I

    iput p4, p0, Lshark/GcRoot$JavaFrame;->frameNumber:I

    return-void
.end method


# virtual methods
.method public final getFrameNumber()I
    .locals 1

    .line 49
    iget v0, p0, Lshark/GcRoot$JavaFrame;->frameNumber:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lshark/GcRoot$JavaFrame;->id:J

    return-wide v0
.end method

.method public final getThreadSerialNumber()I
    .locals 1

    .line 45
    iget v0, p0, Lshark/GcRoot$JavaFrame;->threadSerialNumber:I

    return v0
.end method
