.class public Lcom/tencent/imsdk/group/GroupMemberInfo;
.super Ljava/lang/Object;
.source "GroupMemberInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static GROUP_MEMBER_FILTER_FLAG_ADMINISTRATOR:I = 0x3

.field public static GROUP_MEMBER_FILTER_FLAG_ALL:I = 0x1

.field public static GROUP_MEMBER_FILTER_FLAG_MEMBER:I = 0x4

.field public static GROUP_MEMBER_FILTER_FLAG_OWNER:I = 0x2

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_CUSTOM_INFO:J = 0x10L

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_MEMBER_ROLE:J = 0x2L

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_MESSAGE_RECEIVE_FLAG:J = 0x1L

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_NAME_CARD:J = 0x8L

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_NONE:J = 0x0L

.field public static GROUP_MEMBER_INFO_MODIFY_FLAG_SHUTUP_TIME:J = 0x4L

.field public static MEMBER_ROLE_ADMINISTRATOR:I = 0x12c

.field public static MEMBER_ROLE_MEMBER:I = 0xc8

.field public static MEMBER_ROLE_OWNER:I = 0x190

.field public static MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE:I = 0x1

.field public static MESSAGE_RECEIVE_OPTION_NOT_RECEIVE:I = 0x2

.field public static MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH:I = 0x3


# instance fields
.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private faceUrl:Ljava/lang/String;

.field private friendRemark:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private joinTime:J

.field private messageReadSequence:J

.field private messageReceiveOption:I

.field private nameCard:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private role:I

.field private shutUpTime:J

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->customInfo:Ljava/util/Map;

    return-void
.end method

.method private addCustomInfo(Ljava/lang/String;[B)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->customInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->customInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendRemark()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->friendRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->joinTime:J

    return-wide v0
.end method

.method public getMessageReadSequence()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->messageReadSequence:J

    return-wide v0
.end method

.method public getMessageReceiveOption()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->messageReceiveOption:I

    return v0
.end method

.method public getNameCard()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->nameCard:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->role:I

    return v0
.end method

.method public getShutUpTime()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->shutUpTime:J

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->customInfo:Ljava/util/Map;

    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->faceUrl:Ljava/lang/String;

    return-void
.end method

.method public setFriendRemark(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->friendRemark:Ljava/lang/String;

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setJoinTime(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->joinTime:J

    return-void
.end method

.method public setMessageReadSequence(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->messageReadSequence:J

    return-void
.end method

.method public setMessageReceiveOption(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->messageReceiveOption:I

    return-void
.end method

.method public setNameCard(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->nameCard:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->role:I

    return-void
.end method

.method public setShutUpTime(J)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->shutUpTime:J

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfo;->userID:Ljava/lang/String;

    return-void
.end method
