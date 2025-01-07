.class public Lcom/hyphenate/chat/EMConversationFilter;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAConversationFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/EMConversation$EMMarkType;I)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMConversationFilter;->setMarkType(Lcom/hyphenate/chat/EMConversation$EMMarkType;)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/chat/EMConversationFilter;->setPageSize(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMarkType()Lcom/hyphenate/chat/EMConversation$EMMarkType;
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->values()[Lcom/hyphenate/chat/EMConversation$EMMarkType;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->getMarkType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->getPageSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public setMarkType(Lcom/hyphenate/chat/EMConversation$EMMarkType;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->setMarkType(I)V

    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->setPageSize(I)V

    return-void
.end method
