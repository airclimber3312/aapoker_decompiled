.class public final Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;
.super Ljava/lang/Object;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "",
        "nameStringId",
        "",
        "type",
        "",
        "(JI)V",
        "getNameStringId",
        "()J",
        "getType",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final nameStringId:J

.field private final type:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    iput p3, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    return-void
.end method

.method public static synthetic copy$default(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;JIILjava/lang/Object;)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->copy(JI)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    return v0
.end method

.method public final copy(JI)Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;
    .locals 1

    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    invoke-direct {v0, p1, p2, p3}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;-><init>(JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    iget-wide v2, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    iget p1, p1, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getNameStringId()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 72
    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldRecord(nameStringId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->nameStringId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
