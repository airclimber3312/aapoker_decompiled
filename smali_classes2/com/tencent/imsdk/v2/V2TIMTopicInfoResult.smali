.class public Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;
.super Ljava/lang/Object;
.source "V2TIMTopicInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private topicInfo:Lcom/tencent/imsdk/group/TopicInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/imsdk/group/TopicInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/TopicInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicInfo()Lcom/tencent/imsdk/v2/V2TIMTopicInfo;
    .locals 2

    .line 40
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->setTopicInfo(Lcom/tencent/imsdk/group/TopicInfo;)V

    return-object v0
.end method

.method protected setTopicInfo(Lcom/tencent/imsdk/group/TopicInfo;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    return-void
.end method
