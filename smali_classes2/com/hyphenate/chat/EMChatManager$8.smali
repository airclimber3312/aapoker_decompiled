.class Lcom/hyphenate/chat/EMChatManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->asyncFetchConversationsFromServer(Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$8;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$8;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMChatManager;->fetchConversationsFromServer()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

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
