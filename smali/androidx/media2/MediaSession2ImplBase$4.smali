.class Landroidx/media2/MediaSession2ImplBase$4;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->setAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$commands:Landroidx/media2/SessionCommandGroup2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommandGroup2;)V
    .locals 0

    .line 412
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$4;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$4;->val$commands:Landroidx/media2/SessionCommandGroup2;

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

    .line 415
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$4;->val$commands:Landroidx/media2/SessionCommandGroup2;

    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2$ControllerCb;->onAllowedCommandsChanged(Landroidx/media2/SessionCommandGroup2;)V

    return-void
.end method
