.class Landroidx/media2/MediaSession2ImplBase$6;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->sendCustomCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroidx/media2/SessionCommand2;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 448
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$6;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$command:Landroidx/media2/SessionCommand2;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$command:Landroidx/media2/SessionCommand2;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$args:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$6;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerCb;->onCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
