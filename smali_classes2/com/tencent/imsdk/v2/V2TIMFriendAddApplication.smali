.class public Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;
.super Ljava/lang/Object;
.source "V2TIMFriendAddApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendAddApplication;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setUserID(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setAddType(I)V

    return-void
.end method


# virtual methods
.method protected getFriendAddApplication()Lcom/tencent/imsdk/relationship/FriendAddApplication;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    return-object v0
.end method

.method public setAddSource(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setAddSource(Ljava/lang/String;)V

    return-void
.end method

.method public setAddType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setAddType(I)V

    return-void
.end method

.method public setAddWording(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setAddWording(Ljava/lang/String;)V

    return-void
.end method

.method public setFriendGroup(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public setFriendRemark(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendAddApplication;->friendAddApplication:Lcom/tencent/imsdk/relationship/FriendAddApplication;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendAddApplication;->setUserID(Ljava/lang/String;)V

    return-void
.end method
