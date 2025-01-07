.class public Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;
.super Ljava/lang/Object;
.source "V2TIMFriendApplicationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendApplicationResult:Lcom/tencent/imsdk/relationship/FriendApplicationResult;

.field private v2TIMFriendApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->v2TIMFriendApplicationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFriendApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplication;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->v2TIMFriendApplicationList:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->friendApplicationResult:Lcom/tencent/imsdk/relationship/FriendApplicationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplicationResult;->getUnreadCount()I

    move-result v0

    return v0
.end method

.method protected setFriendApplicationResult(Lcom/tencent/imsdk/relationship/FriendApplicationResult;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->v2TIMFriendApplicationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    invoke-virtual {p1}, Lcom/tencent/imsdk/relationship/FriendApplicationResult;->getFriendApplicationList()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/relationship/FriendApplication;

    .line 36
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;-><init>()V

    .line 37
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->setFriendApplication(Lcom/tencent/imsdk/relationship/FriendApplication;)V

    .line 38
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->v2TIMFriendApplicationList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;->friendApplicationResult:Lcom/tencent/imsdk/relationship/FriendApplicationResult;

    return-void
.end method
