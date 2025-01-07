.class Landroidx/media2/MediaController2ImplBase$16;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->onCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroidx/media2/SessionCommand2;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1111
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$16;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$16;->val$command:Landroidx/media2/SessionCommand2;

    iput-object p3, p0, Landroidx/media2/MediaController2ImplBase$16;->val$args:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/media2/MediaController2ImplBase$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1114
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$16;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$16;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$16;->val$command:Landroidx/media2/SessionCommand2;

    iget-object v3, p0, Landroidx/media2/MediaController2ImplBase$16;->val$args:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/media2/MediaController2ImplBase$16;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaController2$ControllerCallback;->onCustomCommand(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
