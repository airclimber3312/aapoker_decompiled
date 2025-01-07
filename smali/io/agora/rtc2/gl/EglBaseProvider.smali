.class public Lio/agora/rtc2/gl/EglBaseProvider;
.super Ljava/lang/Object;
.source "EglBaseProvider.java"


# static fields
.field private static final RELEASE_MESSAGE_TEMPLATE:Ljava/lang/String; = "EglBaseProvider released %s unavailable"

.field private static volatile instance:Lio/agora/rtc2/gl/EglBaseProvider;


# instance fields
.field private volatile initialized:Z

.field private localEglBase:Lio/agora/base/internal/video/EglBase;

.field private remoteEglBase:Lio/agora/base/internal/video/EglBase;

.field private rootEglBase:Lio/agora/base/internal/video/EglBase;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->initialized:Z

    return-void
.end method

.method public static acquireEglBaseReadLock()V
    .locals 1

    .line 131
    sget-object v0, Lio/agora/base/internal/video/EglBase;->rwlock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method private checkReleased(Ljava/lang/String;)V
    .locals 2

    .line 185
    sget-object v0, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "EglBaseProvider released %s unavailable"

    .line 186
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroy()V
    .locals 2

    .line 39
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    invoke-direct {v1}, Lio/agora/rtc2/gl/EglBaseProvider;->release()V

    const/4 v1, 0x0

    .line 42
    sput-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    .line 44
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCurrentEglContext()Lio/agora/base/internal/video/EglBase$Context;
    .locals 4

    .line 94
    invoke-static {}, Lio/agora/base/internal/video/EglBase14;->isEGL14SupportedImpl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 96
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    new-instance v1, Lio/agora/base/internal/video/EglBase14$Context;

    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    new-instance v1, Lio/agora/base/internal/video/EglBase10$Context;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private initialize()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Lio/agora/base/internal/video/EglBaseFactory;->create()Lio/agora/base/internal/video/EglBase;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    .line 179
    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v0

    invoke-static {v0}, Lio/agora/base/internal/video/EglBaseFactory;->create(Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/EglBase;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->localEglBase:Lio/agora/base/internal/video/EglBase;

    .line 180
    iget-object v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v0

    invoke-static {v0}, Lio/agora/base/internal/video/EglBaseFactory;->create(Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/EglBase;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->remoteEglBase:Lio/agora/base/internal/video/EglBase;

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lio/agora/rtc2/gl/EglBaseProvider;->initialized:Z

    return-void
.end method

.method public static instance()Lio/agora/rtc2/gl/EglBaseProvider;
    .locals 2

    .line 29
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lio/agora/rtc2/gl/EglBaseProvider;

    invoke-direct {v1}, Lio/agora/rtc2/gl/EglBaseProvider;-><init>()V

    sput-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    .line 33
    :cond_0
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isEgl14BaseContext(Lio/agora/base/internal/video/EglBase$Context;)Z
    .locals 0

    .line 110
    instance-of p0, p0, Lio/agora/base/internal/video/EglBase14$Context;

    return p0
.end method

.method public static isSameEglContext(Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/EglBase$Context;)Z
    .locals 0

    .line 115
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static native nativeExtensionNativeStartFunc(J)V
.end method

.method public static native nativeExtensionNativeStopFunc(J)V
.end method

.method private release()V
    .locals 2

    .line 158
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->remoteEglBase:Lio/agora/base/internal/video/EglBase;

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase;->release()V

    .line 162
    :cond_0
    iget-object v1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->localEglBase:Lio/agora/base/internal/video/EglBase;

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase;->release()V

    .line 165
    :cond_1
    iget-object v1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    if-eqz v1, :cond_2

    .line 166
    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase;->release()V

    :cond_2
    const/4 v1, 0x0

    .line 168
    iput-boolean v1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->initialized:Z

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static releaseEglBaseReadLock()V
    .locals 1

    .line 136
    sget-object v0, Lio/agora/base/internal/video/EglBase;->rwlock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static startWithEglBaseLock(J)V
    .locals 1

    .line 141
    sget-object v0, Lio/agora/base/internal/video/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {p0, p1}, Lio/agora/rtc2/gl/EglBaseProvider;->nativeExtensionNativeStartFunc(J)V

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stopWithEglBaseLock(J)V
    .locals 1

    .line 150
    sget-object v0, Lio/agora/base/internal/video/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {p0, p1}, Lio/agora/rtc2/gl/EglBaseProvider;->nativeExtensionNativeStopFunc(J)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getLocalEglBase()Lio/agora/base/internal/video/EglBase;
    .locals 2

    .line 56
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "getLocalEglBase"

    .line 57
    invoke-direct {p0, v1}, Lio/agora/rtc2/gl/EglBaseProvider;->checkReleased(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->initialize()V

    .line 59
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    iget-object v1, v1, Lio/agora/rtc2/gl/EglBaseProvider;->localEglBase:Lio/agora/base/internal/video/EglBase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLocalEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;
    .locals 2

    .line 65
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "getLocalEglBaseContext"

    .line 66
    invoke-direct {p0, v1}, Lio/agora/rtc2/gl/EglBaseProvider;->checkReleased(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->initialize()V

    .line 68
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    iget-object v1, v1, Lio/agora/rtc2/gl/EglBaseProvider;->localEglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoteEglBase()Lio/agora/base/internal/video/EglBase;
    .locals 2

    .line 73
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "getRemoteEglBase"

    .line 74
    invoke-direct {p0, v1}, Lio/agora/rtc2/gl/EglBaseProvider;->checkReleased(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->initialize()V

    .line 76
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    iget-object v1, v1, Lio/agora/rtc2/gl/EglBaseProvider;->remoteEglBase:Lio/agora/base/internal/video/EglBase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoteEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;
    .locals 2

    .line 82
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "getRemoteEglBaseContext"

    .line 83
    invoke-direct {p0, v1}, Lio/agora/rtc2/gl/EglBaseProvider;->checkReleased(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->initialize()V

    .line 85
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    iget-object v1, v1, Lio/agora/rtc2/gl/EglBaseProvider;->remoteEglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRootEglBase()Lio/agora/base/internal/video/EglBase;
    .locals 2

    .line 48
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "getRootEglBase"

    .line 49
    invoke-direct {p0, v1}, Lio/agora/rtc2/gl/EglBaseProvider;->checkReleased(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->initialize()V

    .line 51
    sget-object v1, Lio/agora/rtc2/gl/EglBaseProvider;->instance:Lio/agora/rtc2/gl/EglBaseProvider;

    iget-object v1, v1, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceRootBase(Lio/agora/base/internal/video/EglBase$Context;)V
    .locals 2

    .line 120
    const-class v0, Lio/agora/rtc2/gl/EglBaseProvider;

    monitor-enter v0

    .line 121
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc2/gl/EglBaseProvider;->release()V

    .line 122
    sget-object v1, Lio/agora/base/internal/video/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p1, v1}, Lio/agora/base/internal/video/EglBaseFactory;->create(Lio/agora/base/internal/video/EglBase$Context;[I)Lio/agora/base/internal/video/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    .line 123
    invoke-interface {p1}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object p1

    invoke-static {p1}, Lio/agora/base/internal/video/EglBaseFactory;->create(Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->localEglBase:Lio/agora/base/internal/video/EglBase;

    .line 124
    iget-object p1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->rootEglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {p1}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object p1

    invoke-static {p1}, Lio/agora/base/internal/video/EglBaseFactory;->create(Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/EglBase;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->remoteEglBase:Lio/agora/base/internal/video/EglBase;

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lio/agora/rtc2/gl/EglBaseProvider;->initialized:Z

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
