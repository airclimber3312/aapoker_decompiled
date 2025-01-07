.class public Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;
.super Ljava/lang/Object;
.source "V2TIMFriendSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEARCH_FIELD_NICK_NAME:I = 0x2

.field private static final SEARCH_FIELD_REMARK:I = 0x4

.field private static final SEARCH_FIELD_USER_ID:I = 0x1


# instance fields
.field private friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    return-void
.end method


# virtual methods
.method protected getFriendSearchParam()Lcom/tencent/imsdk/relationship/FriendSearchParam;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    return-object v0
.end method

.method protected getKeywordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setKeywordList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->setKeywordList(Ljava/util/List;)V

    return-void
.end method

.method public setSearchNickName(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchRemark(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchUserID(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;->friendSearchParam:Lcom/tencent/imsdk/relationship/FriendSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method
