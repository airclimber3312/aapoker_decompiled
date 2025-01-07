.class public Lio/agora/base/internal/video/EglBase14$Context;
.super Ljava/lang/Object;
.source "EglBase14.java"

# interfaces
.implements Lio/agora/base/internal/video/EglBase$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final egl14Context:Landroid/opengl/EGLContext;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-void
.end method

.method static synthetic access$100(Lio/agora/base/internal/video/EglBase14$Context;)Landroid/opengl/EGLContext;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    instance-of v0, p1, Lio/agora/base/internal/video/EglBase14$Context;

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Lio/agora/base/internal/video/EglBase14$Context;

    .line 77
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p1, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    invoke-virtual {v0, p1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 80
    :cond_0
    iget-object p1, p1, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 83
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEglContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getNativeEglContext()J
    .locals 2

    .line 61
    invoke-static {}, Lio/agora/base/internal/video/EglBase14;->access$000()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getHandle()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/opengl/EGLContext;->hashCode()I

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
