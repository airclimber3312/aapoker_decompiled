.class Landroidx/media2/MediaController2ImplBase$13;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->notifyError(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;ILandroid/os/Bundle;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$13;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput p2, p0, Landroidx/media2/MediaController2ImplBase$13;->val$errorCode:I

    iput-object p3, p0, Landroidx/media2/MediaController2ImplBase$13;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1010
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$13;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$13;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$13;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget v2, p0, Landroidx/media2/MediaController2ImplBase$13;->val$errorCode:I

    iget-object v3, p0, Landroidx/media2/MediaController2ImplBase$13;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaController2$ControllerCallback;->onError(Landroidx/media2/MediaController2;ILandroid/os/Bundle;)V

    return-void
.end method
