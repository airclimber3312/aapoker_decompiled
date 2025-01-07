.class interface abstract Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;
.super Ljava/lang/Object;
.source "MediaBrowser2.java"

# interfaces
.implements Landroidx/media2/MediaController2$MediaController2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaBrowser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaBrowser2Impl"
.end annotation


# virtual methods
.method public abstract getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract getItem(Ljava/lang/String;)V
.end method

.method public abstract getLibraryRoot(Landroid/os/Bundle;)V
.end method

.method public abstract getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract search(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
.end method
