.class public abstract Landroidx/media2/MediaLibraryService2;
.super Landroidx/media2/MediaSessionService2;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaLibraryService2$LibraryRoot;,
        Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaLibraryService2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/media2/MediaSessionService2;-><init>()V

    return-void
.end method


# virtual methods
.method createImpl()Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;
    .locals 1

    .line 374
    new-instance v0, Landroidx/media2/MediaLibraryService2ImplBase;

    invoke-direct {v0}, Landroidx/media2/MediaLibraryService2ImplBase;-><init>()V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 389
    invoke-super {p0, p1}, Landroidx/media2/MediaSessionService2;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 379
    invoke-super {p0}, Landroidx/media2/MediaSessionService2;->onCreate()V

    .line 381
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2;->getSession()Landroidx/media2/MediaSession2;

    move-result-object v0

    .line 382
    instance-of v0, v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected MediaLibrarySession, but returned MediaSession2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
.end method

.method public bridge synthetic onCreateSession(Ljava/lang/String;)Landroidx/media2/MediaSession2;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media2/MediaLibraryService2;->onCreateSession(Ljava/lang/String;)Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object p1

    return-object p1
.end method
