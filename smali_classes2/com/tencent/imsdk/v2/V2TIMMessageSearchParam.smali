.class public Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;
.super Ljava/lang/Object;
.source "V2TIMMessageSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_KEYWORD_LIST_MATCH_TYPE_AND:I = 0x1

.field public static final V2TIM_KEYWORD_LIST_MATCH_TYPE_OR:I


# instance fields
.field private messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    return-void
.end method


# virtual methods
.method public getKeywordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageSearchParam()Lcom/tencent/imsdk/message/MessageSearchParam;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    return-object v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getMessageTypeList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getPageIndex()I

    move-result v0

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getSearchTimePeriod()J
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getSearchTimePeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchTimePosition()J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->getSearchTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public setConversationID(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->setConversationKey(Lcom/tencent/imsdk/conversation/ConversationKey;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setConversationKey(Lcom/tencent/imsdk/conversation/ConversationKey;)V

    :goto_0
    return-void
.end method

.method public setKeywordList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setKeywordList(Ljava/util/List;)V

    return-void
.end method

.method public setKeywordListMatchType(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->setKeywordListMatchType(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/MessageSearchParam;->setKeywordListMatchType(I)V

    :goto_0
    return-void
.end method

.method public setMessageTypeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setMessageTypeList(Ljava/util/List;)V

    return-void
.end method

.method public setPageIndex(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setPageIndex(I)V

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setPageSize(I)V

    return-void
.end method

.method public setSearchTimePeriod(J)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/message/MessageSearchParam;->setSearchTimePeriod(J)V

    return-void
.end method

.method public setSearchTimePosition(J)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/message/MessageSearchParam;->setSearchTimePosition(J)V

    return-void
.end method

.method public setSenderUserIDList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageSearchParam;->messageSearchParam:Lcom/tencent/imsdk/message/MessageSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageSearchParam;->setSenderUserIDList(Ljava/util/List;)V

    return-void
.end method
