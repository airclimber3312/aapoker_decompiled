.class public final enum Lio/agora/base/VideoFrame$ColorSpace$Matrix;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Matrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$ColorSpace$Matrix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum BT2020_CL:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum BT2020_NCL:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum BT2100_ICTCP:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum BT470BG:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum BT709:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum CDCLS:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum CDNCLS:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum FCC:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum RGB:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum SMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum SMPTE2085:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum SMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field public static final enum YCOCG:Lio/agora/base/VideoFrame$ColorSpace$Matrix;


# instance fields
.field private final matrix:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 248
    new-instance v0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v1, "RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->RGB:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 249
    new-instance v1, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v3, "BT709"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->BT709:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 250
    new-instance v3, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v5, "Unspecified"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 251
    new-instance v5, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v7, "FCC"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->FCC:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 252
    new-instance v7, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v10, "BT470BG"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v9, v11}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->BT470BG:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 253
    new-instance v10, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v12, "SMPTE170M"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->SMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 254
    new-instance v12, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v14, "SMPTE240M"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->SMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 255
    new-instance v14, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v13, "YCOCG"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->YCOCG:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 256
    new-instance v13, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v15, "BT2020_NCL"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->BT2020_NCL:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 257
    new-instance v15, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v11, "BT2020_CL"

    const/16 v8, 0xa

    invoke-direct {v15, v11, v9, v8}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->BT2020_CL:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 258
    new-instance v11, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v9, "SMPTE2085"

    const/16 v6, 0xb

    invoke-direct {v11, v9, v8, v6}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->SMPTE2085:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 259
    new-instance v9, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v8, "CDNCLS"

    const/16 v4, 0xc

    invoke-direct {v9, v8, v6, v4}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->CDNCLS:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 260
    new-instance v8, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v6, "CDCLS"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->CDCLS:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 261
    new-instance v6, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const-string v4, "BT2100_ICTCP"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v2, v8}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->BT2100_ICTCP:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    new-array v4, v8, [Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v11, v4, v0

    const/16 v0, 0xb

    aput-object v9, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v6, v4, v2

    .line 247
    sput-object v4, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput p3, p0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->matrix:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$ColorSpace$Matrix;
    .locals 1

    .line 247
    const-class v0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$ColorSpace$Matrix;
    .locals 1

    .line 247
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$ColorSpace$Matrix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    return-object v0
.end method


# virtual methods
.method public getMatrix()I
    .locals 1

    .line 267
    iget v0, p0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->matrix:I

    return v0
.end method
