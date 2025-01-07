.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;
.super Ljava/lang/Object;
.source "V2TIMConversationManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->setConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

.field final synthetic val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-static {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$302(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMConversationListener;)Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    return-void
.end method
