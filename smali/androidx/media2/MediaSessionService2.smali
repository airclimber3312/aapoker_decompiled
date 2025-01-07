.class public abstract Landroidx/media2/MediaSessionService2;
.super Landroid/app/Service;
.source "MediaSessionService2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;,
        Landroidx/media2/MediaSessionService2$MediaNotification;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaSessionService2"

.field public static final SERVICE_META_DATA_SESSION_ID:Ljava/lang/String; = "android.media.session2.SESSION_ID"


# instance fields
.field private final mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    invoke-virtual {p0}, Landroidx/media2/MediaSessionService2;->createImpl()Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/MediaSessionService2;->mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    return-void
.end method


# virtual methods
.method createImpl()Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;
    .locals 1

    .line 127
    new-instance v0, Landroidx/media2/MediaSessionService2ImplBase;

    invoke-direct {v0}, Landroidx/media2/MediaSessionService2ImplBase;-><init>()V

    return-object v0
.end method

.method public final getSession()Landroidx/media2/MediaSession2;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/media2/MediaSessionService2;->mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;->getSession()Landroidx/media2/MediaSession2;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/media2/MediaSessionService2;->mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    invoke-interface {v0, p1}, Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 140
    iget-object v0, p0, Landroidx/media2/MediaSessionService2;->mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    invoke-interface {v0, p0}, Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;->onCreate(Landroidx/media2/MediaSessionService2;)V

    return-void
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroidx/media2/MediaSession2;
.end method

.method public onUpdateNotification()Landroidx/media2/MediaSessionService2$MediaNotification;
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media2/MediaSessionService2;->mImpl:Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;->onUpdateNotification()Landroidx/media2/MediaSessionService2$MediaNotification;

    move-result-object v0

    return-object v0
.end method
