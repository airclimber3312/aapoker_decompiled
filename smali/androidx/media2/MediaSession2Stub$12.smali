.class Landroidx/media2/MediaSession2Stub$12;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->sendCustomCommand(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$sessionCommand:Landroidx/media2/SessionCommand2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 406
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$12;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$12;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    iput-object p3, p0, Landroidx/media2/MediaSession2Stub$12;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/media2/MediaSession2Stub$12;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$12;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$12;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    iget-object v4, p0, Landroidx/media2/MediaSession2Stub$12;->val$sessionCommand:Landroidx/media2/SessionCommand2;

    iget-object v5, p0, Landroidx/media2/MediaSession2Stub$12;->val$args:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media2/MediaSession2Stub$12;->val$receiver:Landroid/os/ResultReceiver;

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media2/MediaSession2$SessionCallback;->onCustomCommand(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
