.class public Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PStreamInjectedStatus"
.end annotation


# instance fields
.field public status:I

.field public uid:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall()[B
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->pushBytes([B)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->uid:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->status:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->pushInt(I)V

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

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->popString16UTF8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->uid:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PStreamInjectedStatus;->status:I

    return-void
.end method
