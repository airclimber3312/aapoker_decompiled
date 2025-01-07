.class public final enum Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/live/LiveTranscoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum BASELINE:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum HIGH:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

.field public static final enum MAIN:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    const/16 v1, 0x42

    const-string v2, "BASELINE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->BASELINE:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    new-instance v1, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    const/16 v2, 0x4d

    const-string v4, "MAIN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->MAIN:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    new-instance v2, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    const/16 v4, 0x64

    const-string v6, "HIGH"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->HIGH:Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    const/4 v4, 0x3

    new-array v4, v4, [Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->$VALUES:[Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

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

    iput p3, p0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;
    .locals 1

    sget-object v0, Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->$VALUES:[Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    invoke-virtual {v0}, [Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/live/LiveTranscoding$VideoCodecProfileType;

    return-object v0
.end method
