.class public Lcom/tencent/imsdk/conversation/ConversationKey;
.super Ljava/lang/Object;
.source "ConversationKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_C2C:I = 0x1

.field public static final TYPE_GROUP:I = 0x2


# instance fields
.field private conversationID:Ljava/lang/String;

.field private conversationType:I


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

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationKey;->conversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tencent/imsdk/conversation/ConversationKey;->conversationType:I

    return v0
.end method

.method public setConversationID(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationKey;->conversationID:Ljava/lang/String;

    return-void
.end method

.method public setConversationType(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/tencent/imsdk/conversation/ConversationKey;->conversationType:I

    return-void
.end method
