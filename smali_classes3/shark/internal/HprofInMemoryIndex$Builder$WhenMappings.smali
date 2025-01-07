.class public final synthetic Lshark/internal/HprofInMemoryIndex$Builder$WhenMappings;
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

    sput-object v0, Lshark/internal/HprofInMemoryIndex$Builder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v1, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    invoke-virtual {v1}, Lshark/HprofRecordTag;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    return-void
.end method
