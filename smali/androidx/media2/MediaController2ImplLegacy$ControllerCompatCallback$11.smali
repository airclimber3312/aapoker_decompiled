.class Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->onCaptioningEnabledChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1169
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$11;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    new-instance v2, Landroidx/media2/SessionCommand2;

    const-string v3, "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroidx/media2/MediaController2$ControllerCallback;->onCustomCommand(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
