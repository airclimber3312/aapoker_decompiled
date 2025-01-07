.class interface abstract Landroidx/media2/MediaSessionService2$MediaSessionService2Impl;
.super Ljava/lang/Object;
.source "MediaSessionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSessionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaSessionService2Impl"
.end annotation


# virtual methods
.method public abstract getSession()Landroidx/media2/MediaSession2;
.end method

.method public abstract getSessionType()I
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onCreate(Landroidx/media2/MediaSessionService2;)V
.end method

.method public abstract onUpdateNotification()Landroidx/media2/MediaSessionService2$MediaNotification;
.end method
