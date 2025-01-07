.class Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->onRepeatModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

.field final synthetic val$repeatMode:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;I)V
    .locals 0

    .line 1181
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iput p2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;->val$repeatMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1184
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;->this$1:Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    iget v2, p0, Landroidx/media2/MediaController2ImplLegacy$ControllerCompatCallback$12;->val$repeatMode:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onRepeatModeChanged(Landroidx/media2/MediaController2;I)V

    return-void
.end method
