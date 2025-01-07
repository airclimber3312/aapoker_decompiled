.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;
.super Ljava/lang/Object;
.source "V2TIMConversationManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/conversation/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/conversation/Conversation;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 358
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 360
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$11;->onSuccess(Lcom/tencent/imsdk/conversation/Conversation;)V

    return-void
.end method
