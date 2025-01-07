.class interface abstract Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCacheBufferReady(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onDataIsRecorded(I)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onFrame(Lio/agora/base/VideoFrame;)V
.end method
