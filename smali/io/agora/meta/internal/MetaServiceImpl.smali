.class public Lio/agora/meta/internal/MetaServiceImpl;
.super Lio/agora/meta/IMetaService;


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaServiceImpl"


# instance fields
.field private final mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLauncherVersion:Ljava/lang/String;

.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/agora/meta/IMetaService;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private native nativeAddEventHandler(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "handler"
        }
    .end annotation
.end method

.method private native nativeCancelDownloadSceneAssets(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "sceneId"
        }
    .end annotation
.end method

.method private native nativeCleanSceneAssets(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "sceneId"
        }
    .end annotation
.end method

.method private native nativeCreateScene(JLio/agora/meta/MetaSceneConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
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

.method private native nativeDownloadSceneAssets(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "sceneId"
        }
    .end annotation
.end method

.method private native nativeGetSceneAssetsInfo(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeMetaServiceAndroid"
        }
    .end annotation
.end method

.method private native nativeIsSceneAssetsDownloaded(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "sceneId"
        }
    .end annotation
.end method

.method private native nativeObjectInit(Lio/agora/meta/MetaServiceConfig;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "rtcEngine"
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
            "nativeMetaServiceAndroid",
            "handler"
        }
    .end annotation
.end method

.method private native nativeRenewToken(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeMetaServiceAndroid",
            "token"
        }
    .end annotation
.end method

.method private readLauncherVersion(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "LauncherVersion.txt"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v0, "unknown"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lio/agora/meta/internal/MetaServiceImpl;->mLauncherVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get launcher version failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addEventHandler(Lio/agora/meta/IMetaServiceEventHandler;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService is destroying(addEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService does not initialize or it may be destroyed (addEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeAddEventHandler(JLjava/lang/Object;)I

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

.method public cancelDownloadSceneAssets(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService is destroying(cancelDownloadSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService does not initialize or it may be destroyed (cancelDownloadSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaServiceImpl;->nativeCancelDownloadSceneAssets(JJ)I

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

.method public cleanSceneAssets(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService is destroying(cleanSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService does not initialize or it may be destroyed (cleanSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaServiceImpl;->nativeCleanSceneAssets(JJ)I

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

.method public createScene(Lio/agora/meta/MetaSceneConfig;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService is destroying(createScene)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService does not initialize or it may be destroyed (createScene)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    iget-object v0, p1, Lio/agora/meta/MetaSceneConfig;->mActivityContext:Landroid/content/Context;

    if-nez v0, :cond_2

    monitor-exit p0

    const/4 p1, -0x2

    return p1

    :cond_2
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeCreateScene(JLio/agora/meta/MetaSceneConfig;)I

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

.method protected doDestroy()I
    .locals 5

    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object v0, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "MetaService does not initialize or it may be destroyed (doDestroy)"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x7

    return v0

    :cond_0
    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    invoke-static {v0, v1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeDestroy(J)I

    iput-wide v2, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method public downloadSceneAssets(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService is destroying(downloadSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService does not initialize or it may be destroyed (downloadSceneAssets)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaServiceImpl;->nativeDownloadSceneAssets(JJ)I

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

.method public getLauncherVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mLauncherVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lio/agora/meta/internal/MetaServiceImpl;->readLauncherVersion(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lio/agora/meta/internal/MetaServiceImpl;->mLauncherVersion:Ljava/lang/String;

    return-object p1
.end method

.method public getSceneAssetsInfo()I
    .locals 5

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "MetaService is destroying(getSceneAssetsInfo)"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x8

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object v0, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "MetaService does not initialize or it may be destroyed (getSceneAssetsInfo)"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 v0, -0x7

    return v0

    :cond_1
    invoke-direct {p0, v0, v1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeGetSceneAssetsInfo(J)I

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

.method public initialize(Lio/agora/meta/MetaServiceConfig;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService is destroying(initialize)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lio/agora/meta/MetaServiceConfig;->mRtcEngine:Lio/agora/rtc2/RtcEngine;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lio/agora/meta/MetaServiceConfig;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/agora/meta/MetaServiceConfig;->mRtcEngine:Lio/agora/rtc2/RtcEngine;

    const-string v1, "agora_rtm_loader"

    invoke-virtual {v0, v1}, Lio/agora/rtc2/RtcEngine;->loadExtensionProvider(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Rtm extension is not loaded"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lio/agora/meta/MetaServiceConfig;->mRtcEngine:Lio/agora/rtc2/RtcEngine;

    invoke-virtual {v0}, Lio/agora/rtc2/RtcEngine;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeObjectInit(Lio/agora/meta/MetaServiceConfig;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    monitor-exit p0

    const/4 p1, -0x2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isSceneAssetsDownloaded(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService is destroying(isSceneAssetsDownloaded)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string p2, "MetaService does not initialize or it may be destroyed (isSceneAssetsDownloaded)"

    invoke-static {p1, p2}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/meta/internal/MetaServiceImpl;->nativeIsSceneAssetsDownloaded(JJ)I

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

.method public removeEventHandler(Lio/agora/meta/IMetaServiceEventHandler;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService is destroying(removeEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService does not initialize or it may be destroyed (removeEventHandler)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeRemoveEventHandler(JLjava/lang/Object;)I

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

.method public renewToken(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService is destroying(renewToken)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/agora/meta/internal/MetaServiceImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lio/agora/meta/internal/MetaServiceImpl;->TAG:Ljava/lang/String;

    const-string v0, "MetaService does not initialize or it may be destroyed (renewToken)"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    const/4 p1, -0x7

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/meta/internal/MetaServiceImpl;->nativeRenewToken(JLjava/lang/String;)I

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
