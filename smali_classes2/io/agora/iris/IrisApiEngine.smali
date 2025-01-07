.class public Lio/agora/iris/IrisApiEngine;
.super Ljava/lang/Object;
.source "IrisApiEngine.java"


# instance fields
.field private eventHandler:Lio/agora/iris/IrisEventHandler;

.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AgoraRtcWrapper"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/agora/iris/IrisApiEngine;->CreateIrisApiEngine(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    return-void
.end method

.method private native CallIrisApi(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native CallIrisApi(JLjava/lang/String;Ljava/lang/String;[[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native CreateIrisApiEngine(Ljava/lang/String;)J
.end method

.method private native DestroyIrisApiEngine(J)V
.end method

.method private static native EnableUseJsonArray(Z)V
.end method

.method public static native FreeJObjectByAddress(J)V
.end method

.method public static native GetJObjectAddress(Ljava/lang/Object;)J
.end method

.method public static enableUseJsonArray(Z)V
    .locals 0

    .line 44
    invoke-static {p0}, Lio/agora/iris/IrisApiEngine;->EnableUseJsonArray(Z)V

    return-void
.end method

.method private static getAppPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mounted"

    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected OnEvent(Ljava/lang/String;Ljava/lang/String;[[B)V
    .locals 1

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lio/agora/iris/IrisApiEngine;->eventHandler:Lio/agora/iris/IrisEventHandler;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 50
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lio/agora/iris/IrisEventHandler;->OnEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public callIrisApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-wide v1, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/iris/IrisApiEngine;->CallIrisApi(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public callIrisApi(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-wide v1, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [[B

    .line 34
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[B

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    move-object v0, p3

    check-cast v0, [[B

    :goto_0
    move-object v5, p3

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 33
    invoke-direct/range {v0 .. v5}, Lio/agora/iris/IrisApiEngine;->CallIrisApi(JLjava/lang/String;Ljava/lang/String;[[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/iris/IrisApiEngine;->DestroyIrisApiEngine(J)V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lio/agora/iris/IrisApiEngine;->nativeHandle:J

    return-wide v0
.end method

.method public setEventHandler(Lio/agora/iris/IrisEventHandler;)V
    .locals 0

    .line 21
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lio/agora/iris/IrisApiEngine;->eventHandler:Lio/agora/iris/IrisEventHandler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
