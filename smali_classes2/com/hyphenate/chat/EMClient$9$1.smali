.class Lcom/hyphenate/chat/EMClient$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient$9;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMClient$9;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient$9;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$9$1;->this$1:Lcom/hyphenate/chat/EMClient$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$9$1;->this$1:Lcom/hyphenate/chat/EMClient$9;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1200(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMSmartHeartBeat;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network availability no change, just return. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$9$1;->this$1:Lcom/hyphenate/chat/EMClient$9;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$1100(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but check ping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$9$1;->this$1:Lcom/hyphenate/chat/EMClient$9;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$9;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$1200(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMSmartHeartBeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->sendPingCheckConnection()V

    :cond_0
    return-void
.end method
