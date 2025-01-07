.class public Lio/agora/rtc2/internal/H265TranscoderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/rtc2/IH265Transcoder;


# static fields
.field protected static mInstance:Lio/agora/rtc2/internal/H265TranscoderImpl;


# instance fields
.field private final mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;


# direct methods
.method private constructor <init>(Lio/agora/rtc2/internal/RtcEngineImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngineImpl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    return-void
.end method

.method public static declared-synchronized destroyInstance()V
    .locals 2

    const-class v0, Lio/agora/rtc2/internal/H265TranscoderImpl;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lio/agora/rtc2/internal/H265TranscoderImpl;->mInstance:Lio/agora/rtc2/internal/H265TranscoderImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lio/agora/rtc2/internal/RtcEngineImpl;)Lio/agora/rtc2/internal/H265TranscoderImpl;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcEngineImpl"
        }
    .end annotation

    const-class v0, Lio/agora/rtc2/internal/H265TranscoderImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/agora/rtc2/internal/H265TranscoderImpl;->mInstance:Lio/agora/rtc2/internal/H265TranscoderImpl;

    if-nez v1, :cond_0

    new-instance v1, Lio/agora/rtc2/internal/H265TranscoderImpl;

    invoke-direct {v1, p0}, Lio/agora/rtc2/internal/H265TranscoderImpl;-><init>(Lio/agora/rtc2/internal/RtcEngineImpl;)V

    sput-object v1, Lio/agora/rtc2/internal/H265TranscoderImpl;->mInstance:Lio/agora/rtc2/internal/H265TranscoderImpl;

    :cond_0
    sget-object p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mInstance:Lio/agora/rtc2/internal/H265TranscoderImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableTranscode(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channel",
            "uid"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc2/internal/RtcEngineImpl;->h265TranscoderEnableTranscode(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public queryChannel(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channel",
            "uid"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc2/internal/RtcEngineImpl;->h265TranscoderQueryChannel(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public registerTranscoderObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->h265TranscoderRegisterObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I

    move-result p1

    return p1
.end method

.method public triggerTranscode(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channel",
            "uid"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc2/internal/RtcEngineImpl;->h265TranscoderTriggerTranscode(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public unregisterTranscoderObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/H265TranscoderImpl;->mRtcEngineImpl:Lio/agora/rtc2/internal/RtcEngineImpl;

    invoke-virtual {v0, p1}, Lio/agora/rtc2/internal/RtcEngineImpl;->h265TranscoderUnregisterObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I

    move-result p1

    return p1
.end method
