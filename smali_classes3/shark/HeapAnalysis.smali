.class public abstract Lshark/HeapAnalysis;
.super Ljava/lang/Object;
.source "HeapAnalysis.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HeapAnalysis$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0012\u0010\t\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006R\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lshark/HeapAnalysis;",
        "Ljava/io/Serializable;",
        "()V",
        "analysisDurationMillis",
        "",
        "getAnalysisDurationMillis",
        "()J",
        "createdAtTimeMillis",
        "getCreatedAtTimeMillis",
        "dumpDurationMillis",
        "getDumpDurationMillis",
        "heapDumpFile",
        "Ljava/io/File;",
        "getHeapDumpFile",
        "()Ljava/io/File;",
        "Companion",
        "Lshark/HeapAnalysisFailure;",
        "Lshark/HeapAnalysisSuccess;",
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
.field public static final Companion:Lshark/HeapAnalysis$Companion;

.field public static final DUMP_DURATION_UNKNOWN:J = -0x1L

.field private static final serialVersionUID:J = -0x7824dc68ae2f6564L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/HeapAnalysis$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HeapAnalysis$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HeapAnalysis;->Companion:Lshark/HeapAnalysis$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lshark/HeapAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnalysisDurationMillis()J
.end method

.method public abstract getCreatedAtTimeMillis()J
.end method

.method public abstract getDumpDurationMillis()J
.end method

.method public abstract getHeapDumpFile()Ljava/io/File;
.end method
