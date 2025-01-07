.class public interface abstract Lio/agora/base/internal/video/RendererCommon$GlDrawer;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlDrawer"
.end annotation


# virtual methods
.method public abstract drawAlpha(I[FIIIIII)V
.end method

.method public abstract drawOes(II[FIIIIII)V
.end method

.method public abstract drawRgb(II[FIIIIII)V
.end method

.method public abstract drawRgb(II[FIIIIIIZ)V
.end method

.method public abstract drawYuv([II[FIIIIII)V
.end method

.method public abstract drawYuv([II[FIIIIIILio/agora/base/VideoFrame$ColorSpace;)V
.end method

.method public abstract release()V
.end method

.method public abstract setTextureCropCoord(Ljava/nio/FloatBuffer;)V
.end method
