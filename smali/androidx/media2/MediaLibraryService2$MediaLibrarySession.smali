.class public final Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
.super Landroidx/media2/MediaSession2;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaLibrarySession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;,
        Landroidx/media2/MediaLibraryService2$MediaLibrarySession$Builder;,
        Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V
    .locals 0

    .line 271
    invoke-direct/range {p0 .. p7}, Landroidx/media2/MediaSession2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    return-void
.end method


# virtual methods
.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;
    .locals 10

    .line 278
    new-instance v9, Landroidx/media2/MediaLibrarySessionImplBase;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/media2/MediaLibrarySessionImplBase;-><init>(Landroidx/media2/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    return-object v9
.end method

.method bridge synthetic createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaSession2$MediaSession2Impl;
    .locals 0

    .line 66
    invoke-virtual/range {p0 .. p7}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object p1

    return-object p1
.end method

.method getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    .locals 1

    .line 335
    invoke-super {p0}, Landroidx/media2/MediaSession2;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    return-object v0
.end method

.method bridge synthetic getCallback()Landroidx/media2/MediaSession2$SessionCallback;
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;
    .locals 1

    .line 284
    invoke-super {p0}, Landroidx/media2/MediaSession2;->getImpl()Landroidx/media2/MediaSession2$MediaSession2Impl;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    return-object v0
.end method

.method bridge synthetic getImpl()Landroidx/media2/MediaSession2$MediaSession2Impl;
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public notifyChildrenChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 302
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->notifyChildrenChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifySearchResultChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 330
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->notifySearchResultChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
