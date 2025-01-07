.class public final enum Lshark/HprofRecordTag;
.super Ljava/lang/Enum;
.source "HprofRecordTag.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofRecordTag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/HprofRecordTag;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008)\u0008\u0086\u0001\u0018\u0000 +2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001+B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*\u00a8\u0006,"
    }
    d2 = {
        "Lshark/HprofRecordTag;",
        "",
        "tag",
        "",
        "(Ljava/lang/String;II)V",
        "getTag",
        "()I",
        "STRING_IN_UTF8",
        "LOAD_CLASS",
        "UNLOAD_CLASS",
        "STACK_FRAME",
        "STACK_TRACE",
        "ALLOC_SITES",
        "HEAP_SUMMARY",
        "START_THREAD",
        "END_THREAD",
        "HEAP_DUMP",
        "HEAP_DUMP_SEGMENT",
        "HEAP_DUMP_END",
        "CPU_SAMPLES",
        "CONTROL_SETTINGS",
        "ROOT_UNKNOWN",
        "ROOT_JNI_GLOBAL",
        "ROOT_JNI_LOCAL",
        "ROOT_JAVA_FRAME",
        "ROOT_NATIVE_STACK",
        "ROOT_STICKY_CLASS",
        "ROOT_THREAD_BLOCK",
        "ROOT_MONITOR_USED",
        "ROOT_THREAD_OBJECT",
        "HEAP_DUMP_INFO",
        "ROOT_INTERNED_STRING",
        "ROOT_FINALIZING",
        "ROOT_DEBUGGER",
        "ROOT_REFERENCE_CLEANUP",
        "ROOT_VM_INTERNAL",
        "ROOT_JNI_MONITOR",
        "ROOT_UNREACHABLE",
        "PRIMITIVE_ARRAY_NODATA",
        "CLASS_DUMP",
        "INSTANCE_DUMP",
        "OBJECT_ARRAY_DUMP",
        "PRIMITIVE_ARRAY_DUMP",
        "Companion",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lshark/HprofRecordTag;

.field public static final enum ALLOC_SITES:Lshark/HprofRecordTag;

.field public static final enum CLASS_DUMP:Lshark/HprofRecordTag;

.field public static final enum CONTROL_SETTINGS:Lshark/HprofRecordTag;

.field public static final enum CPU_SAMPLES:Lshark/HprofRecordTag;

.field public static final Companion:Lshark/HprofRecordTag$Companion;

.field public static final enum END_THREAD:Lshark/HprofRecordTag;

.field public static final enum HEAP_DUMP:Lshark/HprofRecordTag;

.field public static final enum HEAP_DUMP_END:Lshark/HprofRecordTag;

.field public static final enum HEAP_DUMP_INFO:Lshark/HprofRecordTag;

.field public static final enum HEAP_DUMP_SEGMENT:Lshark/HprofRecordTag;

.field public static final enum HEAP_SUMMARY:Lshark/HprofRecordTag;

.field public static final enum INSTANCE_DUMP:Lshark/HprofRecordTag;

.field public static final enum LOAD_CLASS:Lshark/HprofRecordTag;

.field public static final enum OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

.field public static final enum PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

.field public static final enum PRIMITIVE_ARRAY_NODATA:Lshark/HprofRecordTag;

.field public static final enum ROOT_DEBUGGER:Lshark/HprofRecordTag;

.field public static final enum ROOT_FINALIZING:Lshark/HprofRecordTag;

.field public static final enum ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

.field public static final enum ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

.field public static final enum ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

.field public static final enum ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

.field public static final enum ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

.field public static final enum ROOT_MONITOR_USED:Lshark/HprofRecordTag;

.field public static final enum ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

.field public static final enum ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

.field public static final enum ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

.field public static final enum ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

.field public static final enum ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

.field public static final enum ROOT_UNKNOWN:Lshark/HprofRecordTag;

.field public static final enum ROOT_UNREACHABLE:Lshark/HprofRecordTag;

.field public static final enum ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

.field public static final enum STACK_FRAME:Lshark/HprofRecordTag;

.field public static final enum STACK_TRACE:Lshark/HprofRecordTag;

.field public static final enum START_THREAD:Lshark/HprofRecordTag;

.field public static final enum STRING_IN_UTF8:Lshark/HprofRecordTag;

.field public static final enum UNLOAD_CLASS:Lshark/HprofRecordTag;

.field private static final rootTags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lshark/HprofRecordTag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x24

    new-array v0, v0, [Lshark/HprofRecordTag;

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "STRING_IN_UTF8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    aput-object v1, v0, v3

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "LOAD_CLASS"

    const/4 v5, 0x2

    .line 7
    invoke-direct {v1, v2, v4, v5}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    aput-object v1, v0, v4

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "UNLOAD_CLASS"

    const/4 v6, 0x3

    .line 10
    invoke-direct {v1, v2, v5, v6}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->UNLOAD_CLASS:Lshark/HprofRecordTag;

    aput-object v1, v0, v5

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "STACK_FRAME"

    const/4 v7, 0x4

    .line 11
    invoke-direct {v1, v2, v6, v7}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->STACK_FRAME:Lshark/HprofRecordTag;

    aput-object v1, v0, v6

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "STACK_TRACE"

    const/4 v8, 0x5

    .line 12
    invoke-direct {v1, v2, v7, v8}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->STACK_TRACE:Lshark/HprofRecordTag;

    aput-object v1, v0, v7

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "ALLOC_SITES"

    const/4 v9, 0x6

    .line 15
    invoke-direct {v1, v2, v8, v9}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->ALLOC_SITES:Lshark/HprofRecordTag;

    aput-object v1, v0, v8

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "HEAP_SUMMARY"

    const/4 v10, 0x7

    .line 18
    invoke-direct {v1, v2, v9, v10}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->HEAP_SUMMARY:Lshark/HprofRecordTag;

    aput-object v1, v0, v9

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "START_THREAD"

    const/16 v11, 0xa

    .line 21
    invoke-direct {v1, v2, v10, v11}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->START_THREAD:Lshark/HprofRecordTag;

    aput-object v1, v0, v10

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "END_THREAD"

    const/16 v12, 0x8

    const/16 v13, 0xb

    .line 24
    invoke-direct {v1, v2, v12, v13}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->END_THREAD:Lshark/HprofRecordTag;

    aput-object v1, v0, v12

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "HEAP_DUMP"

    const/16 v14, 0x9

    const/16 v15, 0xc

    .line 27
    invoke-direct {v1, v2, v14, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->HEAP_DUMP:Lshark/HprofRecordTag;

    aput-object v1, v0, v14

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "HEAP_DUMP_SEGMENT"

    const/16 v14, 0x1c

    .line 30
    invoke-direct {v1, v2, v11, v14}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_SEGMENT:Lshark/HprofRecordTag;

    aput-object v1, v0, v11

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "HEAP_DUMP_END"

    const/16 v11, 0x2c

    .line 31
    invoke-direct {v1, v2, v13, v11}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->HEAP_DUMP_END:Lshark/HprofRecordTag;

    aput-object v1, v0, v13

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "CPU_SAMPLES"

    const/16 v11, 0xd

    .line 34
    invoke-direct {v1, v2, v15, v11}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->CPU_SAMPLES:Lshark/HprofRecordTag;

    aput-object v1, v0, v15

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "CONTROL_SETTINGS"

    const/16 v15, 0xe

    .line 37
    invoke-direct {v1, v2, v11, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->CONTROL_SETTINGS:Lshark/HprofRecordTag;

    aput-object v1, v0, v11

    new-instance v1, Lshark/HprofRecordTag;

    const-string v2, "ROOT_UNKNOWN"

    const/16 v11, 0xff

    .line 38
    invoke-direct {v1, v2, v15, v11}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    aput-object v1, v0, v15

    new-instance v2, Lshark/HprofRecordTag;

    const-string v11, "ROOT_JNI_GLOBAL"

    const/16 v15, 0xf

    .line 39
    invoke-direct {v2, v11, v15, v4}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    aput-object v2, v0, v15

    new-instance v11, Lshark/HprofRecordTag;

    const-string v13, "ROOT_JNI_LOCAL"

    const/16 v4, 0x10

    .line 40
    invoke-direct {v11, v13, v4, v5}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    aput-object v11, v0, v4

    new-instance v4, Lshark/HprofRecordTag;

    const-string v13, "ROOT_JAVA_FRAME"

    const/16 v5, 0x11

    .line 41
    invoke-direct {v4, v13, v5, v6}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    aput-object v4, v0, v5

    new-instance v5, Lshark/HprofRecordTag;

    const-string v13, "ROOT_NATIVE_STACK"

    const/16 v6, 0x12

    .line 42
    invoke-direct {v5, v13, v6, v7}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    aput-object v5, v0, v6

    new-instance v6, Lshark/HprofRecordTag;

    const-string v13, "ROOT_STICKY_CLASS"

    const/16 v7, 0x13

    .line 43
    invoke-direct {v6, v13, v7, v8}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    aput-object v6, v0, v7

    new-instance v7, Lshark/HprofRecordTag;

    const-string v13, "ROOT_THREAD_BLOCK"

    const/16 v8, 0x14

    .line 46
    invoke-direct {v7, v13, v8, v9}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    aput-object v7, v0, v8

    new-instance v8, Lshark/HprofRecordTag;

    const-string v13, "ROOT_MONITOR_USED"

    const/16 v9, 0x15

    .line 47
    invoke-direct {v8, v13, v9, v10}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    aput-object v8, v0, v9

    new-instance v9, Lshark/HprofRecordTag;

    const-string v13, "ROOT_THREAD_OBJECT"

    const/16 v10, 0x16

    .line 48
    invoke-direct {v9, v13, v10, v12}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    aput-object v9, v0, v10

    new-instance v10, Lshark/HprofRecordTag;

    const/16 v13, 0x17

    const/16 v12, 0xfe

    const-string v3, "HEAP_DUMP_INFO"

    .line 61
    invoke-direct {v10, v3, v13, v12}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lshark/HprofRecordTag;->HEAP_DUMP_INFO:Lshark/HprofRecordTag;

    const/16 v3, 0x17

    aput-object v10, v0, v3

    new-instance v3, Lshark/HprofRecordTag;

    const/16 v10, 0x18

    const/16 v12, 0x89

    const-string v13, "ROOT_INTERNED_STRING"

    .line 62
    invoke-direct {v3, v13, v10, v12}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    aput-object v3, v0, v10

    new-instance v10, Lshark/HprofRecordTag;

    const/16 v12, 0x19

    const/16 v13, 0x8a

    const-string v15, "ROOT_FINALIZING"

    .line 63
    invoke-direct {v10, v15, v12, v13}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    aput-object v10, v0, v12

    new-instance v12, Lshark/HprofRecordTag;

    const/16 v13, 0x1a

    const/16 v15, 0x8b

    const-string v14, "ROOT_DEBUGGER"

    .line 64
    invoke-direct {v12, v14, v13, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    aput-object v12, v0, v13

    new-instance v13, Lshark/HprofRecordTag;

    const/16 v14, 0x1b

    const/16 v15, 0x8c

    move-object/from16 v17, v12

    const-string v12, "ROOT_REFERENCE_CLEANUP"

    .line 65
    invoke-direct {v13, v12, v14, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    const/16 v12, 0x1b

    aput-object v13, v0, v12

    new-instance v12, Lshark/HprofRecordTag;

    const-string v14, "ROOT_VM_INTERNAL"

    const/16 v15, 0x8d

    move-object/from16 v18, v13

    const/16 v13, 0x1c

    .line 66
    invoke-direct {v12, v14, v13, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    aput-object v12, v0, v13

    new-instance v13, Lshark/HprofRecordTag;

    const/16 v14, 0x1d

    const/16 v15, 0x8e

    move-object/from16 v16, v12

    const-string v12, "ROOT_JNI_MONITOR"

    .line 67
    invoke-direct {v13, v12, v14, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    const/16 v12, 0x1d

    aput-object v13, v0, v12

    new-instance v12, Lshark/HprofRecordTag;

    const/16 v14, 0x1e

    const/16 v15, 0x90

    move-object/from16 v19, v13

    const-string v13, "ROOT_UNREACHABLE"

    .line 68
    invoke-direct {v12, v13, v14, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    const/16 v13, 0x1e

    aput-object v12, v0, v13

    new-instance v13, Lshark/HprofRecordTag;

    const/16 v14, 0x1f

    const/16 v15, 0xc3

    move-object/from16 v20, v12

    const-string v12, "PRIMITIVE_ARRAY_NODATA"

    .line 71
    invoke-direct {v13, v12, v14, v15}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_NODATA:Lshark/HprofRecordTag;

    const/16 v12, 0x1f

    aput-object v13, v0, v12

    new-instance v12, Lshark/HprofRecordTag;

    const-string v13, "CLASS_DUMP"

    const/16 v14, 0x20

    .line 72
    invoke-direct {v12, v13, v14, v14}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    aput-object v12, v0, v14

    new-instance v12, Lshark/HprofRecordTag;

    const-string v13, "INSTANCE_DUMP"

    const/16 v14, 0x21

    .line 73
    invoke-direct {v12, v13, v14, v14}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    aput-object v12, v0, v14

    new-instance v12, Lshark/HprofRecordTag;

    const-string v13, "OBJECT_ARRAY_DUMP"

    const/16 v14, 0x22

    .line 74
    invoke-direct {v12, v13, v14, v14}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    aput-object v12, v0, v14

    new-instance v12, Lshark/HprofRecordTag;

    const-string v13, "PRIMITIVE_ARRAY_DUMP"

    const/16 v14, 0x23

    .line 75
    invoke-direct {v12, v13, v14, v14}, Lshark/HprofRecordTag;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    aput-object v12, v0, v14

    sput-object v0, Lshark/HprofRecordTag;->$VALUES:[Lshark/HprofRecordTag;

    new-instance v0, Lshark/HprofRecordTag$Companion;

    const/4 v12, 0x0

    invoke-direct {v0, v12}, Lshark/HprofRecordTag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HprofRecordTag;->Companion:Lshark/HprofRecordTag$Companion;

    .line 80
    check-cast v1, Ljava/lang/Enum;

    const/16 v0, 0xf

    new-array v0, v0, [Lshark/HprofRecordTag;

    const/4 v12, 0x0

    aput-object v2, v0, v12

    const/4 v2, 0x1

    aput-object v11, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object v5, v0, v2

    const/4 v2, 0x4

    aput-object v6, v0, v2

    const/4 v2, 0x5

    aput-object v7, v0, v2

    const/4 v2, 0x6

    aput-object v8, v0, v2

    const/4 v2, 0x7

    aput-object v9, v0, v2

    const/16 v2, 0x8

    aput-object v3, v0, v2

    const/16 v2, 0x9

    aput-object v10, v0, v2

    const/16 v2, 0xa

    aput-object v17, v0, v2

    const/16 v2, 0xb

    aput-object v18, v0, v2

    const/16 v2, 0xc

    aput-object v16, v0, v2

    const/16 v2, 0xd

    aput-object v19, v0, v2

    const/16 v2, 0xe

    aput-object v20, v0, v2

    .line 79
    invoke-static {v1, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "EnumSet.of(\n      ROOT_U\u2026   ROOT_UNREACHABLE\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lshark/HprofRecordTag;->rootTags:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lshark/HprofRecordTag;->tag:I

    return-void
.end method

.method public static final synthetic access$getRootTags$cp()Ljava/util/EnumSet;
    .locals 1

    .line 5
    sget-object v0, Lshark/HprofRecordTag;->rootTags:Ljava/util/EnumSet;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/HprofRecordTag;
    .locals 1

    const-class v0, Lshark/HprofRecordTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/HprofRecordTag;

    return-object p0
.end method

.method public static values()[Lshark/HprofRecordTag;
    .locals 1

    sget-object v0, Lshark/HprofRecordTag;->$VALUES:[Lshark/HprofRecordTag;

    invoke-virtual {v0}, [Lshark/HprofRecordTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/HprofRecordTag;

    return-object v0
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 5
    iget v0, p0, Lshark/HprofRecordTag;->tag:I

    return v0
.end method
