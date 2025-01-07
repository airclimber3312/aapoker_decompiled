.class Landroidx/media2/MediaController2ImplBase$18;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;->onCustomLayoutChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;

.field final synthetic val$layout:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;Ljava/util/List;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$18;->this$0:Landroidx/media2/MediaController2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaController2ImplBase$18;->val$layout:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1132
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$18;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mCallback:Landroidx/media2/MediaController2$ControllerCallback;

    iget-object v1, p0, Landroidx/media2/MediaController2ImplBase$18;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    iget-object v2, p0, Landroidx/media2/MediaController2ImplBase$18;->val$layout:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaController2$ControllerCallback;->onCustomLayoutChanged(Landroidx/media2/MediaController2;Ljava/util/List;)V

    return-void
.end method
