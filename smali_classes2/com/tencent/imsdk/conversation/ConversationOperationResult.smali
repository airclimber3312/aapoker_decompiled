.class public Lcom/tencent/imsdk/conversation/ConversationOperationResult;
.super Ljava/lang/Object;
.source "ConversationOperationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationID:Ljava/lang/String;

.field private resultCode:I

.field private resultInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->conversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->resultCode:I

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->resultInfo:Ljava/lang/String;

    return-object v0
.end method
