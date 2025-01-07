.class Lcom/tencent/imsdk/conversation/ConversationManager$1$11;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/conversation/ConversationManager$1;->onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

.field final synthetic val$conversationList:Ljava/util/List;

.field final synthetic val$groupName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->val$groupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->val$conversationList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->val$groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;->val$conversationList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationListener;->onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
