.class public Lio/agora/base/internal/video/EglBase10$Context;
.super Ljava/lang/Object;
.source "EglBase10.java"

# interfaces
.implements Lio/agora/base/internal/video/EglBase$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic access$000(Lio/agora/base/internal/video/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    instance-of v0, p1, Lio/agora/base/internal/video/EglBase10$Context;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Lio/agora/base/internal/video/EglBase10$Context;

    .line 64
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p1, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    iget-object p1, p1, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 70
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEglContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getNativeEglContext()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lio/agora/base/internal/video/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
