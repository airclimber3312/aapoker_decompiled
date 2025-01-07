.class public Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;
.super Ljava/lang/Object;
.source "V2TIMGroupMemberInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextSeq:J

.field private v2TIMGroupMemberFullInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->v2TIMGroupMemberFullInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMemberInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->v2TIMGroupMemberFullInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNextSeq()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->nextSeq:J

    return-wide v0
.end method

.method public setGroupMemberInfoResult(Lcom/tencent/imsdk/group/GroupMemberInfoResult;)V
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->getNextSeq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->nextSeq:J

    .line 41
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->v2TIMGroupMemberFullInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->getGroupMemberInfoList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;-><init>()V

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 46
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;->v2TIMGroupMemberFullInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
