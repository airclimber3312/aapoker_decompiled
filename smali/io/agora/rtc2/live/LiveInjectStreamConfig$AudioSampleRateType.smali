.class public final enum Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/live/LiveInjectStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioSampleRateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_32000:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_44100:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public static final enum TYPE_48000:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    const/16 v1, 0x7d00

    const-string v2, "TYPE_32000"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_32000:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    new-instance v1, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    const v2, 0xac44

    const-string v4, "TYPE_44100"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    new-instance v2, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    const v4, 0xbb80

    const-string v6, "TYPE_48000"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_48000:Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    const/4 v4, 0x3

    new-array v4, v4, [Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->$VALUES:[Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

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

    iput p3, p0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;
    .locals 1

    sget-object v0, Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->$VALUES:[Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    invoke-virtual {v0}, [Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/live/LiveInjectStreamConfig$AudioSampleRateType;

    return-object v0
.end method
