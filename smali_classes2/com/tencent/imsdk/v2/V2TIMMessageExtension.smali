.class public Lcom/tencent/imsdk/v2/V2TIMMessageExtension;
.super Ljava/lang/Object;
.source "V2TIMMessageExtension.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extension:Lcom/tencent/imsdk/message/MessageExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/tencent/imsdk/message/MessageExtension;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/MessageExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    return-void
.end method


# virtual methods
.method public getExtensionKey()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageExtension;->getExtensionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/MessageExtension;->getExtensionValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExtensionKey(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageExtension;->setExtensionKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setExtensionValue(Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/MessageExtension;->setExtensionValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setMessageExtension(Lcom/tencent/imsdk/message/MessageExtension;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMMessageExtension{extensionKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->getExtensionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",extensionValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessageExtension;->getExtensionValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
