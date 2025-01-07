.class Lcom/hyphenate/chat/EMChatManager$1$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onUpdateGroupAcks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$12;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "onUpdateGroupAcks"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1$12;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/EMMessageListener;

    invoke-interface {v1}, Lcom/hyphenate/EMMessageListener;->onReadAckForGroupMessageUpdated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
