.class public Lio/agora/rtc2/internal/gdp/EglSurfaceBase;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EglSurfaceBase"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lio/agora/rtc2/internal/gdp/EglCore;


# direct methods
.method protected constructor <init>(Lio/agora/rtc2/internal/gdp/EglCore;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglCore"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc2/internal/gdp/EglCore;

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc2/internal/gdp/EglCore;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc2/internal/gdp/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeCurrent()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc2/internal/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc2/internal/gdp/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    iget-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc2/internal/gdp/EglCore;

    iget-object v1, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lio/agora/rtc2/internal/gdp/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void
.end method
