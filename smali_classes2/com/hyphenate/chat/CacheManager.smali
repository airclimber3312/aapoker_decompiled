.class Lcom/hyphenate/chat/CacheManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mIdCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationCache:Lcom/hyphenate/chat/TranslationCache;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/TranslationCache;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/TranslationCache;-><init>(I)V

    iput-object v0, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/CacheManager;->mIdCache:Ljava/util/Set;

    return-void
.end method

.method private id2Value(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 p1, 0x16

    shr-long/2addr v0, p1

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method add(Lcom/hyphenate/chat/EMTranslationResult;)V
    .locals 3

    const-class v0, Lcom/hyphenate/chat/CacheManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMTranslationResult;->msgId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    invoke-virtual {v2, v1, p1}, Lcom/hyphenate/chat/TranslationCache;->put(Ljava/lang/String;Lcom/hyphenate/chat/EMTranslationResult;)V

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/CacheManager;->id2Value(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/hyphenate/chat/CacheManager;->mIdCache:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method check(Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/hyphenate/chat/CacheManager;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/CacheManager;->id2Value(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/hyphenate/chat/CacheManager;->mIdCache:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clear()V
    .locals 2

    const-class v0, Lcom/hyphenate/chat/CacheManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    invoke-virtual {v1}, Lcom/hyphenate/chat/TranslationCache;->clear()V

    iget-object v1, p0, Lcom/hyphenate/chat/CacheManager;->mIdCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method get(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;
    .locals 2

    const-class v0, Lcom/hyphenate/chat/CacheManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/TranslationCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyphenate/chat/EMTranslationResult;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeByConversationId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/TranslationCache;->removeByConversationId(Ljava/lang/String;)V

    return-void
.end method

.method removeByMsgIds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/hyphenate/chat/CacheManager;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/CacheManager;->mTranslationCache:Lcom/hyphenate/chat/TranslationCache;

    invoke-virtual {v2, v1}, Lcom/hyphenate/chat/TranslationCache;->remove(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/CacheManager;->id2Value(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/hyphenate/chat/CacheManager;->mIdCache:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
