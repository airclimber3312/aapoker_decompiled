.class interface abstract Landroidx/media2/MediaSession2$MediaSession2Impl;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Landroidx/media2/MediaInterface2$SessionPlayer;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaSession2Impl"
.end annotation


# virtual methods
.method public abstract createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getAudioFocusHandler()Landroidx/media2/AudioFocusHandler;
.end method

.method public abstract getCallback()Landroidx/media2/MediaSession2$SessionCallback;
.end method

.method public abstract getCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getConnectedControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInstance()Landroidx/media2/MediaSession2;
.end method

.method public abstract getLegacyBrowserServiceBinder()Landroid/os/IBinder;
.end method

.method public abstract getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
.end method

.method public abstract getPlayer()Landroidx/media2/MediaPlayerConnector;
.end method

.method public abstract getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;
.end method

.method public abstract getSessionActivity()Landroid/app/PendingIntent;
.end method

.method public abstract getSessionBinder()Landroid/os/IBinder;
.end method

.method public abstract getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
.end method

.method public abstract getToken()Landroidx/media2/SessionToken2;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract notifyRoutesInfoChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendCustomCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end method

.method public abstract sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V
.end method

.method public abstract setAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
.end method

.method public abstract setCustomLayout(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePlayer(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V
.end method
