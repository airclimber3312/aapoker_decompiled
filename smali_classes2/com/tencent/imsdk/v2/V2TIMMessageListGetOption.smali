.class public Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;
.super Ljava/lang/Object;
.source "V2TIMMessageListGetOption.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_GET_CLOUD_NEWER_MSG:I = 0x2

.field public static final V2TIM_GET_CLOUD_OLDER_MSG:I = 0x1

.field public static final V2TIM_GET_LOCAL_NEWER_MSG:I = 0x4

.field public static final V2TIM_GET_LOCAL_OLDER_MSG:I = 0x3


# instance fields
.field private count:I

.field private getTimeBegin:J

.field private getTimePeriod:J

.field private getType:I

.field private groupID:Ljava/lang/String;

.field private lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

.field private lastMsgSeq:J

.field private messageTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->count:I

    return v0
.end method

.method public getGetTimeBegin()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getTimeBegin:J

    return-wide v0
.end method

.method public getGetTimePeriod()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getTimePeriod:J

    return-wide v0
.end method

.method public getGetType()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getType:I

    return v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMsg()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-object v0
.end method

.method public getLastMsgSeq()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->lastMsgSeq:J

    return-wide v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->messageTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->count:I

    return-void
.end method

.method public setGetTimeBegin(J)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getTimeBegin:J

    return-void
.end method

.method public setGetTimePeriod(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getTimePeriod:J

    return-void
.end method

.method public setGetType(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->getType:I

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setLastMsg(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-void
.end method

.method public setLastMsgSeq(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->lastMsgSeq:J

    return-void
.end method

.method public setMessageTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->messageTypeList:Ljava/util/List;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->userID:Ljava/lang/String;

    return-void
.end method
