.class public Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSubscribeVideoStateChanged"
.end annotation


# instance fields
.field channelId:Ljava/lang/String;

.field elapseSinceLastState:I

.field newState:S

.field oldState:S

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

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->popString16UTF8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->channelId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->uid:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->oldState:S

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->popShort()S

    move-result p1

    iput-short p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->newState:S

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PSubscribeVideoStateChanged;->elapseSinceLastState:I

    return-void
.end method
