.class public final enum Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoEncoderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CODEC_CAP_MASK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

.field public static final enum CODEC_CAP_MASK_HW_DEC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

.field public static final enum CODEC_CAP_MASK_HW_ENC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

.field public static final enum CODEC_CAP_MASK_NONE:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

.field public static final enum CODEC_CAP_MASK_SW_DEC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

.field public static final enum CODEC_CAP_MASK_SW_ENC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const-string v1, "CODEC_CAP_MASK_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->CODEC_CAP_MASK_NONE:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    new-instance v1, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const-string v3, "CODEC_CAP_MASK_HW_DEC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->CODEC_CAP_MASK_HW_DEC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    new-instance v3, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const-string v5, "CODEC_CAP_MASK_HW_ENC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->CODEC_CAP_MASK_HW_ENC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    new-instance v5, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const-string v7, "CODEC_CAP_MASK_SW_DEC"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->CODEC_CAP_MASK_SW_DEC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    new-instance v7, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const-string v10, "CODEC_CAP_MASK_SW_ENC"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->CODEC_CAP_MASK_SW_ENC:Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    const/4 v10, 0x5

    new-array v10, v10, [Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    sput-object v10, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->$VALUES:[Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;
    .locals 1

    sget-object v0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->$VALUES:[Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    invoke-virtual {v0}, [Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/video/VideoEncoderConfiguration$CODEC_CAP_MASK;->value:I

    return v0
.end method
