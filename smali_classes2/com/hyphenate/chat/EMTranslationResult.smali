.class public Lcom/hyphenate/chat/EMTranslationResult;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMATranslateResult;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMATranslateResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public conversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->conversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

.method public msgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->msgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->setConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setShowTranslation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->setShowTranslation(Z)V

    return-void
.end method

.method public setTranslateCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->setTranslateTime(I)V

    return-void
.end method

.method public setTranslatedText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->setTranslations(Ljava/lang/String;)V

    return-void
.end method

.method public showTranslation()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->showTranslation()Z

    move-result v0

    return v0
.end method

.method public translateCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->translateTime()I

    move-result v0

    return v0
.end method

.method public translatedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->translations()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
