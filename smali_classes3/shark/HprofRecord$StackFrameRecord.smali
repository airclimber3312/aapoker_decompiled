.class public final Lshark/HprofRecord$StackFrameRecord;
.super Lshark/HprofRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackFrameRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lshark/HprofRecord$StackFrameRecord;",
        "Lshark/HprofRecord;",
        "id",
        "",
        "methodNameStringId",
        "methodSignatureStringId",
        "sourceFileNameStringId",
        "classSerialNumber",
        "",
        "lineNumber",
        "(JJJJII)V",
        "getClassSerialNumber",
        "()I",
        "getId",
        "()J",
        "getLineNumber",
        "getMethodNameStringId",
        "getMethodSignatureStringId",
        "getSourceFileNameStringId",
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
.field private final classSerialNumber:I

.field private final id:J

.field private final lineNumber:I

.field private final methodNameStringId:J

.field private final methodSignatureStringId:J

.field private final sourceFileNameStringId:J


# direct methods
.method public constructor <init>(JJJJII)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lshark/HprofRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/HprofRecord$StackFrameRecord;->id:J

    iput-wide p3, p0, Lshark/HprofRecord$StackFrameRecord;->methodNameStringId:J

    iput-wide p5, p0, Lshark/HprofRecord$StackFrameRecord;->methodSignatureStringId:J

    iput-wide p7, p0, Lshark/HprofRecord$StackFrameRecord;->sourceFileNameStringId:J

    iput p9, p0, Lshark/HprofRecord$StackFrameRecord;->classSerialNumber:I

    iput p10, p0, Lshark/HprofRecord$StackFrameRecord;->lineNumber:I

    return-void
.end method


# virtual methods
.method public final getClassSerialNumber()I
    .locals 1

    .line 30
    iget v0, p0, Lshark/HprofRecord$StackFrameRecord;->classSerialNumber:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lshark/HprofRecord$StackFrameRecord;->id:J

    return-wide v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 38
    iget v0, p0, Lshark/HprofRecord$StackFrameRecord;->lineNumber:I

    return v0
.end method

.method public final getMethodNameStringId()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lshark/HprofRecord$StackFrameRecord;->methodNameStringId:J

    return-wide v0
.end method

.method public final getMethodSignatureStringId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lshark/HprofRecord$StackFrameRecord;->methodSignatureStringId:J

    return-wide v0
.end method

.method public final getSourceFileNameStringId()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lshark/HprofRecord$StackFrameRecord;->sourceFileNameStringId:J

    return-wide v0
.end method
