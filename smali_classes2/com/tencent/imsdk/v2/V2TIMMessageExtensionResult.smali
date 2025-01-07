.class public Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;
.super Ljava/lang/Object;
.source "V2TIMMessageExtensionResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension()Lcom/tencent/imsdk/v2/V2TIMMessageExtension;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;

    invoke-virtual {v1}, Lcom/tencent/imsdk/message/MessageExtensionResult;->getExtension()Lcom/tencent/imsdk/message/MessageExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->setMessageExtension(Lcom/tencent/imsdk/message/MessageExtension;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageExtensionResult;->getResultCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageExtensionResult;->getResultInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setMessageExtensionResult(Lcom/tencent/imsdk/message/MessageExtensionResult;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->extensionResult:Lcom/tencent/imsdk/message/MessageExtensionResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMMessageExtensionResult{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->getResultInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtensionResult;->getExtension()Lcom/tencent/imsdk/v2/V2TIMMessageExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
