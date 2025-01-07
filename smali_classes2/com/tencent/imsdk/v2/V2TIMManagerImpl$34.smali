.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;
.super Lcom/tencent/imsdk/message/MessageListener;
.source "V2TIMManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initMessageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveC2CMessageReceipt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/C2CMessageReceipt;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveGroupMessageReceipt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/GroupMessageReceipt;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveMessageModified(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveMessageRevoked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/MessageKey;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveNewMessage(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1463
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1467
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/Message;

    .line 1468
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageType()I

    move-result v1

    .line 1469
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 1470
    invoke-virtual {v2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 1472
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v3

    .line 1475
    sget v4, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 1476
    new-instance v4, Lcom/tencent/imsdk/v2/V2TIMUserInfo;

    invoke-direct {v4}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;-><init>()V

    .line 1477
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setUserID(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setNickName(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setFaceUrl(Ljava/lang/String;)V

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_1

    .line 1480
    :cond_2
    sget v4, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v1, v4, :cond_3

    .line 1481
    new-instance v4, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v4}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    .line 1482
    new-instance v6, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-direct {v6}, Lcom/tencent/imsdk/group/GroupMemberInfo;-><init>()V

    .line 1483
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getGroupID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setGroupID(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSenderUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setUserID(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNickName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setNickname(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNameCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setNameCard(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFaceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setFaceUrl(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFriendRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setFriendRemark(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v4, v6}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 1492
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object v3

    .line 1493
    iget-object v6, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v6}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$700(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1494
    :try_start_0
    iget-object v7, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v7}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$800(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;

    .line 1495
    sget v9, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    if-ne v1, v9, :cond_5

    .line 1496
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v5, v10}, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;->onRecvC2CTextMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMUserInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 1497
    :cond_5
    sget v9, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v1, v9, :cond_4

    .line 1499
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getGroupID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v11

    .line 1498
    invoke-virtual {v8, v9, v10, v4, v11}, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;->onRecvGroupTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 1502
    :cond_6
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 1504
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v0

    .line 1505
    iget-object v3, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$700(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1506
    :try_start_1
    iget-object v6, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v6}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$800(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;

    .line 1507
    sget v8, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    if-ne v1, v8, :cond_9

    .line 1508
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v9

    invoke-virtual {v7, v8, v5, v9}, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;->onRecvC2CCustomMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMUserInfo;[B)V

    goto :goto_3

    .line 1509
    :cond_9
    sget v8, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v1, v8, :cond_8

    .line 1511
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v10

    .line 1510
    invoke-virtual {v7, v8, v9, v4, v10}, Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;->onRecvGroupCustomMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;[B)V

    goto :goto_3

    .line 1514
    :cond_a
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_b
    :goto_4
    return-void
.end method
