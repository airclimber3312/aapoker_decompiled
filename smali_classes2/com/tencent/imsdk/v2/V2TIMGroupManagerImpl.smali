.class public Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMGroupManager;
.source "V2TIMGroupManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManager;-><init>()V

    const-string v0, "V2TIMAdvGroupMgrImpl"

    .line 40
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
    .locals 1

    .line 47
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "acceptGroupApplication err, v2TIMGroupApplication is null"

    .line 842
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "v2TIMGroupApplication is null"

    .line 844
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 849
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->getGroupApplication()Lcom/tencent/imsdk/group/GroupApplication;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$33;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$33;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->acceptGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createGroup(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "createGroup, null info"

    .line 62
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "info is null"

    .line 64
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;

    .line 72
    new-instance v2, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/group/GroupMemberInfo;-><init>()V

    .line 73
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setUserID(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->getRole()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setRole(I)V

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->createGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createTopicInCommunity(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "invalid groupID"

    .line 904
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "topicInfo is null"

    .line 911
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 916
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p2

    .line 917
    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setCommunityID(Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$36;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$36;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, p2, v0}, Lcom/tencent/imsdk/group/GroupManager;->createTopic(Lcom/tencent/imsdk/group/GroupInfo;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "deleteGroupAttributes error, groupID is empty"

    .line 278
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 280
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$9;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteTopicFromCommunity(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 934
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$37;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$37;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 964
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$38;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$38;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->deleteTopic(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "invalid groupID or topicIDList"

    .line 936
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getGroupApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;",
            ">;)V"
        }
    .end annotation

    .line 808
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 826
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$32;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$32;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupAttributes error, groupID is empty"

    .line 301
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 303
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 308
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$10;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupMemberList error, groupID is empty"

    .line 345
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 347
    invoke-interface {p5, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 352
    :cond_1
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_ALL:I

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 364
    :cond_2
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_MEMBER:I

    goto :goto_0

    .line 361
    :cond_3
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_ADMINISTRATOR:I

    goto :goto_0

    .line 358
    :cond_4
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_OWNER:I

    goto :goto_0

    .line 355
    :cond_5
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_ALL:I

    :goto_0
    move v2, p2

    .line 371
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$12;

    invoke-direct {p2, p0, p5}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 389
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v5, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$13;

    invoke-direct {v5, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/imsdk/group/GroupManager;->getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 405
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$14;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 435
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$15;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupMembersInfo fail, memberList is empty"

    .line 406
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "memberList is empty"

    .line 408
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "groupID is empty"

    .line 325
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$11;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 128
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string v0, "getGroupsInfo error, empty groupIDList"

    .line 99
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "empty groupIDList"

    .line 101
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getJoinedCommunityList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 769
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$29;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 791
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$30;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$30;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getJoinedCommunityList(Lcom/tencent/imsdk/common/IMCallback;)V

    .line 803
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void
.end method

.method public getJoinedGroupList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 732
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$27;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 754
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$28;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getJoinedGroupList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getTopicInfoList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "invalid groupID"

    .line 1047
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 1052
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$42;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$42;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 1074
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$43;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$43;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getTopicList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "initGroupAttributes error, groupID is empty"

    .line 225
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 227
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$7;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$20;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 589
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$21;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "inviteUserToGroup error, groupID or userList is empty"

    .line 560
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userList is empty"

    .line 562
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$22;

    invoke-direct {v0, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 633
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p4

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$23;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "kickGroupMember error, groupID or memberList is empty"

    .line 605
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or memberList is empty"

    .line 607
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const-string p1, "invalid groupID"

    .line 682
    invoke-interface {p5, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 687
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 694
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v2

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$25;

    invoke-direct {v7, p0, p5}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/imsdk/group/GroupManager;->markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    const-string p1, "empty member list"

    .line 689
    invoke-interface {p5, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$19;

    invoke-direct {v1, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 539
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refuseGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "acceptGroupApplication err, v2TIMGroupApplication is null"

    .line 865
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "v2TIMGroupApplication is null"

    .line 867
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 872
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->getGroupApplication()Lcom/tencent/imsdk/group/GroupApplication;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$34;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$34;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->refuseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchGroupMembers(Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "searchParam is null"

    .line 453
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 464
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$16;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 492
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getGroupMemberSearchParam()Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$17;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->searchGroupMembersInfo(Lcom/tencent/imsdk/group/GroupMemberSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 504
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "keywordList cannot be empty"

    .line 459
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public searchGroups(Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "searchParam is null"

    .line 145
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 176
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getGroupSearchParam()Lcom/tencent/imsdk/group/GroupSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->searchGroups(Lcom/tencent/imsdk/group/GroupSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 188
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(I)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "empty keywordList"

    .line 151
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setGroupApplicationRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 887
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$35;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$35;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupApplicationRead(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    const-string v2, "V2TIMAdvGroupMgrImpl"

    if-eqz v0, :cond_1

    const-string p1, "setGroupAttributes error, groupID is empty"

    .line 248
    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "groupID is empty"

    .line 250
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$8;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "setGroupAttributes error, attributes is empty"

    .line 255
    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "attributes is empty"

    .line 257
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string v0, "setGroupInfo error, null info"

    .line 195
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "null info"

    .line 197
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getModifyFlag()I

    move-result v0

    int-to-long v0, v0

    .line 203
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p1

    .line 205
    new-instance v2, Lcom/tencent/imsdk/group/GroupInfoModifyParam;

    invoke-direct {v2}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;-><init>()V

    .line 206
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    .line 207
    invoke-virtual {v2, v0, v1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setModifyFlag(J)V

    .line 209
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$6;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v2, v0}, Lcom/tencent/imsdk/group/GroupManager;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupMemberInfo(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;-><init>()V

    .line 518
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getModifyFlag()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->setModifyFlag(J)V

    .line 519
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getGroupMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->setMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 520
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->getMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setGroupID(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$18;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v0, p2}, Lcom/tencent/imsdk/group/GroupManager;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "setGroupMemberInfo error, groupID is empty or profile is null"

    .line 510
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID is empty or profile is null"

    .line 512
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 656
    :cond_0
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_MEMBER:I

    const/16 v0, 0x190

    if-ne v0, p3, :cond_1

    .line 658
    sget p3, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_OWNER:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    if-ne v0, p3, :cond_2

    .line 660
    sget p3, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_ADMINISTRATOR:I

    .line 665
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$24;

    invoke-direct {v1, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "setGroupMemberRole error, groupID or userID is empty"

    .line 649
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 651
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setTopicInfo(Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "invalid topicInfo"

    .line 981
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 986
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getModifyFlag()I

    move-result v0

    int-to-long v0, v0

    .line 987
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v2

    .line 989
    new-instance v3, Lcom/tencent/imsdk/group/GroupInfoModifyParam;

    invoke-direct {v3}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;-><init>()V

    .line 990
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    .line 991
    invoke-virtual {v3, v0, v1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setModifyFlag(J)V

    .line 993
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$39;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$39;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v3, v1}, Lcom/tencent/imsdk/group/GroupManager;->setTopicInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 1005
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->isNeedModifyDraft()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 1009
    :cond_2
    new-instance p2, Lcom/tencent/imsdk/conversation/ConversationKey;

    invoke-direct {p2}, Lcom/tencent/imsdk/conversation/ConversationKey;-><init>()V

    .line 1010
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getTopicID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1011
    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationType(I)V

    .line 1012
    new-instance v0, Lcom/tencent/imsdk/message/DraftMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/DraftMessage;-><init>()V

    .line 1013
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getTopicInfo()Lcom/tencent/imsdk/group/TopicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/group/TopicInfo;->getTempDraft()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/DraftMessage;->setUserDefinedData([B)V

    .line 1018
    :cond_3
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$40;

    invoke-direct {p1, p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$40;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;)V

    .line 1029
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$41;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$41;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->setConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$26;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "transferGroupOwner error, groupID or userID is empty"

    .line 710
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 712
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
