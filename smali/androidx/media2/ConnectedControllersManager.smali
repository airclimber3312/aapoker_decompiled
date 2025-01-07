.class Landroidx/media2/ConnectedControllersManager;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MS2ControllerMgr"


# instance fields
.field private final mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Landroidx/media2/SessionCommandGroup2;",
            ">;"
        }
    .end annotation
.end field

.field private final mControllers:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "TT;",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeys:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MS2ControllerMgr"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/ConnectedControllersManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    .line 41
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    .line 43
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mKeys:Landroidx/collection/ArrayMap;

    .line 50
    iput-object p1, p0, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    return-void
.end method

.method private notifyDisconnected(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2

    .line 108
    sget-boolean v0, Landroidx/media2/ConnectedControllersManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MS2ControllerMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/ConnectedControllersManager$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/ConnectedControllersManager$1;-><init>(Landroidx/media2/ConnectedControllersManager;Landroidx/media2/MediaSession2$ControllerInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addController(Ljava/lang/Object;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Landroidx/media2/SessionCommandGroup2;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p3, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {p3, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p3, p0, Landroidx/media2/ConnectedControllersManager;->mKeys:Landroidx/collection/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 55
    :cond_1
    :goto_0
    sget-boolean p1, Landroidx/media2/ConnectedControllersManager;->DEBUG:Z

    if-nez p1, :cond_2

    return-void

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key nor controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 129
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 130
    iget-object v3, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getController(Ljava/lang/Object;)Landroidx/media2/MediaSession2$ControllerInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media2/MediaSession2$ControllerInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 162
    :cond_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    instance-of v2, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    if-eqz v2, :cond_3

    .line 167
    check-cast p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v3}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v3, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 170
    invoke-virtual {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v4

    invoke-virtual {v3}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 172
    iget-object p1, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$ControllerInfo;

    monitor-exit v1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    monitor-exit v1

    return-object v0

    .line 177
    :cond_3
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$ControllerInfo;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/SessionCommandGroup2;

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1, p2}, Landroidx/media2/SessionCommandGroup2;->hasCommand(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/SessionCommandGroup2;

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1, p2}, Landroidx/media2/SessionCommandGroup2;->hasCommand(Landroidx/media2/SessionCommand2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isConnected(Landroidx/media2/MediaSession2$ControllerInfo;)Z
    .locals 2

    .line 137
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mKeys:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeController(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mKeys:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget-object v2, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-direct {p0, p1}, Landroidx/media2/ConnectedControllersManager;->notifyDisconnected(Landroidx/media2/MediaSession2$ControllerInfo;)V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeController(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mControllers:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaSession2$ControllerInfo;

    .line 89
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mKeys:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-direct {p0, p1}, Landroidx/media2/ConnectedControllersManager;->notifyDisconnected(Landroidx/media2/MediaSession2$ControllerInfo;)V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
    .locals 3

    const-string v0, "Cannot update allowed command for disconnected controller "

    .line 69
    iget-object v1, p0, Landroidx/media2/ConnectedControllersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    sget-boolean p2, Landroidx/media2/ConnectedControllersManager;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "MS2ControllerMgr"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    monitor-exit v1

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroidx/media2/ConnectedControllersManager;->mAllowedCommandGroupMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
