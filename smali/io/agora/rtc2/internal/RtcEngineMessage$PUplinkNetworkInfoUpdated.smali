.class public Lio/agora/rtc2/internal/RtcEngineMessage$PUplinkNetworkInfoUpdated;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PUplinkNetworkInfoUpdated"
.end annotation


# instance fields
.field videoEncoderTargetBitrateBps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public getUplinkNetworkInfo()Lio/agora/rtc2/IRtcEngineEventHandler$UplinkNetworkInfo;
    .locals 2

    new-instance v0, Lio/agora/rtc2/IRtcEngineEventHandler$UplinkNetworkInfo;

    invoke-direct {v0}, Lio/agora/rtc2/IRtcEngineEventHandler$UplinkNetworkInfo;-><init>()V

    iget v1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PUplinkNetworkInfoUpdated;->videoEncoderTargetBitrateBps:I

    iput v1, v0, Lio/agora/rtc2/IRtcEngineEventHandler$UplinkNetworkInfo;->video_encoder_target_bitrate_bps:I

    return-object v0
.end method

.method public marshall()[B
    .locals 1

    invoke-super {p0}, Lio/agora/rtc2/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public unmarshall([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/agora/rtc2/internal/Marshallable;->unmarshall([B)V

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PUplinkNetworkInfoUpdated;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PUplinkNetworkInfoUpdated;->videoEncoderTargetBitrateBps:I

    return-void
.end method
