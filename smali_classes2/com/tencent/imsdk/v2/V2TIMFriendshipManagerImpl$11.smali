.class Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;
.super Ljava/lang/Object;
.source "V2TIMFriendshipManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->addFriend(Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/relationship/FriendOperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;-><init>()V

    .line 256
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;->setFriendOperationResult(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V

    .line 257
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Lcom/tencent/imsdk/relationship/FriendOperationResult;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;->onSuccess(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V

    return-void
.end method
