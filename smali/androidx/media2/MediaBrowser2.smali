.class public Landroidx/media2/MediaBrowser2;
.super Landroidx/media2/MediaController2;
.source "MediaBrowser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;,
        Landroidx/media2/MediaBrowser2$BrowserCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaBrowser2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaBrowser2"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/MediaBrowser2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaBrowser2$BrowserCallback;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/MediaController2;-><init>(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V

    return-void
.end method


# virtual methods
.method createImpl(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;
    .locals 13

    .line 143
    invoke-virtual {p2}, Landroidx/media2/SessionToken2;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy;

    move-object/from16 v6, p4

    check-cast v6, Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/MediaBrowser2ImplLegacy;-><init>(Landroid/content/Context;Landroidx/media2/MediaBrowser2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaBrowser2$BrowserCallback;)V

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Landroidx/media2/MediaBrowser2ImplBase;

    move-object/from16 v12, p4

    check-cast v12, Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-object v7, v0

    move-object v8, p1

    move-object v9, p0

    move-object v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Landroidx/media2/MediaBrowser2ImplBase;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaBrowser2$BrowserCallback;)V

    return-object v0
.end method

.method bridge synthetic createImpl(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)Landroidx/media2/MediaController2$MediaController2Impl;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/MediaBrowser2;->createImpl(Landroid/content/Context;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object p1

    return-object p1
.end method

.method getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/media2/MediaController2;->getCallback()Landroidx/media2/MediaController2$ControllerCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaBrowser2$BrowserCallback;

    return-object v0
.end method

.method bridge synthetic getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;
    .locals 1

    .line 154
    invoke-super {p0}, Landroidx/media2/MediaController2;->getImpl()Landroidx/media2/MediaController2$MediaController2Impl;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    return-object v0
.end method

.method bridge synthetic getImpl()Landroidx/media2/MediaController2$MediaController2Impl;
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->getItem(Ljava/lang/String;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->getLibraryRoot(Landroid/os/Bundle;)V

    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->search(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->subscribe(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2;->getImpl()Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method
