.class public Lio/agora/rtc2/internal/RtcEngineMessage$PContentInspectConfig;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PContentInspectConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method

.method private marshall(Lio/agora/rtc2/internal/Marshallable;Lio/agora/rtc2/video/ContentInspectConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "config"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget v0, p2, Lio/agora/rtc2/video/ContentInspectConfig;->moduleCount:I

    if-lez v0, :cond_1

    iget v0, p2, Lio/agora/rtc2/video/ContentInspectConfig;->moduleCount:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lio/agora/rtc2/video/ContentInspectConfig;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    iget-object v0, p2, Lio/agora/rtc2/video/ContentInspectConfig;->serverConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/agora/rtc2/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    iget v0, p2, Lio/agora/rtc2/video/ContentInspectConfig;->moduleCount:I

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PContentInspectConfig;->pushShort(S)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lio/agora/rtc2/video/ContentInspectConfig;->moduleCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p2, Lio/agora/rtc2/video/ContentInspectConfig;->modules:[Lio/agora/rtc2/video/ContentInspectConfig$ContentInspectModule;

    aget-object v1, v1, v0

    iget v1, v1, Lio/agora/rtc2/video/ContentInspectConfig$ContentInspectModule;->type:I

    invoke-virtual {p1, v1}, Lio/agora/rtc2/internal/Marshallable;->pushInt(I)V

    iget-object v1, p2, Lio/agora/rtc2/video/ContentInspectConfig;->modules:[Lio/agora/rtc2/video/ContentInspectConfig$ContentInspectModule;

    aget-object v1, v1, v0

    iget v1, v1, Lio/agora/rtc2/video/ContentInspectConfig$ContentInspectModule;->interval:I

    invoke-virtual {p1, v1}, Lio/agora/rtc2/internal/Marshallable;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public marshall(Lio/agora/rtc2/video/ContentInspectConfig;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    invoke-direct {p0, p0, p1}, Lio/agora/rtc2/internal/RtcEngineMessage$PContentInspectConfig;->marshall(Lio/agora/rtc2/internal/Marshallable;Lio/agora/rtc2/video/ContentInspectConfig;)V

    invoke-super {p0}, Lio/agora/rtc2/internal/Marshallable;->marshall()[B

    move-result-object p1

    return-object p1
.end method
