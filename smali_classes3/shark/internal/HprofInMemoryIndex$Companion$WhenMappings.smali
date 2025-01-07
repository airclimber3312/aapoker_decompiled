.class public final synthetic Lshark/internal/HprofInMemoryIndex$Companion$WhenMappings;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lshark/HprofRecordTag;->values()[Lshark/HprofRecordTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lshark/internal/HprofInMemoryIndex$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
