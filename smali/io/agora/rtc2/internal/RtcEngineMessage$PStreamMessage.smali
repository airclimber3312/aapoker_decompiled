.class public Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PStreamMessage"
.end annotation


# instance fields
.field payload:[B

.field sentTs:J

.field streamId:I

.field uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall()[B
    .locals 1

    invoke-super {p0}, Lio/agora/rtc2/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public unmarshall([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/agora/rtc2/internal/Marshallable;->unmarshall([B)V

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->uid:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->streamId:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->popInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->sentTs:J

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->popBytes()[B

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamMessage;->payload:[B

    return-void
.end method
