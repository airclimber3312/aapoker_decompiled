.class Lcom/hyphenate/chat/LRUCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/LRUCache$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hyphenate/chat/LRUCache<",
            "TK;TV;>.Node<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/hyphenate/chat/LRUCache;->maxSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    new-instance p1, Lcom/hyphenate/chat/LRUCache$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hyphenate/chat/LRUCache$Node;-><init>(Lcom/hyphenate/chat/LRUCache;Lcom/hyphenate/chat/LRUCache$Node;Lcom/hyphenate/chat/LRUCache$Node;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    new-instance v0, Lcom/hyphenate/chat/LRUCache$Node;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/LRUCache$Node;-><init>(Lcom/hyphenate/chat/LRUCache;Lcom/hyphenate/chat/LRUCache$Node;Lcom/hyphenate/chat/LRUCache$Node;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v0, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v0, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyphenate/chat/LRUCache$Node;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v2, v2, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    :goto_0
    iget-object p1, p1, Lcom/hyphenate/chat/LRUCache$Node;->value:Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object v1, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v2, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v3, p1, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iget-object v4, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v4, v4, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    iput-object v0, v1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iget-object v4, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v4, v4, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    iput-object v1, v2, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v2, v1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v1, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, v1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v0, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v3, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/LRUCache$Node;-><init>(Lcom/hyphenate/chat/LRUCache;Lcom/hyphenate/chat/LRUCache$Node;Lcom/hyphenate/chat/LRUCache$Node;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v0, p2, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p2, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget p1, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    iget p2, p0, Lcom/hyphenate/chat/LRUCache;->maxSize:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p2, p2, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p1, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/LRUCache$Node;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/LRUCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hyphenate/chat/LRUCache;->currentSize:I

    iget-object p1, v0, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v1, v1, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p1, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    if-eqz p1, :cond_1

    iput-object v2, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v1, v1, Lcom/hyphenate/chat/LRUCache$Node;->key:Ljava/lang/Object;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p1, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object p1, p0, Lcom/hyphenate/chat/LRUCache;->leastRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    if-eqz p1, :cond_3

    iput-object v2, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/hyphenate/chat/LRUCache;->mostRecentlyUsed:Lcom/hyphenate/chat/LRUCache$Node;

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v1, v0, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v1, p1, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object p1, v0, Lcom/hyphenate/chat/LRUCache$Node;->previous:Lcom/hyphenate/chat/LRUCache$Node;

    iget-object v0, v0, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    iput-object v0, p1, Lcom/hyphenate/chat/LRUCache$Node;->next:Lcom/hyphenate/chat/LRUCache$Node;

    :goto_0
    return-void
.end method
