.class public Lcom/hyphenate/chat/EMStatisticsManager;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;,
        Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAStatisticsManager;",
        ">;"
    }
.end annotation


# instance fields
.field mClient:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAStatisticsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p2, p0, Lcom/hyphenate/chat/EMStatisticsManager;->emaObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hyphenate/chat/EMStatisticsManager;->mClient:Lcom/hyphenate/chat/EMClient;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMessageCount(JJLcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;)I
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/chat/EMStatisticsManager;->emaObject:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-virtual {p5}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->getIndex()I

    move-result v6

    invoke-virtual {p6}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->getIndex()I

    move-result v7

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->searchMsgStatisticsNumber(JJII)I

    move-result p1

    return p1
.end method

.method public getMessageSize(JJLcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;)J
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/chat/EMStatisticsManager;->emaObject:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-virtual {p5}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageDirect;->getIndex()I

    move-result v6

    invoke-virtual {p6}, Lcom/hyphenate/chat/EMStatisticsManager$EMSearchMessageType;->getIndex()I

    move-result v7

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->searchMsgStatisticsSize(JJII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMessageStatistics(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessageStatistics;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMStatisticsManager;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->getMsgStatistics(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAMessageStatistics;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hyphenate/chat/EMMessageStatistics;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMMessageStatistics;-><init>(Lcom/hyphenate/chat/adapter/EMAMessageStatistics;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method removeMessagesBeforeTime(J)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMStatisticsManager;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAStatisticsManager;->removeMsgStatisticsBeforeTime(J)Z

    move-result p1

    return p1
.end method
