.class public Lcom/tencent/imsdk/relationship/FriendInfo;
.super Ljava/lang/Object;
.source "FriendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addSource:Ljava/lang/String;

.field private addTime:J

.field private addWording:Ljava/lang/String;

.field private friendCustomInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private friendGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private relationType:I

.field private remark:Ljava/lang/String;

.field private userInfo:Lcom/tencent/imsdk/relationship/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendGroups:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendCustomInfo:Ljava/util/HashMap;

    .line 18
    new-instance v0, Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-void
.end method


# virtual methods
.method protected addFriendCustomInfo(Ljava/lang/String;[B)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendCustomInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addFriendGroup(Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAddSource()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAddTime()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addTime:J

    return-wide v0
.end method

.method public getAddWording()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addWording:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendCustomInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendCustomInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFriendGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->friendGroups:Ljava/util/List;

    return-object v0
.end method

.method public getRelationType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->relationType:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-object v0
.end method

.method public setAddSource(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addSource:Ljava/lang/String;

    return-void
.end method

.method public setAddTime(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addTime:J

    return-void
.end method

.method public setAddWording(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->addWording:Ljava/lang/String;

    return-void
.end method

.method public setRelationType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->relationType:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->remark:Ljava/lang/String;

    return-void
.end method

.method protected setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-void
.end method
