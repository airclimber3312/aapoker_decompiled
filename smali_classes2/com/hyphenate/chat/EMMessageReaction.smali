.class public Lcom/hyphenate/chat/EMMessageReaction;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessageReaction;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getReaction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReaction;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->reaction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReaction;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->count()I

    move-result v0

    return v0
.end method

.method public getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReaction;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->userList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAddedBySelf()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessageReaction;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAMessageReaction;->state()Z

    move-result v0

    return v0
.end method
