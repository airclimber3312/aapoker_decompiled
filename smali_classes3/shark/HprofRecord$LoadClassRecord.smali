.class public final Lshark/HprofRecord$LoadClassRecord;
.super Lshark/HprofRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadClassRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lshark/HprofRecord$LoadClassRecord;",
        "Lshark/HprofRecord;",
        "classSerialNumber",
        "",
        "id",
        "",
        "stackTraceSerialNumber",
        "classNameStringId",
        "(IJIJ)V",
        "getClassNameStringId",
        "()J",
        "getClassSerialNumber",
        "()I",
        "getId",
        "getStackTraceSerialNumber",
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
.field private final classNameStringId:J

.field private final classSerialNumber:I

.field private final id:J

.field private final stackTraceSerialNumber:I


# direct methods
.method public constructor <init>(IJIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lshark/HprofRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lshark/HprofRecord$LoadClassRecord;->classSerialNumber:I

    iput-wide p2, p0, Lshark/HprofRecord$LoadClassRecord;->id:J

    iput p4, p0, Lshark/HprofRecord$LoadClassRecord;->stackTraceSerialNumber:I

    iput-wide p5, p0, Lshark/HprofRecord$LoadClassRecord;->classNameStringId:J

    return-void
.end method


# virtual methods
.method public final getClassNameStringId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lshark/HprofRecord$LoadClassRecord;->classNameStringId:J

    return-wide v0
.end method

.method public final getClassSerialNumber()I
    .locals 1

    .line 13
    iget v0, p0, Lshark/HprofRecord$LoadClassRecord;->classSerialNumber:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lshark/HprofRecord$LoadClassRecord;->id:J

    return-wide v0
.end method

.method public final getStackTraceSerialNumber()I
    .locals 1

    .line 15
    iget v0, p0, Lshark/HprofRecord$LoadClassRecord;->stackTraceSerialNumber:I

    return v0
.end method
