.class public Lcom/hyphenate/chat/EMUserInfoManager;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "EMUserInfoManager"


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method protected constructor <init>(Lcom/hyphenate/chat/adapter/EMAUserInfoManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfoManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfoManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public fetchUserInfoByAttribute([Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Lcom/hyphenate/EMValueCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMUserInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "start fetchUserInfoByAttribute"

    const-string v1, "EMUserInfoManager"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xcd

    if-eqz p1, :cond_3

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMUserInfoManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMUserInfoManager$4;-><init>(Lcom/hyphenate/chat/EMUserInfoManager;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Lcom/hyphenate/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "fetchUserInfoByUserId attributes is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "attributes is empty"

    invoke-interface {p3, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "fetchUserInfoByUserId userIds is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "userIds is empty"

    invoke-interface {p3, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public fetchUserInfoByUserId([Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMUserInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "start fetchUserInfoByUserId"

    const-string v1, "EMUserInfoManager"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMUserInfoManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMUserInfoManager$3;-><init>(Lcom/hyphenate/chat/EMUserInfoManager;[Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "fetchUserInfoByUserId userIds is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcd

    const-string v0, "userIds is empty"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public updateOwnInfo(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMUserInfo;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start updateOwnInfo"

    const-string v1, "EMUserInfoManager"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "fetchUserInfoByUserId userInfo is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcd

    const-string v0, "userInfo is empty"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMUserInfoManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMUserInfoManager$1;-><init>(Lcom/hyphenate/chat/EMUserInfoManager;Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOwnInfoByAttribute(Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start updateOwnInfoByAttribute"

    const-string v1, "EMUserInfoManager"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "fetchUserInfoByUserId attribute is null"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcd

    const-string p2, "attribute is null"

    invoke-interface {p3, p1, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMUserInfoManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMUserInfoManager$2;-><init>(Lcom/hyphenate/chat/EMUserInfoManager;Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
