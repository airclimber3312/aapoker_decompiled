.class interface abstract Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"

# interfaces
.implements Landroidx/media2/MediaSession2$MediaSession2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaLibrarySessionImpl"
.end annotation


# virtual methods
.method public abstract getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
.end method

.method public abstract getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
.end method

.method public abstract notifyChildrenChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract notifySearchResultChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract onGetChildrenOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract onGetItemOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
.end method

.method public abstract onGetLibraryRootOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
.end method

.method public abstract onGetSearchResultOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract onSearchOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSubscribeOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onUnsubscribeOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
.end method
