.class public final Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;
.super Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceDumpRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "id",
        "",
        "stackTraceSerialNumber",
        "",
        "classId",
        "fieldValues",
        "",
        "(JIJ[B)V",
        "getClassId",
        "()J",
        "getFieldValues",
        "()[B",
        "getId",
        "getStackTraceSerialNumber",
        "()I",
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
.field private final classId:J

.field private final fieldValues:[B

.field private final id:J

.field private final stackTraceSerialNumber:I


# direct methods
.method public constructor <init>(JIJ[B)V
    .locals 1

    const-string v0, "fieldValues"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->id:J

    iput p3, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->stackTraceSerialNumber:I

    iput-wide p4, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->classId:J

    iput-object p6, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->fieldValues:[B

    return-void
.end method


# virtual methods
.method public final getClassId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->classId:J

    return-wide v0
.end method

.method public final getFieldValues()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->fieldValues:[B

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->id:J

    return-wide v0
.end method

.method public final getStackTraceSerialNumber()I
    .locals 1

    .line 78
    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;->stackTraceSerialNumber:I

    return v0
.end method
