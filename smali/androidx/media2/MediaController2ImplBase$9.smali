.class Landroidx/media2/MediaController2ImplBase$9;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->notifyPlaybackInfoChanges(Landroidx/media2/MediaController2$PlaybackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$info:Landroidx/media2/MediaController2$PlaybackInfo;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaController2$PlaybackInfo;)V
    .locals 0

    .line 948
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$9;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$9;->val$info:Landroidx/media2/MediaController2$PlaybackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 951
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$9;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$9;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$9;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$9;->val$info:Landroidx/media2/MediaController2$PlaybackInfo;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onPlaybackInfoChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaController2$PlaybackInfo;)V

    return-void
.end method
