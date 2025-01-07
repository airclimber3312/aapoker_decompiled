.class public Lcom/tencent/imsdk/group/GroupInfoModifyParam;
.super Ljava/lang/Object;
.source "GroupInfoModifyParam.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

.field private modifyFlag:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-object v0
.end method

.method public getModifyFlag()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->modifyFlag:J

    return-wide v0
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-void
.end method

.method public setModifyFlag(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->modifyFlag:J

    return-void
.end method
