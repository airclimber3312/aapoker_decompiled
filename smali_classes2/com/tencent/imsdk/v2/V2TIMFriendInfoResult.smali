.class public Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;
.super Ljava/lang/Object;
.source "V2TIMFriendInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendInfoResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendInfoResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    return-void
.end method


# virtual methods
.method public getFriendInfo()Lcom/tencent/imsdk/v2/V2TIMFriendInfo;
    .locals 2

    .line 41
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    invoke-virtual {v1}, Lcom/tencent/imsdk/relationship/FriendInfoResult;->getFriendInfo()Lcom/tencent/imsdk/relationship/FriendInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->setFriendInfo(Lcom/tencent/imsdk/relationship/FriendInfo;)V

    return-object v0
.end method

.method public getRelation()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfoResult;->getRelationType()I

    move-result v0

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfoResult;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfoResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setFriendInfoResult(Lcom/tencent/imsdk/relationship/FriendInfoResult;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfoResult;->friendInfoResult:Lcom/tencent/imsdk/relationship/FriendInfoResult;

    return-void
.end method
