.class final Landroidx/media2/SessionToken2$3;
.super Ljava/lang/Object;
.source "SessionToken2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/SessionToken2;->notifySessionToken2Created(Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic val$token2:Landroidx/media2/SessionToken2;


# direct methods
.method constructor <init>(Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V
    .locals 0

    .line 382
    iput-object p1, p0, Landroidx/media2/SessionToken2$3;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iput-object p2, p0, Landroidx/media2/SessionToken2$3;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p3, p0, Landroidx/media2/SessionToken2$3;->val$token2:Landroidx/media2/SessionToken2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 385
    iget-object v0, p0, Landroidx/media2/SessionToken2$3;->val$listener:Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;

    iget-object v1, p0, Landroidx/media2/SessionToken2$3;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v2, p0, Landroidx/media2/SessionToken2$3;->val$token2:Landroidx/media2/SessionToken2;

    invoke-interface {v0, v1, v2}, Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;->onSessionToken2Created(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V

    return-void
.end method
