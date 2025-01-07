.class public interface abstract Lio/agora/rtc2/IMediaRecorderCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onRecorderInfoUpdated(Ljava/lang/String;ILio/agora/rtc2/RecorderInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "uid",
            "info"
        }
    .end annotation
.end method

.method public abstract onRecorderStateChanged(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "uid",
            "state",
            "reason"
        }
    .end annotation
.end method
