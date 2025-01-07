.class public Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;
.super Ljava/lang/Object;
.source "V2TIMGroupAtInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AT_ALL_TAG:Ljava/lang/String; = "__kImSDK_MesssageAtALL__"

.field public static final TIM_AT_ALL:I = 0x2

.field public static final TIM_AT_ALL_AT_ME:I = 0x3

.field public static final TIM_AT_ME:I = 0x1

.field public static final TIM_AT_UNKNOWN:I


# instance fields
.field private conversationAtInfo:Lcom/tencent/imsdk/conversation/ConversationAtInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtType()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;->conversationAtInfo:Lcom/tencent/imsdk/conversation/ConversationAtInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->getAtType()I

    move-result v0

    return v0
.end method

.method public getSeq()J
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;->conversationAtInfo:Lcom/tencent/imsdk/conversation/ConversationAtInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationAtInfo;->getAtMessageSequence()J

    move-result-wide v0

    return-wide v0
.end method

.method protected setConversationGroupAtInfo(Lcom/tencent/imsdk/conversation/ConversationAtInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;->conversationAtInfo:Lcom/tencent/imsdk/conversation/ConversationAtInfo;

    return-void
.end method
