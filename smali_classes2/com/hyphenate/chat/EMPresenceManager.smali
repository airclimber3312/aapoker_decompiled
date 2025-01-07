.class public Lcom/hyphenate/chat/EMPresenceManager;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field emaObject:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

.field private listenerImpl:Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMPresenceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAPresenceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    new-instance v0, Lcom/hyphenate/chat/EMPresenceManager$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMPresenceManager$1;-><init>(Lcom/hyphenate/chat/EMPresenceManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listenerImpl:Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;

    iput-object p1, p0, Lcom/hyphenate/chat/EMPresenceManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPresenceManager;

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->addListener(Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMPresenceManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMPresenceManager;->convertToEMPresence(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMPresenceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMPresenceManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private convertToEMPresence(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMPresence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMPresence;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAPresence;

    invoke-direct {v2, v3}, Lcom/hyphenate/chat/EMPresence;-><init>(Lcom/hyphenate/chat/adapter/EMAPresence;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/hyphenate/EMPresenceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fetchPresenceStatus(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMPresence;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPresenceManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPresenceManager$6;-><init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchSubscribedMembers(IILcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPresenceManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMPresenceManager$5;-><init>(Lcom/hyphenate/chat/EMPresenceManager;IILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public publishPresence(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPresenceManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPresenceManager$2;-><init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeListener(Lcom/hyphenate/EMPresenceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public subscribePresences(Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMPresence;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMPresenceManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMPresenceManager$3;-><init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unsubscribePresences(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPresenceManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPresenceManager$4;-><init>(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
