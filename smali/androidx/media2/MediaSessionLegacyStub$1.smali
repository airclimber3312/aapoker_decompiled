.class Landroidx/media2/MediaSessionLegacyStub$1;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$cb:Landroid/os/ResultReceiver;

.field final synthetic val$command:Landroidx/media2/SessionCommand2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$1;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$command:Landroidx/media2/SessionCommand2;

    iput-object p3, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$cb:Landroid/os/ResultReceiver;

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

    .line 105
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$1;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$1;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    .line 106
    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v2

    iget-object v4, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$command:Landroidx/media2/SessionCommand2;

    iget-object v5, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$args:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media2/MediaSessionLegacyStub$1;->val$cb:Landroid/os/ResultReceiver;

    move-object v3, p1

    .line 105
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/MediaSession2$SessionCallback;->onCustomCommand(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
