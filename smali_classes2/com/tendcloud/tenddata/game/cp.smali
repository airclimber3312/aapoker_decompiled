.class Lcom/tendcloud/tenddata/game/cp;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/co;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/co;Landroid/os/Looper;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cp;->this$0:Lcom/tendcloud/tenddata/game/co;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/co;->a(Z)Z

    .line 94
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "appId"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelId"

    .line 96
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Features"

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tendcloud/tenddata/game/a;

    .line 98
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cp;->this$0:Lcom/tendcloud/tenddata/game/co;

    invoke-static {v2, v0, v1, p1}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/game/co;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 101
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
