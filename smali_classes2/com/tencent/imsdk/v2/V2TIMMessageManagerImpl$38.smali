.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getC2CMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 1544
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1514
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 1517
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 1518
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 1519
    new-instance v1, Lcom/tencent/imsdk/message/C2CMessageReceipt;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/C2CMessageReceipt;-><init>()V

    .line 1520
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getReceiverUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->setUserID(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->setMessageID(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isReceiptPeerRead()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->setPeerRead(Z)V

    .line 1524
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;-><init>()V

    .line 1525
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->setC2CMessageReceipt(Lcom/tencent/imsdk/message/C2CMessageReceipt;)V

    .line 1527
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$results:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1530
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$results:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1531
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz p1, :cond_2

    .line 1532
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$results:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 1535
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$38;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz p1, :cond_2

    const/16 v0, 0x1781

    const-string v1, "invalid message list"

    .line 1536
    invoke-interface {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
