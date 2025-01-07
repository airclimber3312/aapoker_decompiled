.class public Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;
.super Ljava/lang/Object;
.source "V2TIMFriendOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendOperationResult:Lcom/tencent/imsdk/relationship/FriendOperationResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;->friendOperationResult:Lcom/tencent/imsdk/relationship/FriendOperationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendOperationResult;->getResultCode()I

    move-result v0

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;->friendOperationResult:Lcom/tencent/imsdk/relationship/FriendOperationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendOperationResult;->getResultInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;->friendOperationResult:Lcom/tencent/imsdk/relationship/FriendOperationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendOperationResult;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setFriendOperationResult(Lcom/tencent/imsdk/relationship/FriendOperationResult;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;->friendOperationResult:Lcom/tencent/imsdk/relationship/FriendOperationResult;

    return-void
.end method
