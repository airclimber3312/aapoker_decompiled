.class public Landroidx/media2/AudioFocusHandler;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;,
        Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioFocusHandler"


# instance fields
.field private final mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaSession2;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {v0, p1, p2}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;-><init>(Landroid/content/Context;Landroidx/media2/MediaSession2;)V

    iput-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;->close()V

    return-void
.end method

.method public onPauseRequested()V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;->onPauseRequested()V

    return-void
.end method

.method public onPlayRequested()Z
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayRequested()Z

    move-result v0

    return v0
.end method

.method public onPlayerStateChanged(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0, p1}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;->onPlayerStateChanged(I)V

    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler;->mImpl:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;

    invoke-interface {v0, p1}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;->sendIntent(Landroid/content/Intent;)V

    return-void
.end method
