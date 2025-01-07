.class Landroidx/media2/MediaSession2ImplBase$3;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->setCustomLayout(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$layout:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$3;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$3;->val$layout:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$3;->val$layout:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2$ControllerCb;->onCustomLayoutChanged(Ljava/util/List;)V

    return-void
.end method
