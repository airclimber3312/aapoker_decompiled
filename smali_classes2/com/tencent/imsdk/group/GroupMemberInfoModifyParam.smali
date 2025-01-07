.class public Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;
.super Ljava/lang/Object;
.source "GroupMemberInfoModifyParam.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private memberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

.field private modifyFlag:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->memberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-object v0
.end method

.method public getModifyFlag()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->modifyFlag:J

    return-wide v0
.end method

.method public setMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->memberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-void
.end method

.method public setModifyFlag(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->modifyFlag:J

    return-void
.end method
