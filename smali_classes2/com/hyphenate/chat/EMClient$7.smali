.class Lcom/hyphenate/chat/EMClient$7;
.super Lcom/hyphenate/chat/adapter/EMANetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->setNatvieNetworkCallback()V
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

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMANetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetState()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    :goto_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->ordinal()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isOthersConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$7;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1000(Lcom/hyphenate/chat/EMClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isEthernetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    goto :goto_0
.end method
