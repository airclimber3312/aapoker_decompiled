.class public Lcom/tencent/imsdk/message/GroupTipsElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "GroupTipsElement.java"


# static fields
.field public static final GROUP_TIPS_TYPE_GRANT_ADMINISTRATOR:I = 0x4

.field public static final GROUP_TIPS_TYPE_GROUP_INFO_CHANGE:I = 0x6

.field public static final GROUP_TIPS_TYPE_GROUP_MEMBER_INFO_CHANGE:I = 0x7

.field public static final GROUP_TIPS_TYPE_JOIN:I = 0x1

.field public static final GROUP_TIPS_TYPE_KICK:I = 0x3

.field public static final GROUP_TIPS_TYPE_NONE:I = 0x0

.field public static final GROUP_TIPS_TYPE_QUIT:I = 0x2

.field public static final GROUP_TIPS_TYPE_REVOKE_ADMINISTRATOR:I = 0x5


# instance fields
.field private groupID:Ljava/lang/String;

.field private groupInfoChangeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private groupMemberCount:I

.field private groupMemberInfoChangeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private groupTipsType:I

.field private groupType:Ljava/lang/String;

.field private operatorGroupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

.field private operatorPlatForm:Ljava/lang/String;

.field private operatorUserID:Ljava/lang/String;

.field private operatorUserInfo:Lcom/tencent/imsdk/relationship/UserInfo;

.field private targetGroupMemberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private targetUserIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetUserInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserIDList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserInfoList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetGroupMemberInfoList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupInfoChangeItemList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupMemberInfoChangeItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addGroupInfoChangeItem(Lcom/tencent/imsdk/group/GroupInfoChangeItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupInfoChangeItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addGroupMemberInfoChangeItem(Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupMemberInfoChangeItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTargetGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetGroupMemberInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTargetUserID(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserIDList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTargetUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfoChangeItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfoChangeItem;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupInfoChangeItemList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupMemberCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupMemberCount:I

    return v0
.end method

.method public getGroupMemberInfoChangeItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupMemberInfoChangeItemList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupTipsType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupTipsType:I

    return v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorGroupMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->operatorGroupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-object v0
.end method

.method public getOperatorPlatForm()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->operatorPlatForm:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorUserID()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->operatorUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->operatorUserInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    return-object v0
.end method

.method public getTargetGroupMemberInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetGroupMemberInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTargetUserIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserIDList:Ljava/util/List;

    return-object v0
.end method

.method public getTargetUserInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserInfo;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupTipsElement;->targetUserInfoList:Ljava/util/List;

    return-object v0
.end method
