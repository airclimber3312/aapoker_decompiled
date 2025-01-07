.class public abstract Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;
.super Ljava/lang/Object;
.source "V2TIMFriendshipManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;
    .locals 1

    .line 10
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract acceptFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract addFriend(Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
.end method

.method public abstract addFriendsToFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract addToBlackList(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract checkFriend(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract createFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract deleteFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract deleteFriendGroup(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
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
.end method

.method public abstract deleteFriendsFromFriendGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract deleteFromBlackList(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract deleteFromFriendList(Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract getBlackList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getFriendApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplicationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFriendGroups(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract getFriendList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getFriendsInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract refuseFriendApplication(Lcom/tencent/imsdk/v2/V2TIMFriendApplication;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMFriendApplication;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendOperationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
.end method

.method public abstract renameFriendGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract searchFriends(Lcom/tencent/imsdk/v2/V2TIMFriendSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
.end method

.method public abstract setFriendApplicationRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setFriendInfo(Lcom/tencent/imsdk/v2/V2TIMFriendInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
