.class public abstract Lio/agora/meta/IMetaService;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lio/agora/meta/IMetaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create()Lio/agora/meta/IMetaService;
    .locals 2

    const-class v0, Lio/agora/meta/IMetaService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/agora/meta/IMetaService;->mInstance:Lio/agora/meta/IMetaService;

    if-nez v1, :cond_0

    new-instance v1, Lio/agora/meta/internal/MetaServiceImpl;

    invoke-direct {v1}, Lio/agora/meta/internal/MetaServiceImpl;-><init>()V

    sput-object v1, Lio/agora/meta/IMetaService;->mInstance:Lio/agora/meta/IMetaService;

    :cond_0
    sget-object v1, Lio/agora/meta/IMetaService;->mInstance:Lio/agora/meta/IMetaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lio/agora/meta/IMetaService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/agora/meta/IMetaService;->mInstance:Lio/agora/meta/IMetaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lio/agora/meta/IMetaService;->doDestroy()I

    const/4 v1, 0x0

    sput-object v1, Lio/agora/meta/IMetaService;->mInstance:Lio/agora/meta/IMetaService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract addEventHandler(Lio/agora/meta/IMetaServiceEventHandler;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation
.end method

.method public abstract cancelDownloadSceneAssets(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation
.end method

.method public abstract cleanSceneAssets(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation
.end method

.method public abstract createScene(Lio/agora/meta/MetaSceneConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method protected abstract doDestroy()I
.end method

.method public abstract downloadSceneAssets(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation
.end method

.method public abstract getLauncherVersion(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation
.end method

.method public abstract getSceneAssetsInfo()I
.end method

.method public abstract initialize(Lio/agora/meta/MetaServiceConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract isSceneAssetsDownloaded(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation
.end method

.method public abstract removeEventHandler(Lio/agora/meta/IMetaServiceEventHandler;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventHandler"
        }
    .end annotation
.end method

.method public abstract renewToken(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method
