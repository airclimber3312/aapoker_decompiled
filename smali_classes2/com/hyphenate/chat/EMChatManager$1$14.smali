.class Lcom/hyphenate/chat/EMChatManager$1$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$messageId:Ljava/lang/String;

.field final synthetic val$pinInfo:Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

.field final synthetic val$pinOperation:I


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$conversationId:Ljava/lang/String;

    iput p4, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$pinOperation:I

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$pinInfo:Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "EMChatManager"

    const-string v1, "onMessagePinChanged"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

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

    :try_start_0
    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$messageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$conversationId:Ljava/lang/String;

    invoke-static {}, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->values()[Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    move-result-object v4

    iget v5, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$pinOperation:I

    aget-object v4, v4, v5

    new-instance v5, Lcom/hyphenate/chat/EMMessagePinInfo;

    iget-object v6, p0, Lcom/hyphenate/chat/EMChatManager$1$14;->val$pinInfo:Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    invoke-direct {v5, v6}, Lcom/hyphenate/chat/EMMessagePinInfo;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/hyphenate/EMMessageListener;->onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;Lcom/hyphenate/chat/EMMessagePinInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
