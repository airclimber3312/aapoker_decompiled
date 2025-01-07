.class public Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;
.super Ljava/lang/Object;
.source "V2TIMFriendCheckResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_FRIEND_RELATION_TYPE_BOTH_WAY:I = 0x3

.field public static final V2TIM_FRIEND_RELATION_TYPE_IN_MY_FRIEND_LIST:I = 0x1

.field public static final V2TIM_FRIEND_RELATION_TYPE_IN_OTHER_FRIEND_LIST:I = 0x2

.field public static final V2TIM_FRIEND_RELATION_TYPE_NONE:I


# instance fields
.field private friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendCheckResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendCheckResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendCheckResult;->getResultCode()I

    move-result v0

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendCheckResult;->getResultInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendCheckResult;->getRelationType()I

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendCheckResult;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setFriendCheckResult(Lcom/tencent/imsdk/relationship/FriendCheckResult;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->friendCheckResult:Lcom/tencent/imsdk/relationship/FriendCheckResult;

    return-void
.end method
