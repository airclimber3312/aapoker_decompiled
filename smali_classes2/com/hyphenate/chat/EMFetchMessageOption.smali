.class public Lcom/hyphenate/chat/EMFetchMessageOption;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDirection(Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)V
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setDirection(Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)V

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setEndTime(J)V

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method public setIsSave(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setSave(Z)V

    return-void
.end method

.method public setMsgTypes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage$Type;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/hyphenate/chat/EMMessage$Type;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setMsgTypes-->Invalid argument type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid argument type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setMsgTypes(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->setStartTime(J)V

    return-void
.end method
