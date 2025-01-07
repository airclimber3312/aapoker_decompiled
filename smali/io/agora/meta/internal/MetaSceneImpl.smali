.class public Lio/agora/meta/internal/MetaSceneImpl;
.super Lio/agora/meta/IMetaScene;


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaSceneImpl"


# instance fields
.field private final mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLocalUserAvatar:Lio/agora/meta/ILocalUserAvatar;

.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/meta/IMetaScene;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p1, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    new-instance v0, Lio/agora/meta/internal/LocalUserAvatarImpl;

    invoke-direct {p0, p1, p2}, Lio/agora/meta/internal/MetaSceneImpl;->nativeGetLocalUserAvatar(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lio/agora/meta/internal/LocalUserAvatarImpl;-><init>(J)V

    iput-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mLocalUserAvatar:Lio/agora/meta/ILocalUserAvatar;

    return-void
.end method

.method private native nativeAddEventHandler(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "handler"
        }
    .end annotation
.end method

.method private native nativeAddSceneView(JLandroid/view/TextureView;Lio/agora/meta/SceneDisplayConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "view",
            "config"
        }
    .end annotation
.end method

.method private static native nativeDestroy(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method

.method private native nativeEnableFaceCapture(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "enable"
        }
    .end annotation
.end method

.method private native nativeEnableSceneVideoCapture(JLandroid/view/TextureView;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "view",
            "enable"
        }
    .end annotation
.end method

.method private native nativeEnableVideoDisplay(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "displayId",
            "enable"
        }
    .end annotation
.end method

.method private native nativeEnterScene(JLio/agora/meta/EnterSceneConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "config"
        }
    .end annotation
.end method

.method private native nativeGetLocalUserAvatar(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMetaSceneAndroid"
        }
    .end annotation
.end method

.method private native nativeLeaveScene(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMetaSceneAndroid"
        }
    .end annotation
.end method

.method private native nativePushAgoraVideoFrameToDisplay(JLjava/lang/String;I[BIIJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "displayId",
            "format",
            "buf",
            "stride",
            "height",
            "timestamp"
        }
    .end annotation
.end method

.method private native nativePushVideoFrameToDisplay(JLjava/lang/String;Lio/agora/base/VideoFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "displayId",
            "frame"
        }
    .end annotation
.end method

.method private native nativeRemoveEventHandler(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "handler"
        }
    .end annotation
.end method

.method private native nativeRemoveSceneView(JLandroid/view/TextureView;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "view"
        }
    .end annotation
.end method

.method private native nativeSendSceneMessage(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "message"
        }
    .end annotation
.end method

.method private native nativeSetSceneParameters(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaSceneAndroid",
            "jsonParam"
        }
    .end annotation
.end method


# virtual methods
.method public addEventHandler(Lio/agora/meta/IMetaSceneEventHandler;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(addEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (addEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeAddEventHandler(JLjava/lang/Object;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSceneView(Landroid/view/TextureView;Lio/agora/meta/SceneDisplayConfig;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "config"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene is destroying(addSceneView)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene does not initialize or it may be destroyed (addSceneView)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaSceneImpl;->nativeAddSceneView(JLandroid/view/TextureView;Lio/agora/meta/SceneDisplayConfig;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableFaceCapture(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(enableFaceCapture)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (enableFaceCapture)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeEnableFaceCapture(JZ)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableSceneVideoCapture(Landroid/view/TextureView;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene is destroying(enableSceneVideoCapture)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene does not initialize or it may be destroyed (enableSceneVideoCapture)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaSceneImpl;->nativeEnableSceneVideoCapture(JLandroid/view/TextureView;Z)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableVideoDisplay(Ljava/lang/String;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene is destroying(enableVideoDisplay)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene does not initialize or it may be destroyed (enableVideoDisplay)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaSceneImpl;->nativeEnableVideoDisplay(JLjava/lang/String;Z)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enterScene(Lio/agora/meta/EnterSceneConfig;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(enterScene)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (enterScene)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeEnterScene(JLio/agora/meta/EnterSceneConfig;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLocalUserAvatar()Lio/agora/meta/ILocalUserAvatar;
    .locals 6

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v2, "MetaScene is destroying(getLocalUserAvatar)"

    invoke-static {v0, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    sget-object v0, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v2, "MetaScene does not initialize or it may be destroyed (getLocalUserAvatar)"

    invoke-static {v0, v2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :cond_1
    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mLocalUserAvatar:Lio/agora/meta/ILocalUserAvatar;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public leaveScene()I
    .locals 5

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v1, "MetaScene is destroying(leaveScene)"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x8

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object v0, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v1, "MetaScene does not initialize or it may be destroyed (leaveScene)"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 v0, -0x7

    return v0

    :cond_1
    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeLeaveScene(J)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushVideoFrameToDisplay(Ljava/lang/String;Lio/agora/base/VideoFrame;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene is destroying(pushVideoFrameToDisplay(VideoFrame))"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene does not initialize or it may be destroyed (pushVideoFrameToDisplay)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaSceneImpl;->nativePushVideoFrameToDisplay(JLjava/lang/String;Lio/agora/base/VideoFrame;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushVideoFrameToDisplay(Ljava/lang/String;Lio/agora/rtc2/video/AgoraVideoFrame;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayId",
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene is destroying(pushVideoFrameToDisplay(AgoraVideoFrame))"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaScene does not initialize or it may be destroyed (pushVideoFrameToDisplay)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    iget v4, p2, Lio/agora/rtc2/video/AgoraVideoFrame;->format:I

    iget-object v5, p2, Lio/agora/rtc2/video/AgoraVideoFrame;->buf:[B

    iget v6, p2, Lio/agora/rtc2/video/AgoraVideoFrame;->stride:I

    iget v7, p2, Lio/agora/rtc2/video/AgoraVideoFrame;->height:I

    iget-wide v8, p2, Lio/agora/rtc2/video/AgoraVideoFrame;->timeStamp:J

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lio/agora/meta/internal/MetaSceneImpl;->nativePushAgoraVideoFrameToDisplay(JLjava/lang/String;I[BIIJ)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()I
    .locals 6

    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    invoke-static {v0, v1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeDestroy(J)I

    iput-wide v3, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return v2
.end method

.method public removeEventHandler(Lio/agora/meta/IMetaSceneEventHandler;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(removeEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (removeEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeRemoveEventHandler(JLjava/lang/Object;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeSceneView(Landroid/view/TextureView;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(removeSceneView)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (removeSceneView)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeRemoveSceneView(JLandroid/view/TextureView;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendSceneMessage([B)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(sendSceneMessage)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (sendSceneMessage)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeSendSceneMessage(J[B)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSceneParameters(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonParam"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene is destroying(setSceneParameters)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaSceneImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaSceneImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaScene does not initialize or it may be destroyed (setSceneParameters)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaSceneImpl;->nativeSetSceneParameters(JLjava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
