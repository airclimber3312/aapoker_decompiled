.class Lcom/tencent/imsdk/conversation/ConversationManager$1;
.super Lcom/tencent/imsdk/conversation/ConversationListener;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/conversation/ConversationManager;->initInternalConversationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/conversation/ConversationManager;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/conversation/ConversationManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-direct {p0}, Lcom/tencent/imsdk/conversation/ConversationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/conversation/ConversationManager$1$5;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConversationGroupCreated(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager$1$7;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConversationGroupDeleted(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$8;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/conversation/ConversationManager$1$8;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConversationGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager$1$9;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConversationsAddedToGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager$1$10;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager$1$11;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNewConversation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/conversation/ConversationManager$1$4;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSyncServerFailed()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$3;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/conversation/ConversationManager$1$3;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSyncServerFinish()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$2;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/conversation/ConversationManager$1$2;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSyncServerStart()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/conversation/ConversationManager$1$1;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTotalUnreadMessageCountChanged(J)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;J)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
