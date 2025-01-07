.class public Lcom/tencent/imsdk/conversation/ConversationListFilter;
.super Ljava/lang/Object;
.source "ConversationListFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationType:I

.field private count:I

.field private groupName:Ljava/lang/String;

.field private markType:J

.field private nextSeq:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->count:I

    return v0
.end method

.method public setConversationType(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->conversationType:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->count:I

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setMarkType(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->markType:J

    return-void
.end method

.method public setNextSeq(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/tencent/imsdk/conversation/ConversationListFilter;->nextSeq:J

    return-void
.end method
