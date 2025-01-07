.class public final enum Lio/agora/mediaplayer/Constants$MediaPlayerReason;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/mediaplayer/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaPlayerReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/mediaplayer/Constants$MediaPlayerReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_CODEC_NOT_SUPPORTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INTERRUPTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INVALID_ARGUMENTS:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INVALID_CONNECTION_STATE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INVALID_MEDIA_SOURCE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_INVALID_STATE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_IP_EXPIRED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_NONE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_NOT_SUPPORTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_NO_RESOURCE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_OBJ_NOT_INITIALIZED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_TOKEN_EXPIRED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_UNKNOWN_STREAM_TYPE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_URL_NOT_FOUND:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAYER_REASON_VIDEO_RENDER_FAILED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

.field public static final enum PLAY_REASON_SRC_BUFFER_UNDERFLOW:Lio/agora/mediaplayer/Constants$MediaPlayerReason;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const-string v1, "PLAYER_REASON_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_NONE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v1, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v3, -0x1

    const-string v4, "PLAYER_REASON_INVALID_ARGUMENTS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INVALID_ARGUMENTS:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v3, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v4, -0x2

    const-string v6, "PLAYER_REASON_INTERNAL"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v4, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v6, -0x3

    const-string v8, "PLAYER_REASON_NO_RESOURCE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_NO_RESOURCE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v6, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v8, -0x4

    const-string v10, "PLAYER_REASON_INVALID_MEDIA_SOURCE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INVALID_MEDIA_SOURCE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v8, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v10, -0x5

    const-string v12, "PLAYER_REASON_UNKNOWN_STREAM_TYPE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_UNKNOWN_STREAM_TYPE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v10, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v12, -0x6

    const-string v14, "PLAYER_REASON_OBJ_NOT_INITIALIZED"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_OBJ_NOT_INITIALIZED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v12, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v14, -0x7

    const-string v15, "PLAYER_REASON_CODEC_NOT_SUPPORTED"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_CODEC_NOT_SUPPORTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v14, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v15, -0x8

    const-string v13, "PLAYER_REASON_VIDEO_RENDER_FAILED"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_VIDEO_RENDER_FAILED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v13, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0x9

    const-string v11, "PLAYER_REASON_INVALID_STATE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INVALID_STATE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v11, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xa

    const-string v9, "PLAYER_REASON_URL_NOT_FOUND"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_URL_NOT_FOUND:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v9, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xb

    const-string v7, "PLAYER_REASON_INVALID_CONNECTION_STATE"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INVALID_CONNECTION_STATE:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v7, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xc

    const-string v5, "PLAY_REASON_SRC_BUFFER_UNDERFLOW"

    const/16 v2, 0xc

    invoke-direct {v7, v5, v2, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAY_REASON_SRC_BUFFER_UNDERFLOW:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v5, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xd

    const-string v2, "PLAYER_REASON_INTERRUPTED"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v2, v7, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_INTERRUPTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v2, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xe

    const-string v7, "PLAYER_REASON_NOT_SUPPORTED"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v2, v7, v5, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_NOT_SUPPORTED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v7, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0xf

    const-string v5, "PLAYER_REASON_TOKEN_EXPIRED"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v7, v5, v2, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_TOKEN_EXPIRED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v5, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0x10

    const-string v2, "PLAYER_REASON_IP_EXPIRED"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v2, v7, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_IP_EXPIRED:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    new-instance v2, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v15, -0x11

    const-string v7, "PLAYER_REASON_UNKNOWN"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v2, v7, v5, v15}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/16 v7, 0x12

    new-array v7, v7, [Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v18, v7, v0

    const/16 v0, 0xf

    aput-object v19, v7, v0

    const/16 v0, 0x10

    aput-object v20, v7, v0

    aput-object v2, v7, v5

    sput-object v7, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerReason;

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

    iput p3, p0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->value:I

    return-void
.end method

.method public static fromNativeIndex(I)Lio/agora/mediaplayer/Constants$MediaPlayerReason;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeIndex"
        }
    .end annotation

    invoke-static {p0}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->getErrorByValue(I)Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorByValue(I)Lio/agora/mediaplayer/Constants$MediaPlayerReason;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->values()[Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->PLAYER_REASON_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    return-object p0
.end method

.method public static getValue(Lio/agora/mediaplayer/Constants$MediaPlayerReason;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/mediaplayer/Constants$MediaPlayerReason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    return-object p0
.end method

.method public static values()[Lio/agora/mediaplayer/Constants$MediaPlayerReason;
    .locals 1

    sget-object v0, Lio/agora/mediaplayer/Constants$MediaPlayerReason;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    invoke-virtual {v0}, [Lio/agora/mediaplayer/Constants$MediaPlayerReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/mediaplayer/Constants$MediaPlayerReason;

    return-object v0
.end method
