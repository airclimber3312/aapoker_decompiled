.class Lcom/hyphenate/chat/TranslationCache;
.super Lcom/hyphenate/chat/LRUCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/LRUCache<",
        "Ljava/lang/String;",
        "Lcom/hyphenate/chat/EMTranslationResult;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mConversationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/LRUCache;-><init>(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/LRUCache;->clear()V

    iget-object v0, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/hyphenate/chat/EMTranslationResult;

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/TranslationCache;->put(Ljava/lang/String;Lcom/hyphenate/chat/EMTranslationResult;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/hyphenate/chat/EMTranslationResult;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/hyphenate/chat/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMTranslationResult;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMTranslationResult;->conversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMTranslationResult;->conversationId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/TranslationCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/TranslationCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMTranslationResult;

    iget-object v1, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMTranslationResult;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/hyphenate/chat/LRUCache;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeByConversationId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/TranslationCache;->mConversationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/hyphenate/chat/LRUCache;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
