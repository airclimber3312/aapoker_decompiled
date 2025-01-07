.class public Lcom/tencent/imsdk/group/TopicOperationResult;
.super Ljava/lang/Object;
.source "TopicOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private topicID:Ljava/lang/String;


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

    .line 11
    iget v0, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->topicID:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setTopicID(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicOperationResult;->topicID:Ljava/lang/String;

    return-void
.end method
