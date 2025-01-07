.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;
.super Ljava/lang/Object;
.source "V2TIMConversationManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->addConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V
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

    .line 181
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$3;->val$listener:Lcom/tencent/imsdk/v2/V2TIMConversationListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
