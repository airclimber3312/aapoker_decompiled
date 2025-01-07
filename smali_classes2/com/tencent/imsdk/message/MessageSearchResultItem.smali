.class public Lcom/tencent/imsdk/message/MessageSearchResultItem;
.super Ljava/lang/Object;
.source "MessageSearchResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationID:Ljava/lang/String;

.field private messageCount:I

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;"
        }
    .end annotation
.end field

.field private messageType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchResultItem;->conversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchResultItem;->messageCount:I

    return v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/Message;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageSearchResultItem;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tencent/imsdk/message/MessageSearchResultItem;->messageType:I

    return v0
.end method
