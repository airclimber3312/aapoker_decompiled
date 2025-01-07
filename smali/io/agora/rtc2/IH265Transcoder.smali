.class public interface abstract Lio/agora/rtc2/IH265Transcoder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enableTranscode(Ljava/lang/String;Ljava/lang/String;I)I
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
.end method

.method public abstract queryChannel(Ljava/lang/String;Ljava/lang/String;I)I
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
.end method

.method public abstract registerTranscoderObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract triggerTranscode(Ljava/lang/String;Ljava/lang/String;I)I
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
.end method

.method public abstract unregisterTranscoderObserver(Lio/agora/rtc2/IH265TranscoderObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
