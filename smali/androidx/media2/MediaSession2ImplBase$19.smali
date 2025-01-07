.class Landroidx/media2/MediaSession2ImplBase$19;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->notifyRepeatModeChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$repeatMode:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;I)V
    .locals 0

    .line 1185
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$19;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput p2, p0, Landroidx/media2/MediaSession2ImplBase$19;->val$repeatMode:I

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

    .line 1188
    iget v0, p0, Landroidx/media2/MediaSession2ImplBase$19;->val$repeatMode:I

    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2$ControllerCb;->onRepeatModeChanged(I)V

    return-void
.end method
