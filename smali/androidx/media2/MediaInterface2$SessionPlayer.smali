.class interface abstract Landroidx/media2/MediaInterface2$SessionPlayer;
.super Ljava/lang/Object;
.source "MediaInterface2.java"

# interfaces
.implements Landroidx/media2/MediaInterface2$SessionPlaybackControl;
.implements Landroidx/media2/MediaInterface2$SessionPlaylistControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaInterface2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SessionPlayer"
.end annotation


# virtual methods
.method public abstract notifyError(ILandroid/os/Bundle;)V
.end method

.method public abstract skipBackward()V
.end method

.method public abstract skipForward()V
.end method
