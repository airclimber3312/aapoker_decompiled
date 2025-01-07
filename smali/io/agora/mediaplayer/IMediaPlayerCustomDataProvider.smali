.class public interface abstract Lio/agora/mediaplayer/IMediaPlayerCustomDataProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onReadData(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "bufferSize"
        }
    .end annotation
.end method

.method public abstract onSeek(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "whence"
        }
    .end annotation
.end method
