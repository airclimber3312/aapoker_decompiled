.class public final Lshark/HprofRecord$StackTraceRecord;
.super Lshark/HprofRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StackTraceRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lshark/HprofRecord$StackTraceRecord;",
        "Lshark/HprofRecord;",
        "stackTraceSerialNumber",
        "",
        "threadSerialNumber",
        "stackFrameIds",
        "",
        "(II[J)V",
        "getStackFrameIds",
        "()[J",
        "getStackTraceSerialNumber",
        "()I",
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
.field private final stackFrameIds:[J

.field private final stackTraceSerialNumber:I

.field private final threadSerialNumber:I


# direct methods
.method public constructor <init>(II[J)V
    .locals 1

    const-string v0, "stackFrameIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lshark/HprofRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lshark/HprofRecord$StackTraceRecord;->stackTraceSerialNumber:I

    iput p2, p0, Lshark/HprofRecord$StackTraceRecord;->threadSerialNumber:I

    iput-object p3, p0, Lshark/HprofRecord$StackTraceRecord;->stackFrameIds:[J

    return-void
.end method


# virtual methods
.method public final getStackFrameIds()[J
    .locals 1

    .line 44
    iget-object v0, p0, Lshark/HprofRecord$StackTraceRecord;->stackFrameIds:[J

    return-object v0
.end method

.method public final getStackTraceSerialNumber()I
    .locals 1

    .line 42
    iget v0, p0, Lshark/HprofRecord$StackTraceRecord;->stackTraceSerialNumber:I

    return v0
.end method

.method public final getThreadSerialNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lshark/HprofRecord$StackTraceRecord;->threadSerialNumber:I

    return v0
.end method
