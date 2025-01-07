.class public Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;
.super Ljava/lang/Object;
.source "V2TIMGroupMemberSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEARCH_FIELD_MEMBER_NAME_CARD:I = 0x8

.field private static final SEARCH_FIELD_MEMBER_NICK_NAME:I = 0x2

.field private static final SEARCH_FIELD_MEMBER_REMARK:I = 0x4

.field private static final SEARCH_FIELD_MEMBER_USER_ID:I = 0x1


# instance fields
.field private groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    return-void
.end method


# virtual methods
.method protected getGroupIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->getGroupIDList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getGroupMemberSearchParam()Lcom/tencent/imsdk/group/GroupMemberSearchParam;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

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

    .line 83
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setGroupIDList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->setGroupIDList(Ljava/util/List;)V

    return-void
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

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->setKeywordList(Ljava/util/List;)V

    return-void
.end method

.method public setSearchMemberNameCard(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchMemberNickName(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchMemberRemark(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchMemberUserID(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->groupMemberSearchParam:Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method
