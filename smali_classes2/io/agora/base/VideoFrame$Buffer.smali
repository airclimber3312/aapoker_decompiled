.class public interface abstract Lio/agora/base/VideoFrame$Buffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lio/agora/base/internal/RefCounted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Buffer"
.end annotation


# virtual methods
.method public abstract cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract mirror(I)Lio/agora/base/VideoFrame$Buffer;
.end method

.method public abstract release()V
.end method

.method public abstract retain()V
.end method

.method public abstract rotate(I)Lio/agora/base/VideoFrame$Buffer;
.end method

.method public abstract toI420()Lio/agora/base/VideoFrame$I420Buffer;
.end method

.method public abstract transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
.end method
