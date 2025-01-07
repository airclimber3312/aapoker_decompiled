.class public Lcom/tencent/imsdk/conversation/ConversationResult;
.super Ljava/lang/Object;
.source "ConversationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private isFinish:Z

.field private nextSeq:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationResult;->conversationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addConversation(Lcom/tencent/imsdk/conversation/Conversation;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationResult;->conversationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getConversationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationResult;->conversationList:Ljava/util/List;

    return-object v0
.end method

.method public getNextSeq()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/tencent/imsdk/conversation/ConversationResult;->nextSeq:J

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/tencent/imsdk/conversation/ConversationResult;->isFinish:Z

    return v0
.end method
