.class public final enum Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUDIO_REVERB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

.field public static final enum AUDIO_REVERB_DRY_LEVEL:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

.field public static final enum AUDIO_REVERB_ROOM_SIZE:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

.field public static final enum AUDIO_REVERB_STRENGTH:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

.field public static final enum AUDIO_REVERB_WET_DELAY:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

.field public static final enum AUDIO_REVERB_WET_LEVEL:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const-string v1, "AUDIO_REVERB_DRY_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->AUDIO_REVERB_DRY_LEVEL:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    new-instance v1, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const-string v3, "AUDIO_REVERB_WET_LEVEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->AUDIO_REVERB_WET_LEVEL:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    new-instance v3, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const-string v5, "AUDIO_REVERB_ROOM_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->AUDIO_REVERB_ROOM_SIZE:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    new-instance v5, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const-string v7, "AUDIO_REVERB_WET_DELAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->AUDIO_REVERB_WET_DELAY:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    new-instance v7, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const-string v9, "AUDIO_REVERB_STRENGTH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->AUDIO_REVERB_STRENGTH:Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->$VALUES:[Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

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

    iput p3, p0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->value:I

    return-void
.end method

.method public static fromInt(I)Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->values()[Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;
    .locals 1

    sget-object v0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->$VALUES:[Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    invoke-virtual {v0}, [Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/Constants$AUDIO_REVERB_TYPE;->value:I

    return v0
.end method
