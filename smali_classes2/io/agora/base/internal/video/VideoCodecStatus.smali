.class public final enum Lio/agora/base/internal/video/VideoCodecStatus;
.super Ljava/lang/Enum;
.source "VideoCodecStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/VideoCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum CODEC_RESET_DECODER:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum ERROR:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum ERR_PARAMETER:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum ERR_REQUEST_SLI:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum ERR_SIZE:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum FALLBACK_DEFAULT_PROFILE:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum FALLBACK_SOFTWARE:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum LEVEL_EXCEEDED:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum MEMORY:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum NO_OUTPUT:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum OK:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum REQUEST_SLI:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum SIMULCAST_PARAMETERS_NOT_SUPPORTED:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum TARGET_BITRATE_OVERSHOOT:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum TIMEOUT:Lio/agora/base/internal/video/VideoCodecStatus;

.field public static final enum UNINITIALIZED:Lio/agora/base/internal/video/VideoCodecStatus;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 20
    new-instance v0, Lio/agora/base/internal/video/VideoCodecStatus;

    const-string v1, "REQUEST_SLI"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/internal/video/VideoCodecStatus;->REQUEST_SLI:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 21
    new-instance v1, Lio/agora/base/internal/video/VideoCodecStatus;

    const-string v4, "NO_OUTPUT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/internal/video/VideoCodecStatus;->NO_OUTPUT:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 22
    new-instance v4, Lio/agora/base/internal/video/VideoCodecStatus;

    const-string v6, "OK"

    invoke-direct {v4, v6, v3, v2}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/base/internal/video/VideoCodecStatus;->OK:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 23
    new-instance v6, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v7, -0x1

    const-string v8, "ERROR"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/base/internal/video/VideoCodecStatus;->ERROR:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 24
    new-instance v7, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v8, -0x2

    const-string v10, "LEVEL_EXCEEDED"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/base/internal/video/VideoCodecStatus;->LEVEL_EXCEEDED:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 25
    new-instance v8, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v10, -0x3

    const-string v12, "MEMORY"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/base/internal/video/VideoCodecStatus;->MEMORY:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 26
    new-instance v10, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v12, -0x4

    const-string v14, "ERR_PARAMETER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/base/internal/video/VideoCodecStatus;->ERR_PARAMETER:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 27
    new-instance v12, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v14, -0x5

    const-string v15, "ERR_SIZE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/base/internal/video/VideoCodecStatus;->ERR_SIZE:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 28
    new-instance v14, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v15, -0x6

    const-string v13, "TIMEOUT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/base/internal/video/VideoCodecStatus;->TIMEOUT:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 29
    new-instance v13, Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v15, -0x7

    const-string v11, "UNINITIALIZED"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/base/internal/video/VideoCodecStatus;->UNINITIALIZED:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 30
    new-instance v11, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0xc

    const-string v9, "ERR_REQUEST_SLI"

    const/16 v3, 0xa

    invoke-direct {v11, v9, v3, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/base/internal/video/VideoCodecStatus;->ERR_REQUEST_SLI:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 31
    new-instance v9, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0xd

    const-string v3, "FALLBACK_SOFTWARE"

    const/16 v5, 0xb

    invoke-direct {v9, v3, v5, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/base/internal/video/VideoCodecStatus;->FALLBACK_SOFTWARE:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 32
    new-instance v3, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0xe

    const-string v5, "TARGET_BITRATE_OVERSHOOT"

    const/16 v2, 0xc

    invoke-direct {v3, v5, v2, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/internal/video/VideoCodecStatus;->TARGET_BITRATE_OVERSHOOT:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 33
    new-instance v5, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0xf

    const-string v2, "SIMULCAST_PARAMETERS_NOT_SUPPORTED"

    move-object/from16 v16, v3

    const/16 v3, 0xd

    invoke-direct {v5, v2, v3, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/internal/video/VideoCodecStatus;->SIMULCAST_PARAMETERS_NOT_SUPPORTED:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 34
    new-instance v2, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0x10

    const-string v3, "FALLBACK_DEFAULT_PROFILE"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v2, v3, v5, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/base/internal/video/VideoCodecStatus;->FALLBACK_DEFAULT_PROFILE:Lio/agora/base/internal/video/VideoCodecStatus;

    .line 35
    new-instance v3, Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v15, -0x14

    const-string v5, "CODEC_RESET_DECODER"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v3, v5, v2, v15}, Lio/agora/base/internal/video/VideoCodecStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/internal/video/VideoCodecStatus;->CODEC_RESET_DECODER:Lio/agora/base/internal/video/VideoCodecStatus;

    const/16 v5, 0x10

    new-array v5, v5, [Lio/agora/base/internal/video/VideoCodecStatus;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v7, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    aput-object v3, v5, v2

    .line 19
    sput-object v5, Lio/agora/base/internal/video/VideoCodecStatus;->$VALUES:[Lio/agora/base/internal/video/VideoCodecStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lio/agora/base/internal/video/VideoCodecStatus;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 19
    const-class v0, Lio/agora/base/internal/video/VideoCodecStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/VideoCodecStatus;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/VideoCodecStatus;
    .locals 1

    .line 19
    sget-object v0, Lio/agora/base/internal/video/VideoCodecStatus;->$VALUES:[Lio/agora/base/internal/video/VideoCodecStatus;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/VideoCodecStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/VideoCodecStatus;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 45
    iget v0, p0, Lio/agora/base/internal/video/VideoCodecStatus;->number:I

    return v0
.end method
