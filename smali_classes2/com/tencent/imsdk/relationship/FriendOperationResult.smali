.class public Lcom/tencent/imsdk/relationship/FriendOperationResult;
.super Ljava/lang/Object;
.source "FriendOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private resultCode:I

.field private resultInfo:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendOperationResult;->resultCode:I

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendOperationResult;->resultInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendOperationResult;->userID:Ljava/lang/String;

    return-object v0
.end method
