.class public Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;
.super Ljava/lang/Object;
.source "V2TIMConversationListFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-direct {v0}, Lcom/tencent/imsdk/conversation/ConversationListFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    return-void
.end method


# virtual methods
.method getConversationFilter()Lcom/tencent/imsdk/conversation/ConversationListFilter;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    return-object v0
.end method

.method getCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->getCount()I

    move-result v0

    return v0
.end method

.method public setConversationType(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->setConversationType(I)V

    return-void
.end method

.method public setCount(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->setCount(I)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->setGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkType(J)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->setMarkType(J)V

    return-void
.end method

.method public setNextSeq(J)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationListFilter;->filter:Lcom/tencent/imsdk/conversation/ConversationListFilter;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationListFilter;->setNextSeq(J)V

    return-void
.end method
