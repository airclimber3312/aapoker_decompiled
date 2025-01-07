.class public Lio/agora/base/internal/video/GlRectDrawer;
.super Lio/agora/base/internal/video/GlGenericDrawer;
.source "GlRectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/GlRectDrawer$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "void main() {\n  gl_FragColor = sample(tc);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    new-instance v0, Lio/agora/base/internal/video/GlRectDrawer$ShaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/agora/base/internal/video/GlRectDrawer$ShaderCallbacks;-><init>(Lio/agora/base/internal/video/GlRectDrawer$1;)V

    const-string v1, "void main() {\n  gl_FragColor = sample(tc);\n}\n"

    invoke-direct {p0, v1, v0}, Lio/agora/base/internal/video/GlGenericDrawer;-><init>(Ljava/lang/String;Lio/agora/base/internal/video/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic drawAlpha(I[FIIIIII)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p8}, Lio/agora/base/internal/video/GlGenericDrawer;->drawAlpha(I[FIIIIII)V

    return-void
.end method

.method public bridge synthetic drawOes(II[FIIIIII)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p9}, Lio/agora/base/internal/video/GlGenericDrawer;->drawOes(II[FIIIIII)V

    return-void
.end method

.method public bridge synthetic drawRgb(II[FIIIIII)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p9}, Lio/agora/base/internal/video/GlGenericDrawer;->drawRgb(II[FIIIIII)V

    return-void
.end method

.method public bridge synthetic drawRgb(II[FIIIIIIZ)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p10}, Lio/agora/base/internal/video/GlGenericDrawer;->drawRgb(II[FIIIIIIZ)V

    return-void
.end method

.method public bridge synthetic drawYuv([II[FIIIIII)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p9}, Lio/agora/base/internal/video/GlGenericDrawer;->drawYuv([II[FIIIIII)V

    return-void
.end method

.method public bridge synthetic drawYuv([II[FIIIIIILio/agora/base/VideoFrame$ColorSpace;)V
    .locals 0

    .line 14
    invoke-super/range {p0 .. p10}, Lio/agora/base/internal/video/GlGenericDrawer;->drawYuv([II[FIIIIIILio/agora/base/VideoFrame$ColorSpace;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 14
    invoke-super {p0}, Lio/agora/base/internal/video/GlGenericDrawer;->release()V

    return-void
.end method

.method public bridge synthetic setTextureCropCoord(Ljava/nio/FloatBuffer;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lio/agora/base/internal/video/GlGenericDrawer;->setTextureCropCoord(Ljava/nio/FloatBuffer;)V

    return-void
.end method
