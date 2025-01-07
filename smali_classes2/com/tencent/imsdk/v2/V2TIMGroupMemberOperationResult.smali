.class public Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;
.super Ljava/lang/Object;
.source "V2TIMGroupMemberOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPERATION_RESULT_FAIL:I = 0x0

.field public static final OPERATION_RESULT_INVALID:I = 0x2

.field public static final OPERATION_RESULT_OVERLIMIT:I = 0x4

.field public static final OPERATION_RESULT_PENDING:I = 0x3

.field public static final OPERATION_RESULT_SUCC:I = 0x1


# instance fields
.field groupMemberOperationResult:Lcom/tencent/imsdk/group/GroupMemberOperationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberOperationResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberOperationResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;->groupMemberOperationResult:Lcom/tencent/imsdk/group/GroupMemberOperationResult;

    return-void
.end method


# virtual methods
.method public getMemberID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;->groupMemberOperationResult:Lcom/tencent/imsdk/group/GroupMemberOperationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;->groupMemberOperationResult:Lcom/tencent/imsdk/group/GroupMemberOperationResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->getStatus()I

    move-result v0

    .line 50
    sget v1, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->OPERATION_RESULT_FAIL:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 52
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->OPERATION_RESULT_INVALID:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    .line 54
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->OPERATION_RESULT_PENDING:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    return v0

    .line 56
    :cond_2
    sget v1, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->OPERATION_RESULT_SUCCESS:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    .line 58
    :cond_3
    sget v1, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->OPERATION_RESULT_OVERLIMIT:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    return v2
.end method

.method setGroupMemberOperationResult(Lcom/tencent/imsdk/group/GroupMemberOperationResult;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;->groupMemberOperationResult:Lcom/tencent/imsdk/group/GroupMemberOperationResult;

    return-void
.end method
