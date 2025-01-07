.class Landroidx/media2/MediaBrowser2ImplBase;
.super Landroidx/media2/MediaController2ImplBase;
.source "MediaBrowser2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaBrowser2$BrowserCallback;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Landroidx/media2/MediaController2ImplBase;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/media2/MediaController2ImplBase;->getCallback()Landroidx/media2/MediaController2$ControllerCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaBrowser2$BrowserCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplBase;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    const/16 v0, 0x1d

    .line 91
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroidx/media2/IMediaSession2;->getChildren(Landroidx/media2/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string p3, "Cannot connect to the service or the session is gone"

    .line 97
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1e

    .line 104
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->getItem(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 109
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x1f

    .line 53
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->getLibraryRoot(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 59
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    const/16 v0, 0x20

    .line 129
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroidx/media2/IMediaSession2;->getSearchResult(Landroidx/media2/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string p3, "Cannot connect to the service or the session is gone"

    .line 135
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x21

    .line 116
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->search(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 121
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x22

    .line 66
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1, p2}, Landroidx/media2/IMediaSession2;->subscribe(Landroidx/media2/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v0, "Cannot connect to the service or the session is gone"

    .line 71
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x23

    .line 78
    invoke-virtual {p0, v0}, Landroidx/media2/MediaBrowser2ImplBase;->getSessionInterfaceIfAble(I)Landroidx/media2/IMediaSession2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplBase;->mControllerStub:Landroidx/media2/MediaController2Stub;

    invoke-interface {v0, v1, p1}, Landroidx/media2/IMediaSession2;->unsubscribe(Landroidx/media2/IMediaController2;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
