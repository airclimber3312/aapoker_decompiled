.class Landroidx/media2/MediaController2ImplLegacy$1;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy;)V
    .locals 0

    .line 229
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$1;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$1;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$1;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0, v1}, Landroidx/media2/MediaController2$ControllerCallback;->onDisconnected(Landroidx/media2/MediaController2;)V

    return-void
.end method
