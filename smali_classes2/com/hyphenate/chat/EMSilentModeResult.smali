.class public Lcom/hyphenate/chat/EMSilentModeResult;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMASilentModeItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMASilentModeItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationType()Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getConversationType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpireTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getExpireTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemindType()Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getRemindType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->values()[Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getRemindType()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    return-object v0
.end method

.method public getSilentModeEndTime()Lcom/hyphenate/chat/EMSilentModeTime;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getSilentModeEndTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMSilentModeTime;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMSilentModeTime;-><init>(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    return-object v1
.end method

.method public getSilentModeStartTime()Lcom/hyphenate/chat/EMSilentModeTime;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getSilentModeStartTime()Lcom/hyphenate/chat/adapter/EMASilentModeTime;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMSilentModeTime;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMSilentModeTime;-><init>(Lcom/hyphenate/chat/adapter/EMASilentModeTime;)V

    return-object v1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConversationRemindTypeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSilentModeResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMASilentModeItem;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMASilentModeItem;->getRemindType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
