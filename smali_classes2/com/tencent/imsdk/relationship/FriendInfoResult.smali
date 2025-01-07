.class public Lcom/tencent/imsdk/relationship/FriendInfoResult;
.super Ljava/lang/Object;
.source "FriendInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

.field private relationType:I

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendInfoResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfoResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendInfo()Lcom/tencent/imsdk/relationship/FriendInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfoResult;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    return-object v0
.end method

.method public getRelationType()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendInfoResult;->relationType:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendInfoResult;->userID:Ljava/lang/String;

    return-object v0
.end method
