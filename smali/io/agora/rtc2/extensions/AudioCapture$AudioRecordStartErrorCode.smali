.class public final enum Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;
.super Ljava/lang/Enum;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioRecordStartErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_EXCEPTION:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

.field public static final enum AUDIO_RECORD_START_STATE_MISMATCH:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    const-string v1, "AUDIO_RECORD_START_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    .line 60
    new-instance v1, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    const-string v3, "AUDIO_RECORD_START_STATE_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 58
    sput-object v3, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->$VALUES:[Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;
    .locals 1

    .line 58
    const-class v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;
    .locals 1

    .line 58
    sget-object v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->$VALUES:[Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    invoke-virtual {v0}, [Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    return-object v0
.end method
