.class public final enum Lio/agora/base/internal/Logging$TraceLevel;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/Logging$TraceLevel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_ALL:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_APICALL:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_CRITICAL:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_DEBUG:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_DEFAULT:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_ERROR:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_INFO:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_MEMORY:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_MODULECALL:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_NONE:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_STATEINFO:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_STREAM:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_TERSEINFO:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_TIMER:Lio/agora/base/internal/Logging$TraceLevel;

.field public static final enum TRACE_WARNING:Lio/agora/base/internal/Logging$TraceLevel;


# instance fields
.field public final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 68
    new-instance v0, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v1, "TRACE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_NONE:Lio/agora/base/internal/Logging$TraceLevel;

    .line 69
    new-instance v1, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v3, "TRACE_STATEINFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_STATEINFO:Lio/agora/base/internal/Logging$TraceLevel;

    .line 70
    new-instance v3, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v5, "TRACE_WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_WARNING:Lio/agora/base/internal/Logging$TraceLevel;

    .line 71
    new-instance v5, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v7, "TRACE_ERROR"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_ERROR:Lio/agora/base/internal/Logging$TraceLevel;

    .line 72
    new-instance v7, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v10, "TRACE_CRITICAL"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_CRITICAL:Lio/agora/base/internal/Logging$TraceLevel;

    .line 73
    new-instance v10, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v12, 0x10

    const-string v13, "TRACE_APICALL"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v12}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_APICALL:Lio/agora/base/internal/Logging$TraceLevel;

    .line 74
    new-instance v12, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v13, 0xff

    const-string v15, "TRACE_DEFAULT"

    const/4 v14, 0x6

    invoke-direct {v12, v15, v14, v13}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_DEFAULT:Lio/agora/base/internal/Logging$TraceLevel;

    .line 75
    new-instance v13, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x20

    const-string v14, "TRACE_MODULECALL"

    const/4 v9, 0x7

    invoke-direct {v13, v14, v9, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_MODULECALL:Lio/agora/base/internal/Logging$TraceLevel;

    .line 76
    new-instance v14, Lio/agora/base/internal/Logging$TraceLevel;

    const-string v15, "TRACE_MEMORY"

    const/16 v9, 0x100

    invoke-direct {v14, v15, v11, v9}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_MEMORY:Lio/agora/base/internal/Logging$TraceLevel;

    .line 77
    new-instance v9, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x200

    const-string v11, "TRACE_TIMER"

    const/16 v8, 0x9

    invoke-direct {v9, v11, v8, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_TIMER:Lio/agora/base/internal/Logging$TraceLevel;

    .line 78
    new-instance v11, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x400

    const-string v8, "TRACE_STREAM"

    const/16 v6, 0xa

    invoke-direct {v11, v8, v6, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_STREAM:Lio/agora/base/internal/Logging$TraceLevel;

    .line 79
    new-instance v8, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x800

    const-string v6, "TRACE_DEBUG"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_DEBUG:Lio/agora/base/internal/Logging$TraceLevel;

    .line 80
    new-instance v6, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x1000

    const-string v4, "TRACE_INFO"

    const/16 v2, 0xc

    invoke-direct {v6, v4, v2, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_INFO:Lio/agora/base/internal/Logging$TraceLevel;

    .line 81
    new-instance v4, Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v15, 0x2000

    const-string v2, "TRACE_TERSEINFO"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v4, v2, v6, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_TERSEINFO:Lio/agora/base/internal/Logging$TraceLevel;

    .line 82
    new-instance v2, Lio/agora/base/internal/Logging$TraceLevel;

    const v15, 0xffff

    const-string v6, "TRACE_ALL"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v2, v6, v4, v15}, Lio/agora/base/internal/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/base/internal/Logging$TraceLevel;->TRACE_ALL:Lio/agora/base/internal/Logging$TraceLevel;

    const/16 v6, 0xf

    new-array v6, v6, [Lio/agora/base/internal/Logging$TraceLevel;

    const/4 v15, 0x0

    aput-object v0, v6, v15

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v10, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v9, v6, v0

    const/16 v0, 0xa

    aput-object v11, v6, v0

    const/16 v0, 0xb

    aput-object v8, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 66
    sput-object v6, Lio/agora/base/internal/Logging$TraceLevel;->$VALUES:[Lio/agora/base/internal/Logging$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lio/agora/base/internal/Logging$TraceLevel;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/Logging$TraceLevel;
    .locals 1

    .line 66
    const-class v0, Lio/agora/base/internal/Logging$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/Logging$TraceLevel;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/Logging$TraceLevel;
    .locals 1

    .line 66
    sget-object v0, Lio/agora/base/internal/Logging$TraceLevel;->$VALUES:[Lio/agora/base/internal/Logging$TraceLevel;

    invoke-virtual {v0}, [Lio/agora/base/internal/Logging$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/Logging$TraceLevel;

    return-object v0
.end method
