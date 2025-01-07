.class Landroidx/media2/MediaController2ImplBase$6;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->notifyBufferingStateChanged(Landroidx/media2/MediaItem2;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$item:Landroidx/media2/MediaItem2;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/MediaItem2;I)V
    .locals 0

    .line 902
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$6;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$6;->val$item:Landroidx/media2/MediaItem2;

    iput p3, p0, Landroidx/media2/MediaController2ImplBase$6;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 905
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$6;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$6;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$6;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$6;->val$item:Landroidx/media2/MediaItem2;

    iget v3, p0, Landroidx/media2/MediaController2ImplBase$6;->val$state:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaController2$ControllerCallback;->onBufferingStateChanged(Landroidx/media2/MediaController2;Landroidx/media2/MediaItem2;I)V

    return-void
.end method
