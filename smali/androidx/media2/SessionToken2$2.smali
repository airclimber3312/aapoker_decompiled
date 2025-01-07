.class final Landroidx/media2/SessionToken2$2;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "SessionToken2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/SessionToken2;->createSessionToken2(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic val$token2ForLegacySession:Landroidx/media2/SessionToken2;


# direct methods
.method constructor <init>(Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroid/os/HandlerThread;)V
    .locals 0

    .line 334
    iput-object p1, p0, Landroidx/media2/SessionToken2$2;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iput-object p2, p0, Landroidx/media2/SessionToken2$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media2/SessionToken2$2;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/SessionToken2$2;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/SessionToken2$2;->val$token2ForLegacySession:Landroidx/media2/SessionToken2;

    iput-object p6, p0, Landroidx/media2/SessionToken2$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroidx/media2/SessionToken2$2;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionReady()V
    .locals 5

    .line 337
    iget-object v0, p0, Landroidx/media2/SessionToken2$2;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 340
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSessionToken2Bundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v2, p0, Landroidx/media2/SessionToken2$2;->val$token2ForLegacySession:Landroidx/media2/SessionToken2;

    invoke-virtual {v2}, Landroidx/media2/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSessionToken2Bundle(Landroid/os/Bundle;)V

    .line 343
    :cond_0
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media2/SessionToken2$2;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iget-object v3, p0, Landroidx/media2/SessionToken2$2;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 344
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSessionToken2Bundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/SessionToken2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2;

    move-result-object v4

    .line 343
    invoke-static {v1, v2, v3, v4}, Landroidx/media2/SessionToken2;->notifySessionToken2Created(Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V

    .line 346
    iget-object v1, p0, Landroidx/media2/SessionToken2$2;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
