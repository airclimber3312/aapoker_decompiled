.class public interface abstract Lio/agora/rtc2/IH265TranscoderObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/IH265TranscoderObserver$H265TranscodeResult;
    }
.end annotation


# virtual methods
.method public abstract onEnableTranscode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract onQueryChannel(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "originChannel",
            "transcodeChannel"
        }
    .end annotation
.end method

.method public abstract onTriggerTranscode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method
