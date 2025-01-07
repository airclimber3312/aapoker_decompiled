.class public final enum Lshark/OnAnalysisProgressListener$Step;
.super Ljava/lang/Enum;
.source "OnAnalysisProgressListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/OnAnalysisProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/OnAnalysisProgressListener$Step;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lshark/OnAnalysisProgressListener$Step;",
        "",
        "(Ljava/lang/String;I)V",
        "PARSING_HEAP_DUMP",
        "EXTRACTING_METADATA",
        "FINDING_RETAINED_OBJECTS",
        "FINDING_PATHS_TO_RETAINED_OBJECTS",
        "FINDING_DOMINATORS",
        "INSPECTING_OBJECTS",
        "COMPUTING_NATIVE_RETAINED_SIZE",
        "COMPUTING_RETAINED_SIZE",
        "BUILDING_LEAK_TRACES",
        "REPORTING_HEAP_ANALYSIS",
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
.field private static final synthetic $VALUES:[Lshark/OnAnalysisProgressListener$Step;

.field public static final enum BUILDING_LEAK_TRACES:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum COMPUTING_NATIVE_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum COMPUTING_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum EXTRACTING_METADATA:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum FINDING_DOMINATORS:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum FINDING_PATHS_TO_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum FINDING_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum INSPECTING_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum PARSING_HEAP_DUMP:Lshark/OnAnalysisProgressListener$Step;

.field public static final enum REPORTING_HEAP_ANALYSIS:Lshark/OnAnalysisProgressListener$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lshark/OnAnalysisProgressListener$Step;

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "PARSING_HEAP_DUMP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->PARSING_HEAP_DUMP:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "EXTRACTING_METADATA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->EXTRACTING_METADATA:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "FINDING_RETAINED_OBJECTS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->FINDING_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "FINDING_PATHS_TO_RETAINED_OBJECTS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->FINDING_PATHS_TO_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "FINDING_DOMINATORS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->FINDING_DOMINATORS:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "INSPECTING_OBJECTS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->INSPECTING_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "COMPUTING_NATIVE_RETAINED_SIZE"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->COMPUTING_NATIVE_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "COMPUTING_RETAINED_SIZE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->COMPUTING_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "BUILDING_LEAK_TRACES"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->BUILDING_LEAK_TRACES:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    new-instance v1, Lshark/OnAnalysisProgressListener$Step;

    const-string v2, "REPORTING_HEAP_ANALYSIS"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lshark/OnAnalysisProgressListener$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/OnAnalysisProgressListener$Step;->REPORTING_HEAP_ANALYSIS:Lshark/OnAnalysisProgressListener$Step;

    aput-object v1, v0, v3

    sput-object v0, Lshark/OnAnalysisProgressListener$Step;->$VALUES:[Lshark/OnAnalysisProgressListener$Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/OnAnalysisProgressListener$Step;
    .locals 1

    const-class v0, Lshark/OnAnalysisProgressListener$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/OnAnalysisProgressListener$Step;

    return-object p0
.end method

.method public static values()[Lshark/OnAnalysisProgressListener$Step;
    .locals 1

    sget-object v0, Lshark/OnAnalysisProgressListener$Step;->$VALUES:[Lshark/OnAnalysisProgressListener$Step;

    invoke-virtual {v0}, [Lshark/OnAnalysisProgressListener$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/OnAnalysisProgressListener$Step;

    return-object v0
.end method
