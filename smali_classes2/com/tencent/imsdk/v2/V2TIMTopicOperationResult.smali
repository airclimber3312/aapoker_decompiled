.class public Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;
.super Ljava/lang/Object;
.source "V2TIMTopicOperationResult.java"


# instance fields
.field private topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/tencent/imsdk/group/TopicOperationResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/TopicOperationResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;->topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;->topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicOperationResult;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;->topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicOperationResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicID()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;->topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicOperationResult;->getTopicID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setTopicOperationResult(Lcom/tencent/imsdk/group/TopicOperationResult;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;->topicOperationResult:Lcom/tencent/imsdk/group/TopicOperationResult;

    return-void
.end method
