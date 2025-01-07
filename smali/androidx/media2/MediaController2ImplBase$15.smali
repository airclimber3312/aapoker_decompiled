.class Landroidx/media2/MediaController2ImplBase$15;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->onConnectedNotLocked(Landroidx/media2/IMediaSession2;Landroidx/media2/SessionCommandGroup2;ILandroidx/media2/MediaItem2;JJFJLandroidx/media2/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$allowedCommands:Landroidx/media2/SessionCommandGroup2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Landroidx/media2/SessionCommandGroup2;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$15;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$15;->val$allowedCommands:Landroidx/media2/SessionCommandGroup2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1094
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$15;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$15;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$15;->val$allowedCommands:Landroidx/media2/SessionCommandGroup2;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onConnected(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommandGroup2;)V

    return-void
.end method
