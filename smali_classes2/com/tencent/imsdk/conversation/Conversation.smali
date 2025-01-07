.class public Lcom/tencent/imsdk/conversation/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CONVERSATION_TYPE_C2C:I = 0x1

.field private static final CONVERSATION_TYPE_GROUP:I = 0x2


# instance fields
.field private c2cFaceUrl:Ljava/lang/String;

.field private c2cNickname:Ljava/lang/String;

.field private c2cReadTimestamp:J

.field private c2cReceiptTimestamp:J

.field private c2cRemark:Ljava/lang/String;

.field private c2cUserID:Ljava/lang/String;

.field private conversationAtInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationAtInfo;",
            ">;"
        }
    .end annotation
.end field

.field private conversationGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conversationKey:Lcom/tencent/imsdk/conversation/ConversationKey;

.field private conversationType:I

.field private customData:Ljava/lang/String;

.field private draftMessage:Lcom/tencent/imsdk/message/DraftMessage;

.field private groupFaceUrl:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private groupLastSequence:J

.field private groupMessageReceiveOption:I

.field private groupName:Ljava/lang/String;

.field private groupReadSequence:J

.field private groupRevokeTimestamp:J

.field private groupType:Ljava/lang/String;

.field private lastMessage:Lcom/tencent/imsdk/message/Message;

.field private markList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private orderKey:J

.field private pinned:Z

.field private unreadMessageCount:J

.field private userMessageReceiveOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationAtInfoList:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->pinned:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->markList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationGroupList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addConversationAtInfoList(Lcom/tencent/imsdk/conversation/ConversationAtInfo;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationAtInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addConversationGroup(Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addMarkType(J)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->markList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getC2cFaceUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getC2cNickname()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getC2cReadTimestamp()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cReadTimestamp:J

    return-wide v0
.end method

.method public getC2cReceiptTimestamp()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cReceiptTimestamp:J

    return-wide v0
.end method

.method public getC2cRemark()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getC2cUserID()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationAtInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationAtInfo;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationAtInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getConversationGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;
    .locals 3

    .line 61
    new-instance v0, Lcom/tencent/imsdk/conversation/ConversationKey;

    invoke-direct {v0}, Lcom/tencent/imsdk/conversation/ConversationKey;-><init>()V

    .line 62
    iget v1, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationType:I

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationType(I)V

    .line 63
    iget v1, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationType:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/tencent/imsdk/conversation/Conversation;->c2cUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->conversationType:I

    return v0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->customData:Ljava/lang/String;

    return-object v0
.end method

.method public getDraftMessage()Lcom/tencent/imsdk/message/DraftMessage;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->draftMessage:Lcom/tencent/imsdk/message/DraftMessage;

    return-object v0
.end method

.method public getGroupFaceUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupLastSequence()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupLastSequence:J

    return-wide v0
.end method

.method public getGroupMessageReceiveOption()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupMessageReceiveOption:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupReadSequence()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupReadSequence:J

    return-wide v0
.end method

.method public getGroupRevokeTimestamp()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupRevokeTimestamp:J

    return-wide v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessage()Lcom/tencent/imsdk/message/Message;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->lastMessage:Lcom/tencent/imsdk/message/Message;

    return-object v0
.end method

.method public getMarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->markList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderKey()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->orderKey:J

    return-wide v0
.end method

.method public getUnreadMessageCount()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->unreadMessageCount:J

    return-wide v0
.end method

.method public getUserMessageReceiveOption()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->userMessageReceiveOption:I

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/tencent/imsdk/conversation/Conversation;->pinned:Z

    return v0
.end method

.method public setPinned(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/tencent/imsdk/conversation/Conversation;->pinned:Z

    return-void
.end method
