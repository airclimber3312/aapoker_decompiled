.class public Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PFirstRemoteVideoFrame"
.end annotation


# instance fields
.field public elapsed:I

.field public height:I

.field public uid:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall()[B
    .locals 1

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->uid:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->width:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->height:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->elapsed:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->pushInt(I)V

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

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->uid:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->width:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->height:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->elapsed:I

    return-void
.end method
