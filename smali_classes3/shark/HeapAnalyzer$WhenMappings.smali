.class public final synthetic Lshark/HeapAnalyzer$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lshark/LeakTraceObject$LeakingStatus;->values()[Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lshark/LeakTraceObject$LeakingStatus;->values()[Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lshark/LeakTraceObject$LeakingStatus;->values()[Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lshark/LeakTraceObject$LeakingStatus;->values()[Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
