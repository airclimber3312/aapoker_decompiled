.class public Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVideoNetOptions"
.end annotation


# instance fields
.field bitrate:S

.field frameRate:S

.field height:S

.field width:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lio/agora/rtc2/internal/Marshallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    iget-short v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->width:S

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushShort(S)V

    iget-short v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->height:S

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushShort(S)V

    iget-short v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->frameRate:S

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushShort(S)V

    iget-short v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->bitrate:S

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushShort(S)V

    return-void
.end method

.method public marshall()[B
    .locals 1

    invoke-virtual {p0, p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->marshall(Lio/agora/rtc2/internal/Marshallable;)V

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

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->width:S

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->height:S

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->frameRate:S

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PVideoNetOptions;->bitrate:S

    return-void
.end method
