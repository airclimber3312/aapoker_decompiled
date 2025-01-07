.class Landroidx/media2/MediaController2ImplBase$1;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplBase;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;)V
    .locals 0

    .line 158
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$1;->this$0:Landroidx/media2/MediaController2ImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$1;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mInstance:Landroidx/media2/MediaController2;

    invoke-virtual {v0}, Landroidx/media2/MediaController2;->close()V

    return-void
.end method
