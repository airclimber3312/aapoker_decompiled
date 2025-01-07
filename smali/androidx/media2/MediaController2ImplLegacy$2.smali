.class Landroidx/media2/MediaController2ImplLegacy$2;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy;->onConnectedNotLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplLegacy;

.field final synthetic val$commandsBuilder:Landroidx/media2/SessionCommandGroup2$Builder;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy;Landroidx/media2/SessionCommandGroup2$Builder;)V
    .locals 0

    .line 836
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$2;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplLegacy$2;->val$commandsBuilder:Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 839
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$2;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$2;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplLegacy$2;->val$commandsBuilder:Landroidx/media2/SessionCommandGroup2$Builder;

    invoke-virtual {v2}, Landroidx/media2/SessionCommandGroup2$Builder;->build()Landroidx/media2/SessionCommandGroup2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onConnected(Landroidx/media2/MediaController2;Landroidx/media2/SessionCommandGroup2;)V

    return-void
.end method
