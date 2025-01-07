.class Lcom/hyphenate/chat/EMChatManager$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onMessageStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$3;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$3;->val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$3;->val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$3;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMMessageListener;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/hyphenate/EMMessageListener;->onMessageChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
