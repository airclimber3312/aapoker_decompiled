.class public Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;
.super Ljava/lang/Object;
.source "V2TIMGroupSearchParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEARCH_FIELD_GROUP_ID:I = 0x1

.field private static final SEARCH_FIELD_GROUP_NAME:I = 0x2


# instance fields
.field private groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupSearchParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    return-void
.end method


# virtual methods
.method protected getGroupSearchParam()Lcom/tencent/imsdk/group/GroupSearchParam;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

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

    .line 48
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 22
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupSearchParam;->setKeywordList(Ljava/util/List;)V

    return-void
.end method

.method public setSearchGroupID(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method

.method public setSearchGroupName(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupSearchParam;->addSearchField(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->groupSearchParam:Lcom/tencent/imsdk/group/GroupSearchParam;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupSearchParam;->removeSearchField(I)V

    :goto_0
    return-void
.end method
