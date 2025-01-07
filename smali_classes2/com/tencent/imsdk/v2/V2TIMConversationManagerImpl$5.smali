.class Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;
.super Ljava/lang/Object;
.source "V2TIMConversationManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationList(JILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/conversation/ConversationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->this$0:Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/conversation/ConversationResult;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;-><init>()V

    .line 219
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->setConversationResult(Lcom/tencent/imsdk/conversation/ConversationResult;)V

    .line 220
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/tencent/imsdk/conversation/ConversationResult;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl$5;->onSuccess(Lcom/tencent/imsdk/conversation/ConversationResult;)V

    return-void
.end method
