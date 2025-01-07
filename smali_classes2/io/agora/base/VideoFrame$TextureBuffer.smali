.class public interface abstract Lio/agora/base/VideoFrame$TextureBuffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lio/agora/base/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/VideoFrame$TextureBuffer$ContextType;,
        Lio/agora/base/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# virtual methods
.method public abstract getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;
.end method

.method public abstract getEglContextType()I
.end method

.method public abstract getNativeEglContext()J
.end method

.method public abstract getSequence()I
.end method

.method public abstract getSourceTexturePool()Ljava/lang/Object;
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getTransformMatrixArray()[F
.end method

.method public abstract getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;
.end method
