.class public Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;
.source "V2TIMFriendshipManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$V2TIMFriendshipManagerImplHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFriendshipInternalListener:Lcom/tencent/imsdk/relationship/FriendshipListener;

.field private final mFriendshipListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;",
            ">;"
        }
    .end annotation
.end field

.field private mV2TIMFriendshipListener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;-><init>()V

    const-string v0, "V2TIMFriendshipManagerImpl"

    .line 25
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mFriendshipListenerList:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->initFriendshipListener()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mV2TIMFriendshipListener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mV2TIMFriendshipListener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mFriendshipListenerList:Ljava/util/List;

    return-object p0
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;
    .locals 1

    .line 32
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$V2TIMFriendshipManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private initFriendshipListener()V
    .locals 2

    .line 931
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mFriendshipInternalListener:Lcom/tencent/imsdk/relationship/FriendshipListener;

    .line 1027
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->mFriendshipInternalListener:Lcom/tencent/imsdk/relationship/FriendshipListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setFriendshipListener(Lcom/tencent/imsdk/relationship/FriendshipListener;)V

    return-void
.end method


# virtual methods
.method public acceptFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplication;",
            "I",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-eqz p3, :cond_0

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "responseType is invalid : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "v2TIMFriendApplication is null"

    .line 428
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 433
    :cond_3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$19;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 451
    new-instance p3, Lcom/tencent/imsdk/relationship/FriendResponse;

    invoke-direct {p3}, Lcom/tencent/imsdk/relationship/FriendResponse;-><init>()V

    .line 452
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tencent/imsdk/relationship/FriendResponse;->setUserID(Ljava/lang/String;)V

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    .line 459
    :goto_0
    invoke-virtual {p3, v1}, Lcom/tencent/imsdk/relationship/FriendResponse;->setResponseType(I)V

    .line 461
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$20;

    invoke-direct {p2, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, p3, p2}, Lcom/tencent/imsdk/relationship/RelationshipManager;->responseFriendApplication(Lcom/tencent/imsdk/relationship/FriendResponse;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public addFriend(Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "v2TIMFriendApplication is null"

    .line 246
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 269
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->getFriendAddApplication()Lcom/tencent/imsdk/relationship/FriendAddApplication;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$12;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->addFriend(Lcom/tencent/imsdk/relationship/FriendAddApplication;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public addFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addFriendsToFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 832
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "groupName is empty"

    .line 834
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 838
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 845
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$37;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$37;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 867
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$38;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$38;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->addFriendsToFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "userIDList is empty"

    .line 840
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public addToBlackList(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 562
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$25;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 591
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$26;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->addToBlackList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "userIDList is empty"

    .line 564
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public checkFriend(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_3

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eqz p3, :cond_1

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "checkType is invalid : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 348
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$15;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 371
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$16;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->checkFriend(Ljava/util/List;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "userIDList maybe empty"

    .line 337
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public createFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupNames is empty"

    .line 689
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 694
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$31;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$31;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 716
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$32;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$32;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->createFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "application is null"

    .line 521
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "application userID is empty"

    .line 527
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 532
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getUserID()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$23;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/imsdk/relationship/RelationshipManager;->deleteFriendApplication(ILjava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteFriendGroup(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$35;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$35;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->deleteFriendGroup(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "groupNames is empty"

    .line 778
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public deleteFriendsFromFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "groupName is empty"

    .line 884
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 888
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 895
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$39;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$39;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 917
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$40;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$40;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->deleteFrendsFromFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "userIDList is empty"

    .line 890
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public deleteFromBlackList(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 606
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$27;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 635
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$28;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->deleteFromBlackList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "userIDList is empty"

    .line 608
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public deleteFromFriendList(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_3

    .line 284
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    if-eqz p3, :cond_1

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "deleteType is invalid : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 298
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$13;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 320
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$14;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->deleteFromFriendList(Ljava/util/List;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "userIDList maybe empty"

    .line 286
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getBlackList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 650
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$29;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 672
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$30;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$30;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getBlackList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getFriendApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;",
            ">;)V"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$17;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 405
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$18;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getFriendApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getFriendGroups(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendGroup;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 731
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 739
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$33;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$33;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 761
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$34;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$34;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getFriendGroups(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getFriendList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 112
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getFriendList(Lcom/tencent/imsdk/common/IMCallback;)V

    .line 124
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void
.end method

.method public getFriendsInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$6;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 157
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$7;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getFriendsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "userIDList is empty"

    .line 131
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refuseFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplication;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "application is null"

    .line 478
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 483
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$21;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 501
    new-instance p2, Lcom/tencent/imsdk/relationship/FriendResponse;

    invoke-direct {p2}, Lcom/tencent/imsdk/relationship/FriendResponse;-><init>()V

    .line 502
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/relationship/FriendResponse;->setUserID(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 503
    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/relationship/FriendResponse;->setResponseType(I)V

    .line 504
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$22;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->responseFriendApplication(Lcom/tencent/imsdk/relationship/FriendResponse;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public removeFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renameFriendGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 798
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 800
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 804
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "newName is empty"

    .line 806
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 810
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    const-string p1, "oldName is empty"

    .line 812
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 817
    :cond_5
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$36;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$36;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->renameFriendGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchFriends(Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "searchParam is null"

    .line 195
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 206
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$9;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 227
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->getFriendSearchParam()Lcom/tencent/imsdk/relationship/FriendSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$10;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->searchFriends(Lcom/tencent/imsdk/relationship/FriendSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 239
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "keywordList is empty"

    .line 201
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setFriendApplicationRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 547
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$24;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setFriendApplicationRead(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setFriendInfo(Lcom/tencent/imsdk/v2/V2TIMFriendInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "info is null"

    .line 174
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getModifyFriendInfo()Ljava/util/HashMap;

    move-result-object p1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$8;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setFriendInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
