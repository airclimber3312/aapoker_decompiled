.class public Lcom/tencent/imsdk/group/GroupMemberOperationResult;
.super Ljava/lang/Object;
.source "GroupMemberOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static OPERATION_RESULT_FAIL:I = 0x1

.field public static OPERATION_RESULT_INVALID:I = 0x3

.field public static OPERATION_RESULT_OVERLIMIT:I = 0x5

.field public static OPERATION_RESULT_PENDING:I = 0x4

.field public static OPERATION_RESULT_SUCCESS:I = 0x2


# instance fields
.field private status:I

.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->status:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberOperationResult;->userID:Ljava/lang/String;

    return-object v0
.end method
