.class Landroidx/media2/MediaSession2ImplBase$5;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroidx/media2/SessionCommand2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V
    .locals 0

    .line 430
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$5;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$5;->val$command:Landroidx/media2/SessionCommand2;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$5;->val$args:Landroid/os/Bundle;

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

    .line 433
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$5;->val$command:Landroidx/media2/SessionCommand2;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$5;->val$args:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerCb;->onCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
