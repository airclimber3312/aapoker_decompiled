.class Lcom/hyphenate/chat/EMPushManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMPushManager;->getSilentModeForConversations(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPushManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$conversationList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPushManager;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMPushManager$8;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMPushManager$8;->val$conversationList:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMPushManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager$8;->val$conversationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/EMConversation;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMConversation;->getType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v4

    sget-object v5, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ","

    if-ne v4, v5, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Lcom/hyphenate/chat/EMConversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Lcom/hyphenate/chat/EMConversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "user"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$8;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->getSilentModeForConversations(Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager$8;->this$0:Lcom/hyphenate/chat/EMPushManager;

    invoke-static {v2, v0}, Lcom/hyphenate/chat/EMPushManager;->access$000(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getConversationId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hyphenate/chat/EMSilentModeResult;

    invoke-direct {v4, v2}, Lcom/hyphenate/chat/EMSilentModeResult;-><init>(Lcom/hyphenate/chat/adapter/EMASilentModeItem;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v1, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_2
    return-void
.end method
