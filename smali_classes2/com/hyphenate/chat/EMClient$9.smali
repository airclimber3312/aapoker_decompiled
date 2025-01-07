.class Lcom/hyphenate/chat/EMClient$9;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "EMClient"

    if-nez p1, :cond_0

    const-string p1, "skip no connectivity action"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "connectivity receiver onReceiver"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/util/NetUtils;->getNetworkTypes(Landroid/content/Context;)Lcom/hyphenate/util/NetUtils$Types;

    move-result-object p1

    sget-object v0, Lcom/hyphenate/chat/EMClient$12;->$SwitchMap$com$hyphenate$util$NetUtils$Types:[I

    invoke-virtual {p1}, Lcom/hyphenate/util/NetUtils$Types;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    sget-object p1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$1100(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    if-eq p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v2, p1}, Lcom/hyphenate/chat/EMClient;->access$1102(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    if-ne v1, v0, :cond_6

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    new-instance p2, Lcom/hyphenate/chat/EMClient$9$1;

    invoke-direct {p2, p0}, Lcom/hyphenate/chat/EMClient$9$1;-><init>(Lcom/hyphenate/chat/EMClient$9;)V

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Network availability changed, notify... "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1100(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    new-instance p2, Lcom/hyphenate/chat/EMClient$9$2;

    invoke-direct {p2, p0}, Lcom/hyphenate/chat/EMClient$9$2;-><init>(Lcom/hyphenate/chat/EMClient$9;)V

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
