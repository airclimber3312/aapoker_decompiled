.class Lcom/hyphenate/chat/EMChatManager$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->translateMessage(Lcom/hyphenate/chat/EMMessage;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$callback:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$languages:Ljava/util/List;

.field final synthetic val$message:Lcom/hyphenate/chat/EMMessage;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$18;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$message:Lcom/hyphenate/chat/EMMessage;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$languages:Ljava/util/List;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$18;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$message:Lcom/hyphenate/chat/EMMessage;

    iget-object v2, v2, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$languages:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->translateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$18;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v2, v0}, Lcom/hyphenate/chat/EMChatManager;->access$400(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$callback:Lcom/hyphenate/EMValueCallBack;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v0, v2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$18;->val$callback:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
