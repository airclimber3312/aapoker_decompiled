.class public final enum Lio/agora/base/VideoFrame$ColorSpace$Transfer;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$ColorSpace$Transfer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum ARIB_STD_B67:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum BT1361_ECG:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum BT2020_10:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum BT2020_12:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum BT709:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum GAMMA22:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum GAMMA28:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum IEC61966_2_1:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum IEC61966_2_4:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum LINEAR:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum LOG:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum LOG_SQRT:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum SMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum SMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum SMPTEST2084:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum SMPTEST428:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

.field public static final enum Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Transfer;


# instance fields
.field private final transfer:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 272
    new-instance v0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v1, "BT709"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->BT709:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 273
    new-instance v1, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v4, "Unspecified"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 274
    new-instance v4, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v6, "GAMMA22"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->GAMMA22:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 275
    new-instance v6, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v8, "GAMMA28"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->GAMMA28:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 276
    new-instance v8, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v11, "SMPTE170M"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->SMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 277
    new-instance v11, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v13, "SMPTE240M"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->SMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 278
    new-instance v13, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v15, "LINEAR"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->LINEAR:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 279
    new-instance v15, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v12, "LOG"

    const/16 v7, 0x9

    invoke-direct {v15, v12, v14, v7}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->LOG:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 280
    new-instance v12, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v14, "LOG_SQRT"

    const/16 v9, 0xa

    invoke-direct {v12, v14, v10, v9}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->LOG_SQRT:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 281
    new-instance v14, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v10, "IEC61966_2_4"

    const/16 v5, 0xb

    invoke-direct {v14, v10, v7, v5}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->IEC61966_2_4:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 282
    new-instance v10, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v7, "BT1361_ECG"

    const/16 v3, 0xc

    invoke-direct {v10, v7, v9, v3}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->BT1361_ECG:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 283
    new-instance v7, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v9, "IEC61966_2_1"

    const/16 v2, 0xd

    invoke-direct {v7, v9, v5, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->IEC61966_2_1:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 284
    new-instance v9, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v5, "BT2020_10"

    const/16 v2, 0xe

    invoke-direct {v9, v5, v3, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->BT2020_10:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 285
    new-instance v5, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v3, "BT2020_12"

    const/16 v2, 0xf

    move-object/from16 v16, v9

    const/16 v9, 0xd

    invoke-direct {v5, v3, v9, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->BT2020_12:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 286
    new-instance v3, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v9, "SMPTEST2084"

    const/16 v2, 0x10

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v9, v5, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->SMPTEST2084:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 287
    new-instance v5, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v9, "SMPTEST428"

    const/16 v2, 0x11

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v5, v9, v3, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->SMPTEST428:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 288
    new-instance v3, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const-string v9, "ARIB_STD_B67"

    const/16 v2, 0x12

    move-object/from16 v19, v5

    const/16 v5, 0x10

    invoke-direct {v3, v9, v5, v2}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->ARIB_STD_B67:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const/16 v2, 0x11

    new-array v2, v2, [Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v10, v2, v0

    const/16 v0, 0xb

    aput-object v7, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v3, v2, v0

    .line 271
    sput-object v2, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 291
    iput p3, p0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->transfer:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$ColorSpace$Transfer;
    .locals 1

    .line 271
    const-class v0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$ColorSpace$Transfer;
    .locals 1

    .line 271
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$ColorSpace$Transfer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    return-object v0
.end method


# virtual methods
.method public getTransfer()I
    .locals 1

    .line 294
    iget v0, p0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->transfer:I

    return v0
.end method
