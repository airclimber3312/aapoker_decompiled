.class Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;
.super Lcom/tencent/imsdk/relationship/FriendshipListener;
.source "V2TIMFriendshipManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->initFriendshipListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

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

    .line 983
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->convertToV2FriendInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 984
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 985
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 986
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onBlackListAdd(Ljava/util/List;)V

    goto :goto_0

    :cond_0
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

    .line 992
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 993
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 994
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onBlackListDeleted(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OnFriendApplicationListAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendApplication;",
            ">;)V"
        }
    .end annotation

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/relationship/FriendApplication;

    .line 1002
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;-><init>()V

    .line 1003
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->setFriendApplication(Lcom/tencent/imsdk/relationship/FriendApplication;)V

    .line 1004
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1006
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1007
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 1008
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendApplicationListAdded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
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

    .line 1014
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1015
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 1016
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendApplicationListDeleted(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OnFriendApplicationListRead()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 1023
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendApplicationListRead()V

    goto :goto_0

    :cond_0
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

    .line 957
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->convertToV2FriendInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 958
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 959
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 960
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendInfoChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
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

    .line 966
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->convertToV2FriendInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 967
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 968
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 969
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendListAdded(Ljava/util/List;)V

    goto :goto_0

    :cond_0
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

    .line 975
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 976
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    .line 977
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;->onFriendListDeleted(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OnSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 0

    return-void
.end method

.method convertToV2FriendInfo(Lcom/tencent/imsdk/relationship/FriendInfo;)Lcom/tencent/imsdk/v2/V2TIMFriendInfo;
    .locals 1

    .line 933
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 935
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->setFriendInfo(Lcom/tencent/imsdk/relationship/FriendInfo;)V

    :cond_0
    return-object v0
.end method

.method convertToV2FriendInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendInfo;",
            ">;"
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/relationship/FriendInfo;

    .line 944
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$41;->convertToV2FriendInfo(Lcom/tencent/imsdk/relationship/FriendInfo;)Lcom/tencent/imsdk/v2/V2TIMFriendInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
