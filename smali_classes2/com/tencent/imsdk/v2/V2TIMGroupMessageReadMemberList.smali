.class public Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;
.super Ljava/lang/Object;
.source "V2TIMGroupMessageReadMemberList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filter:I

.field private readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget v1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->filter:I

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->getReadMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupMemberInfo;

    .line 52
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    .line 53
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->getUnreadMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupMemberInfo;

    .line 58
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    .line 59
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSeq()J
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->getNextSeq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->isFinish()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessageReadMembers(Lcom/tencent/imsdk/message/GroupMessageReadMembers;I)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->readMembers:Lcom/tencent/imsdk/message/GroupMessageReadMembers;

    .line 19
    iput p2, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMessageReadMemberList;->filter:I

    return-void
.end method
