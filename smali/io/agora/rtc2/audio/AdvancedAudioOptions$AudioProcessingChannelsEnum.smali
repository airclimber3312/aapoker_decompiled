.class public final enum Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/audio/AdvancedAudioOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioProcessingChannelsEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

.field public static final enum AGORA_AUDIO_MONO_PROCESSING:Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

.field public static final enum AGORA_AUDIO_STEREO_PROCESSING:Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    const-string v1, "AGORA_AUDIO_MONO_PROCESSING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->AGORA_AUDIO_MONO_PROCESSING:Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    new-instance v1, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    const-string v4, "AGORA_AUDIO_STEREO_PROCESSING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->AGORA_AUDIO_STEREO_PROCESSING:Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    new-array v4, v5, [Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->$VALUES:[Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

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

    iput p3, p0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;
    .locals 1

    sget-object v0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->$VALUES:[Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    invoke-virtual {v0}, [Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AdvancedAudioOptions$AudioProcessingChannelsEnum;->value:I

    return v0
.end method
