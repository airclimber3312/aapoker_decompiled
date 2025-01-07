.class public final enum Lio/agora/base/VideoFrame$ColorSpace$Primary;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/VideoFrame$ColorSpace$Primary;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum BT470BG:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum BT470M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum BT709:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kBT2020:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kFILM:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kJEDECP22:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kSMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kSMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kSMPTEST428:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kSMPTEST431:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field public static final enum kSMPTEST432:Lio/agora/base/VideoFrame$ColorSpace$Primary;


# instance fields
.field private final primary:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 299
    new-instance v0, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v1, "BT709"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/base/VideoFrame$ColorSpace$Primary;->BT709:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 300
    new-instance v1, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v4, "Unspecified"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/base/VideoFrame$ColorSpace$Primary;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 301
    new-instance v4, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v6, "BT470M"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/base/VideoFrame$ColorSpace$Primary;->BT470M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 302
    new-instance v6, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v8, "BT470BG"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/base/VideoFrame$ColorSpace$Primary;->BT470BG:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 303
    new-instance v8, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v11, "kSMPTE170M"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kSMPTE170M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 304
    new-instance v11, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v13, "kSMPTE240M"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kSMPTE240M:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 305
    new-instance v13, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v15, "kFILM"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kFILM:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 306
    new-instance v15, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v12, "kBT2020"

    const/16 v7, 0x9

    invoke-direct {v15, v12, v14, v7}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kBT2020:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 307
    new-instance v12, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v14, "kSMPTEST428"

    const/16 v9, 0xa

    invoke-direct {v12, v14, v10, v9}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kSMPTEST428:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 308
    new-instance v14, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v10, "kSMPTEST431"

    const/16 v5, 0xb

    invoke-direct {v14, v10, v7, v5}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kSMPTEST431:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 309
    new-instance v10, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v7, "kSMPTEST432"

    const/16 v3, 0xc

    invoke-direct {v10, v7, v9, v3}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kSMPTEST432:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 310
    new-instance v7, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const-string v9, "kJEDECP22"

    const/16 v2, 0x16

    invoke-direct {v7, v9, v5, v2}, Lio/agora/base/VideoFrame$ColorSpace$Primary;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/base/VideoFrame$ColorSpace$Primary;->kJEDECP22:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    new-array v2, v3, [Lio/agora/base/VideoFrame$ColorSpace$Primary;

    const/4 v3, 0x0

    aput-object v0, v2, v3

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

    aput-object v7, v2, v5

    .line 298
    sput-object v2, Lio/agora/base/VideoFrame$ColorSpace$Primary;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Primary;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 313
    iput p3, p0, Lio/agora/base/VideoFrame$ColorSpace$Primary;->primary:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/VideoFrame$ColorSpace$Primary;
    .locals 1

    .line 298
    const-class v0, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/VideoFrame$ColorSpace$Primary;

    return-object p0
.end method

.method public static values()[Lio/agora/base/VideoFrame$ColorSpace$Primary;
    .locals 1

    .line 298
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Primary;->$VALUES:[Lio/agora/base/VideoFrame$ColorSpace$Primary;

    invoke-virtual {v0}, [Lio/agora/base/VideoFrame$ColorSpace$Primary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/VideoFrame$ColorSpace$Primary;

    return-object v0
.end method


# virtual methods
.method public getPrimary()I
    .locals 1

    .line 316
    iget v0, p0, Lio/agora/base/VideoFrame$ColorSpace$Primary;->primary:I

    return v0
.end method
