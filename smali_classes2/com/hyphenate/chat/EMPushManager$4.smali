.class Lcom/hyphenate/chat/EMPushManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMPushManager;->clearRemindTypeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPushManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMPushManager$4;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$conversationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    iput-object p4, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$4;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$conversationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$type:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->clearRemindTypeForConversation(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$4;->this$0:Lcom/hyphenate/chat/EMPushManager;

    invoke-static {v1, v0}, Lcom/hyphenate/chat/EMPushManager;->access$000(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$4;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
