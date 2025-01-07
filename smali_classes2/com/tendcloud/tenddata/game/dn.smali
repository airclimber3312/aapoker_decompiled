.class Lcom/tendcloud/tenddata/game/dn;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dl;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dl;Landroid/os/Looper;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dn;->this$0:Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 453
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_0

    .line 454
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 455
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dn;->this$0:Lcom/tendcloud/tenddata/game/dl;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/dl;->a(Lcom/tendcloud/tenddata/game/dl;Lcom/tendcloud/tenddata/game/a;)V

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/dn;->this$0:Lcom/tendcloud/tenddata/game/dl;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/dl;->a(Lcom/tendcloud/tenddata/game/dl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 462
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
