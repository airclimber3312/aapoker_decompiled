.class Landroidx/media2/MediaSession2ImplBase$7;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->notifyError(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$errorCode:I

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;ILandroid/os/Bundle;)V
    .locals 0

    .line 544
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$7;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput p2, p0, Landroidx/media2/MediaSession2ImplBase$7;->val$errorCode:I

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    iget v0, p0, Landroidx/media2/MediaSession2ImplBase$7;->val$errorCode:I

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2$ControllerCb;->onError(ILandroid/os/Bundle;)V

    return-void
.end method
