.class Lcom/tencent/imsdk/relationship/RelationshipManager$1;
.super Lcom/tencent/imsdk/relationship/FriendshipListener;
.source "RelationshipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/relationship/RelationshipManager;->initFriendshipListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/relationship/RelationshipManager;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/relationship/RelationshipManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/RelationshipManager$1;->this$0:Lcom/tencent/imsdk/relationship/RelationshipManager;

    invoke-direct {p0}, Lcom/tencent/imsdk/relationship/FriendshipListener;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBlackListAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$4;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnBlackListDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$5;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendApplicationListAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendApplication;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$6;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendApplicationListDelete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$7;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendApplicationListRead()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$1;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendListAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$2;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnFriendListDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/relationship/RelationshipManager$1$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/relationship/RelationshipManager$1$3;-><init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 1

    .line 32
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->notifySelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V

    return-void
.end method

.method public OnUserStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserStatus;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->notifyUserStatusChanged(Ljava/util/List;)V

    return-void
.end method
