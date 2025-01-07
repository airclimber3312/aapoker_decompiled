.class Lcom/tencent/imsdk/conversation/ConversationManager$1$6;
.super Ljava/lang/Object;
.source "ConversationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/conversation/ConversationManager$1;->onTotalUnreadMessageCountChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

.field final synthetic val$totalUnreadCount:J


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/conversation/ConversationManager$1;J)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iput-wide p2, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;->val$totalUnreadCount:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;->this$1:Lcom/tencent/imsdk/conversation/ConversationManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;->this$0:Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-static {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/imsdk/conversation/ConversationManager$1$6;->val$totalUnreadCount:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationListener;->onTotalUnreadMessageCountChanged(J)V

    :cond_0
    return-void
.end method
