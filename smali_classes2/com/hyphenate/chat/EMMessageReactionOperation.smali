.class public Lcom/hyphenate/chat/EMMessageReactionOperation;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessageReactionOperation;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getOperation()Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReactionOperation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->getOperation()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->REMOVE:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->ADD:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    return-object v0
.end method

.method public getReaction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReactionOperation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->getReaction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReactionOperation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReactionOperation;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method
