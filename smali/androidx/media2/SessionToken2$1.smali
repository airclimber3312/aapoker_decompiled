.class final Landroidx/media2/SessionToken2$1;
.super Landroid/os/Handler;
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

.field final synthetic val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic val$token2ForLegacySession:Landroidx/media2/SessionToken2;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroid/os/HandlerThread;)V
    .locals 0

    .line 315
    iput-object p2, p0, Landroidx/media2/SessionToken2$1;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iput-object p3, p0, Landroidx/media2/SessionToken2$1;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/SessionToken2$1;->val$token2ForLegacySession:Landroidx/media2/SessionToken2;

    iput-object p6, p0, Landroidx/media2/SessionToken2$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroidx/media2/SessionToken2$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 318
    iget-object v0, p0, Landroidx/media2/SessionToken2$1;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    monitor-enter v0

    .line 319
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 321
    iget-object v1, p0, Landroidx/media2/SessionToken2$1;->val$controller:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 322
    iget-object p1, p0, Landroidx/media2/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroidx/media2/SessionToken2$1;->val$token2ForLegacySession:Landroidx/media2/SessionToken2;

    invoke-virtual {v1}, Landroidx/media2/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSessionToken2Bundle(Landroid/os/Bundle;)V

    .line 323
    iget-object p1, p0, Landroidx/media2/SessionToken2$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/media2/SessionToken2$1;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iget-object v2, p0, Landroidx/media2/SessionToken2$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v3, p0, Landroidx/media2/SessionToken2$1;->val$token2ForLegacySession:Landroidx/media2/SessionToken2;

    invoke-static {p1, v1, v2, v3}, Landroidx/media2/SessionToken2;->notifySessionToken2Created(Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V

    .line 326
    iget-object p1, p0, Landroidx/media2/SessionToken2$1;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 331
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
