.class public Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLocalVideoState"
.end annotation


# instance fields
.field public errorCode:I

.field public source:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall()[B
    .locals 1

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->source:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->pushByte(B)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->state:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->pushByte(B)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->errorCode:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->pushByte(B)V

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

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->popByte()B

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->source:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->popByte()B

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->state:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->popByte()B

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PLocalVideoState;->errorCode:I

    return-void
.end method
