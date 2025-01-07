.class Landroidx/media2/MediaLibrarySessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibrarySessionImplBase;->notifyChildrenChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibrarySessionImplBase;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/MediaSession2$ControllerInfo;ILandroid/os/Bundle;)V
    .locals 0

    .line 118
    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput p4, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iput-object p5, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$extras:Landroid/os/Bundle;

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

    .line 121
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/MediaLibrarySessionImplBase;->isSubscribed(Landroidx/media2/MediaSession2$ControllerCb;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping notifyChildrenChanged() to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because it hasn\'t subscribed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MS2ImplBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    invoke-virtual {p1}, Landroidx/media2/MediaLibrarySessionImplBase;->dumpSubscription()V

    :cond_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iget v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iget-object v2, p0, Landroidx/media2/MediaLibrarySessionImplBase$2;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerCb;->onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
