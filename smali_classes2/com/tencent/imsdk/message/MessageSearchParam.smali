.class public Lcom/tencent/imsdk/message/MessageSearchParam;
.super Ljava/lang/Object;
.source "MessageSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationKey:Lcom/tencent/imsdk/conversation/ConversationKey;

.field private keywordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keywordListMatchType:I

.field private messageTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndex:I

.field private pageSize:I

.field private searchTimePeriod:J

.field private searchTimePosition:J

.field private senderUserIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->keywordListMatchType:I

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePosition:J

    .line 21
    iput-wide v1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePeriod:J

    .line 23
    iput v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageIndex:I

    .line 25
    iput v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageSize:I

    return-void
.end method


# virtual methods
.method public getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->conversationKey:Lcom/tencent/imsdk/conversation/ConversationKey;

    return-object v0
.end method

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

    .line 28
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->keywordList:Ljava/util/List;

    return-object v0
.end method

.method public getKeywordListMatchType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->keywordListMatchType:I

    return v0
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

    .line 52
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->messageTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageIndex:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageSize:I

    return v0
.end method

.method public getSearchTimePeriod()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePeriod:J

    return-wide v0
.end method

.method public getSearchTimePosition()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePosition:J

    return-wide v0
.end method

.method public getSenderUserIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->senderUserIDList:Ljava/util/List;

    return-object v0
.end method

.method public setConversationKey(Lcom/tencent/imsdk/conversation/ConversationKey;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->conversationKey:Lcom/tencent/imsdk/conversation/ConversationKey;

    return-void
.end method

.method public setKeywordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->keywordList:Ljava/util/List;

    return-void
.end method

.method public setKeywordListMatchType(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->keywordListMatchType:I

    return-void
.end method

.method public setMessageTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->messageTypeList:Ljava/util/List;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageIndex:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->pageSize:I

    return-void
.end method

.method public setSearchTimePeriod(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePeriod:J

    return-void
.end method

.method public setSearchTimePosition(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->searchTimePosition:J

    return-void
.end method

.method public setSenderUserIDList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageSearchParam;->senderUserIDList:Ljava/util/List;

    return-void
.end method
