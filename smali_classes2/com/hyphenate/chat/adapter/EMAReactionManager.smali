.class public Lcom/hyphenate/chat/adapter/EMAReactionManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V

    return-void
.end method

.method public addReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeAddReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeClearListeners()V

    return-void
.end method

.method public getReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeGetReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getReactionList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeGetReactionList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V
.end method

.method native nativeAddReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeClearListeners()V
.end method

.method native nativeGetReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetReactionList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V
.end method

.method native nativeRemoveReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method public removeListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAReactionManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V

    return-void
.end method

.method public removeReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->nativeRemoveReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
