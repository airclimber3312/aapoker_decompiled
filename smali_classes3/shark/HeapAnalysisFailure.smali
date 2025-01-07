.class public final Lshark/HeapAnalysisFailure;
.super Lshark/HeapAnalysis;
.source "HeapAnalysis.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HeapAnalysisFailure$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0014\u0010\u0007\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lshark/HeapAnalysisFailure;",
        "Lshark/HeapAnalysis;",
        "heapDumpFile",
        "Ljava/io/File;",
        "createdAtTimeMillis",
        "",
        "dumpDurationMillis",
        "analysisDurationMillis",
        "exception",
        "Lshark/HeapAnalysisException;",
        "(Ljava/io/File;JJJLshark/HeapAnalysisException;)V",
        "getAnalysisDurationMillis",
        "()J",
        "getCreatedAtTimeMillis",
        "getDumpDurationMillis",
        "getException",
        "()Lshark/HeapAnalysisException;",
        "getHeapDumpFile",
        "()Ljava/io/File;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/HeapAnalysisFailure$Companion;

.field private static final serialVersionUID:J = 0x75ba92ee6148f09eL


# instance fields
.field private final analysisDurationMillis:J

.field private final createdAtTimeMillis:J

.field private final dumpDurationMillis:J

.field private final exception:Lshark/HeapAnalysisException;

.field private final heapDumpFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HeapAnalysisFailure$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HeapAnalysisFailure$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HeapAnalysisFailure;->Companion:Lshark/HeapAnalysisFailure$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJJLshark/HeapAnalysisException;)V
    .locals 1

    const-string v0, "heapDumpFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lshark/HeapAnalysis;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lshark/HeapAnalysisFailure;->heapDumpFile:Ljava/io/File;

    iput-wide p2, p0, Lshark/HeapAnalysisFailure;->createdAtTimeMillis:J

    iput-wide p4, p0, Lshark/HeapAnalysisFailure;->dumpDurationMillis:J

    iput-wide p6, p0, Lshark/HeapAnalysisFailure;->analysisDurationMillis:J

    iput-object p8, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;JJJLshark/HeapAnalysisException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 45
    invoke-direct/range {v2 .. v10}, Lshark/HeapAnalysisFailure;-><init>(Ljava/io/File;JJJLshark/HeapAnalysisException;)V

    return-void
.end method

.method public static synthetic copy$default(Lshark/HeapAnalysisFailure;Ljava/io/File;JJJLshark/HeapAnalysisException;ILjava/lang/Object;)Lshark/HeapAnalysisFailure;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getDumpDurationMillis()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide v3, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, p6

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    move-object v7, p0

    iget-object v8, v7, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    goto :goto_4

    :cond_4
    move-object v7, p0

    move-object/from16 v8, p8

    :goto_4
    move-object p1, v0

    move-wide p2, v1

    move-wide p4, v3

    move-wide p6, v5

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lshark/HeapAnalysisFailure;->copy(Ljava/io/File;JJJLshark/HeapAnalysisException;)Lshark/HeapAnalysisFailure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final component2()J
    .locals 2

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getDumpDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component5()Lshark/HeapAnalysisException;
    .locals 1

    iget-object v0, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    return-object v0
.end method

.method public final copy(Ljava/io/File;JJJLshark/HeapAnalysisException;)Lshark/HeapAnalysisFailure;
    .locals 10

    const-string v0, "heapDumpFile"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/HeapAnalysisFailure;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lshark/HeapAnalysisFailure;-><init>(Ljava/io/File;JJJLshark/HeapAnalysisException;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/HeapAnalysisFailure;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/HeapAnalysisFailure;

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getDumpDurationMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lshark/HeapAnalysisFailure;->getDumpDurationMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    iget-object p1, p1, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getAnalysisDurationMillis()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lshark/HeapAnalysisFailure;->analysisDurationMillis:J

    return-wide v0
.end method

.method public getCreatedAtTimeMillis()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lshark/HeapAnalysisFailure;->createdAtTimeMillis:J

    return-wide v0
.end method

.method public getDumpDurationMillis()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lshark/HeapAnalysisFailure;->dumpDurationMillis:J

    return-wide v0
.end method

.method public final getException()Lshark/HeapAnalysisException;
    .locals 1

    .line 50
    iget-object v0, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    return-object v0
.end method

.method public getHeapDumpFile()Ljava/io/File;
    .locals 1

    .line 43
    iget-object v0, p0, Lshark/HeapAnalysisFailure;->heapDumpFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getDumpDurationMillis()J

    move-result-wide v2

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v2

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "====================================\nHEAP ANALYSIS FAILED\n\nYou can report this failure at https://github.com/square/leakcanary/issues\nPlease provide the stacktrace, metadata and the heap dump file.\n====================================\nSTACKTRACE\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lshark/HeapAnalysisFailure;->exception:Lshark/HeapAnalysisException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "====================================\nMETADATA\n\nBuild.VERSION.SDK_INT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lshark/HeapAnalysisKt;->access$androidSdkInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nBuild.MANUFACTURER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lshark/HeapAnalysisKt;->access$androidManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLeakCanary version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lshark/HeapAnalysisKt;->access$leakCanaryVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAnalysis duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getAnalysisDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms\nHeap dump file path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getHeapDumpFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeap dump timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Lshark/HeapAnalysisFailure;->getCreatedAtTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n===================================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
