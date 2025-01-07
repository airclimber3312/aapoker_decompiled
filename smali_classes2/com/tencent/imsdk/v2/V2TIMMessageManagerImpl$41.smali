.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getGroupMessageReadMemberList(Lcom/tencent/imsdk/v2/V2TIMMessage;IJILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/message/GroupMessageReadMembers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

.field final synthetic val$filter:I


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;I)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iput p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$filter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 1666
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/message/GroupMessageReadMembers;)V
    .locals 2

    .line 1656
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 1657
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;-><init>()V

    .line 1658
    iget v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$filter:I

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->setMessageReadMembers(Lcom/tencent/imsdk/message/GroupMessageReadMembers;I)V

    .line 1659
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1653
    check-cast p1, Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$41;->onSuccess(Lcom/tencent/imsdk/message/GroupMessageReadMembers;)V

    return-void
.end method
