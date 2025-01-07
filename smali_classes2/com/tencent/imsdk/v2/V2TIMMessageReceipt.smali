.class public Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;
.super Ljava/lang/Object;
.source "V2TIMMessageReceipt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

.field private groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->getMessageID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getMsgID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getReadCount()J
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getReadCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->getReceiptTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUnreadCount()J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getUnreadCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPeerRead()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/C2CMessageReceipt;->isPeerRead()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setC2CMessageReceipt(Lcom/tencent/imsdk/message/C2CMessageReceipt;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->c2cMessageReceipt:Lcom/tencent/imsdk/message/C2CMessageReceipt;

    return-void
.end method

.method protected setGroupMessageReceipt(Lcom/tencent/imsdk/message/GroupMessageReceipt;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->groupMessageReceipt:Lcom/tencent/imsdk/message/GroupMessageReceipt;

    return-void
.end method
