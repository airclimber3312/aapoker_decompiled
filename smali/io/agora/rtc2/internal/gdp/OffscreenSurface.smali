.class public Lio/agora/rtc2/internal/gdp/OffscreenSurface;
.super Lio/agora/rtc2/internal/gdp/EglSurfaceBase;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/internal/gdp/EglCore;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglCore",
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/gdp/EglSurfaceBase;-><init>(Lio/agora/rtc2/internal/gdp/EglCore;)V

    invoke-virtual {p0, p2, p3}, Lio/agora/rtc2/internal/gdp/OffscreenSurface;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-virtual {p0}, Lio/agora/rtc2/internal/gdp/OffscreenSurface;->releaseEglSurface()V

    return-void
.end method
