.class Landroidx/media2/subtitle/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/subtitle/SubtitleController;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/SubtitleController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleController$1;->this$0:Landroidx/media2/subtitle/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleController$1;->this$0:Landroidx/media2/subtitle/SubtitleController;

    invoke-virtual {p1}, Landroidx/media2/subtitle/SubtitleController;->doSelectDefaultTrack()V

    return v1

    .line 74
    :cond_1
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleController$1;->this$0:Landroidx/media2/subtitle/SubtitleController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/subtitle/SubtitleTrack;

    invoke-virtual {v0, p1}, Landroidx/media2/subtitle/SubtitleController;->doSelectTrack(Landroidx/media2/subtitle/SubtitleTrack;)V

    return v1

    .line 71
    :cond_2
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleController$1;->this$0:Landroidx/media2/subtitle/SubtitleController;

    invoke-virtual {p1}, Landroidx/media2/subtitle/SubtitleController;->doHide()V

    return v1

    .line 68
    :cond_3
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleController$1;->this$0:Landroidx/media2/subtitle/SubtitleController;

    invoke-virtual {p1}, Landroidx/media2/subtitle/SubtitleController;->doShow()V

    return v1
.end method
