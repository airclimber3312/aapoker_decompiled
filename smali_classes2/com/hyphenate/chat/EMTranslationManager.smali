.class public Lcom/hyphenate/chat/EMTranslationManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MaxCacheSize:I = 0x2710

.field public static final MaxTranslationTextSize:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "EMTranslationManager"

.field private static instance:Lcom/hyphenate/chat/EMTranslationManager;


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

.field private mCacheManager:Lcom/hyphenate/chat/CacheManager;

.field private mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslator:Lcom/hyphenate/chat/EMTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/adapter/EMATranslateManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mLanguageList:Ljava/util/List;

    new-instance p1, Lcom/hyphenate/chat/CacheManager;

    const/16 v0, 0x2710

    invoke-direct {p1, v0}, Lcom/hyphenate/chat/CacheManager;-><init>(I)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMTranslationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMTranslationManager;->cleanCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMTranslationManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->loadIds(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMTranslationManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMTranslationManager;)Lcom/hyphenate/chat/EMTranslator;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mTranslator:Lcom/hyphenate/chat/EMTranslator;

    return-object p0
.end method

.method static synthetic access$302(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslator;)Lcom/hyphenate/chat/EMTranslator;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mTranslator:Lcom/hyphenate/chat/EMTranslator;

    return-object p1
.end method

.method static synthetic access$402(Lcom/hyphenate/chat/EMTranslationManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mLanguageList:Ljava/util/List;

    return-object p1
.end method

.method private cleanCache()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/CacheManager;->clear()V

    return-void
.end method

.method private deleteAll()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMTranslationManager;->removeAllTranslations()Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/CacheManager;->clear()V

    return-void
.end method

.method private deleteTranslationResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v2, v1}, Lcom/hyphenate/chat/CacheManager;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMTranslationManager;->removeTranslationsByMsgId(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/CacheManager;->removeByMsgIds(Ljava/util/List;)V

    return-void
.end method

.method private getTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->getTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMATranslateResult;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/EMTranslationResult;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMTranslationResult;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/hyphenate/chat/EMTranslationResult;

    invoke-direct {p1, v0}, Lcom/hyphenate/chat/EMTranslationResult;-><init>(Lcom/hyphenate/chat/adapter/EMATranslateResult;)V

    return-object p1
.end method

.method private isMessageResult(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->check(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private loadIds(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->loadTranslateResults(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMTranslationResult;

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/CacheManager;->add(Lcom/hyphenate/chat/EMTranslationResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadTranslateResults(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMTranslationResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->loadTranslateResults(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    new-instance v3, Lcom/hyphenate/chat/EMTranslationResult;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMTranslationResult;-><init>(Lcom/hyphenate/chat/adapter/EMATranslateResult;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private removeAllTranslations()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->removeAllTranslations()Z

    move-result v0

    return v0
.end method

.method private removeTranslationsByConversationId(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->removeTranslationsByConversationId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private removeTranslationsByMsgId(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->removeTranslationsByMsgId(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private updateTranslate(Lcom/hyphenate/chat/EMTranslationResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->emaObject:Lcom/hyphenate/chat/adapter/EMATranslateManager;

    iget-object p1, p1, Lcom/hyphenate/chat/EMTranslationResult;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/EMATranslateResult;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->updateTranslation(Lcom/hyphenate/chat/adapter/EMATranslateResult;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clearTranslations()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hyphenate/chat/EMTranslationManager;->deleteAll()V

    return-void
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMLanguage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mLanguageList:Ljava/util/List;

    return-object v0
.end method

.method public getTranslationResult(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->get(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->get(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->getTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/hyphenate/chat/EMTranslateParams;)V
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hyphenate/chat/EMTranslationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/chat/EMTranslationManager$1;-><init>(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslateParams;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTranslationResultForMessage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->isMessageResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$translate$0$com-hyphenate-chat-EMTranslationManager(Lcom/hyphenate/chat/EMTranslationResult;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/hyphenate/chat/EMTranslationResult;->setShowTranslation(Z)V

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/EMTranslationResult;->setTranslatedText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMTranslationResult;->translateCount()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/EMTranslationResult;->setTranslateCount(I)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->updateTranslationResult(Lcom/hyphenate/chat/EMTranslationResult;)V

    invoke-interface {p2, p1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x388

    invoke-interface {p2, p1, p4}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logout()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMTranslationManager;->cleanCache()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mLanguageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeResultsByConversationId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->removeTranslationsByConversationId(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->removeByConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public removeTranslationResult(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->removeTranslationResults(Ljava/util/List;)V

    return-void
.end method

.method public removeTranslationResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->deleteTranslationResults(Ljava/util/List;)V

    return-void
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMTranslationResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x389

    const-string p2, "EMTranslationManager is not initialized"

    invoke-interface {p5, p1, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    const/16 p1, 0x387

    const-string p2, "Text exceeds limit"

    invoke-interface {p5, p1, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->isTranslationResultForMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->getTranslationResult(Ljava/lang/String;)Lcom/hyphenate/chat/EMTranslationResult;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/hyphenate/chat/EMTranslationResult;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMTranslationResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/EMTranslationResult;->setConversationId(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iget-object p2, p0, Lcom/hyphenate/chat/EMTranslationManager;->mTranslator:Lcom/hyphenate/chat/EMTranslator;

    new-instance v0, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p5}, Lcom/hyphenate/chat/EMTranslationManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMTranslationManager;Lcom/hyphenate/chat/EMTranslationResult;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {p2, p3, p4, v0}, Lcom/hyphenate/chat/EMTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMTranslator$TranslationCallback;)V

    return-void
.end method

.method public updateTranslationResult(Lcom/hyphenate/chat/EMTranslationResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMTranslationResult;->msgId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/CacheManager;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMTranslationManager;->removeTranslationResult(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMTranslationManager;->mCacheManager:Lcom/hyphenate/chat/CacheManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/CacheManager;->add(Lcom/hyphenate/chat/EMTranslationResult;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMTranslationManager;->updateTranslate(Lcom/hyphenate/chat/EMTranslationResult;)Z

    return-void
.end method
