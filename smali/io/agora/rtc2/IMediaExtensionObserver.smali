.class public interface abstract Lio/agora/rtc2/IMediaExtensionObserver;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "extension",
            "error",
            "message"
        }
    .end annotation
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "extension",
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract onStarted(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "extension"
        }
    .end annotation
.end method

.method public abstract onStopped(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "extension"
        }
    .end annotation
.end method
