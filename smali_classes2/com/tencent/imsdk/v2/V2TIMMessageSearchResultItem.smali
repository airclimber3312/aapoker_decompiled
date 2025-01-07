.class public Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;
.super Ljava/lang/Object;
.source "V2TIMMessageSearchResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    if-ne v0, v1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c2c_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getConversationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v0, v1, :cond_1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getConversationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getMessageCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchResultItem;->getMessageList()Ljava/util/List;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/message/Message;

    .line 55
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 56
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method setMessageSearchResultItem(Lcom/tencent/imsdk/message/MessageSearchResultItem;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchResultItem;->messageSearchResultItem:Lcom/tencent/imsdk/message/MessageSearchResultItem;

    return-void
.end method
