.class public final enum Lio/agora/mediaplayer/Constants$MediaPlayerState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/mediaplayer/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/mediaplayer/Constants$MediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_DO_NOTHING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_FAILED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_GETTING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_IDLE:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_NONE_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_OPENING:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_OPEN_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_PAUSED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_PAUSING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_PLAYBACK_ALL_LOOPS_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_PLAYBACK_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_PLAYING:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_SEEKING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_SET_TRACK_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_STOPPED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_STOPPING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

.field public static final enum PLAYER_STATE_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/4 v1, -0x1

    const-string v2, "PLAYER_STATE_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v1, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v2, "PLAYER_STATE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_IDLE:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v2, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v5, "PLAYER_STATE_OPENING"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_OPENING:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v5, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v7, "PLAYER_STATE_OPEN_COMPLETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_OPEN_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v7, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v9, "PLAYER_STATE_PLAYING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_PLAYING:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v9, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v11, "PLAYER_STATE_PAUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_PAUSED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v11, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v13, "PLAYER_STATE_PLAYBACK_COMPLETED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_PLAYBACK_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v13, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v15, "PLAYER_STATE_PLAYBACK_ALL_LOOPS_COMPLETED"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_PLAYBACK_ALL_LOOPS_COMPLETED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v15, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const-string v14, "PLAYER_STATE_STOPPED"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_STOPPED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v14, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v10, 0x32

    const-string v12, "PLAYER_STATE_PAUSING_INTERNAL"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_PAUSING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v10, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x33

    const-string v8, "PLAYER_STATE_STOPPING_INTERNAL"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_STOPPING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v8, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x34

    const-string v6, "PLAYER_STATE_SEEKING_INTERNAL"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_SEEKING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v6, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x35

    const-string v4, "PLAYER_STATE_GETTING_INTERNAL"

    const/16 v3, 0xc

    invoke-direct {v6, v4, v3, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_GETTING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v4, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x36

    const-string v3, "PLAYER_STATE_NONE_INTERNAL"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v4, v3, v6, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_NONE_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v3, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x37

    const-string v6, "PLAYER_STATE_DO_NOTHING_INTERNAL"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v3, v6, v4, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_DO_NOTHING_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v6, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x38

    const-string v4, "PLAYER_STATE_SET_TRACK_INTERNAL"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v6, v4, v3, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_SET_TRACK_INTERNAL:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    new-instance v4, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v12, 0x64

    const-string v3, "PLAYER_STATE_FAILED"

    move-object/from16 v19, v6

    const/16 v6, 0x10

    invoke-direct {v4, v3, v6, v12}, Lio/agora/mediaplayer/Constants$MediaPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_FAILED:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/16 v3, 0x11

    new-array v3, v3, [Lio/agora/mediaplayer/Constants$MediaPlayerState;

    const/4 v12, 0x0

    aput-object v0, v3, v12

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v15, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v10, v3, v0

    const/16 v0, 0xb

    aput-object v8, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    aput-object v4, v3, v6

    sput-object v3, Lio/agora/mediaplayer/Constants$MediaPlayerState;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerState;

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

    iput p3, p0, Lio/agora/mediaplayer/Constants$MediaPlayerState;->value:I

    return-void
.end method

.method public static fromNativeIndex(I)Lio/agora/mediaplayer/Constants$MediaPlayerState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeIndex"
        }
    .end annotation

    invoke-static {p0}, Lio/agora/mediaplayer/Constants$MediaPlayerState;->getStateByValue(I)Lio/agora/mediaplayer/Constants$MediaPlayerState;

    move-result-object p0

    return-object p0
.end method

.method public static getStateByValue(I)Lio/agora/mediaplayer/Constants$MediaPlayerState;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lio/agora/mediaplayer/Constants$MediaPlayerState;->values()[Lio/agora/mediaplayer/Constants$MediaPlayerState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lio/agora/mediaplayer/Constants$MediaPlayerState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/agora/mediaplayer/Constants$MediaPlayerState;->PLAYER_STATE_UNKNOWN:Lio/agora/mediaplayer/Constants$MediaPlayerState;

    return-object p0
.end method

.method public static getValue(Lio/agora/mediaplayer/Constants$MediaPlayerState;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/mediaplayer/Constants$MediaPlayerState;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/mediaplayer/Constants$MediaPlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/mediaplayer/Constants$MediaPlayerState;

    return-object p0
.end method

.method public static values()[Lio/agora/mediaplayer/Constants$MediaPlayerState;
    .locals 1

    sget-object v0, Lio/agora/mediaplayer/Constants$MediaPlayerState;->$VALUES:[Lio/agora/mediaplayer/Constants$MediaPlayerState;

    invoke-virtual {v0}, [Lio/agora/mediaplayer/Constants$MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/mediaplayer/Constants$MediaPlayerState;

    return-object v0
.end method
