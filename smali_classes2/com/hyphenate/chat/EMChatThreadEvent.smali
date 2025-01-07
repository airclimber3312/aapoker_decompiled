.class public Lcom/hyphenate/chat/EMChatThreadEvent;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private chatThread:Lcom/hyphenate/chat/EMChatThread;


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadEvent;->emaObject:Ljava/lang/Object;

    new-instance v0, Lcom/hyphenate/chat/EMChatThread;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatThreadEvent;->chatThread:Lcom/hyphenate/chat/EMChatThread;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChatThread()Lcom/hyphenate/chat/EMChatThread;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadEvent;->chatThread:Lcom/hyphenate/chat/EMChatThread;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadEvent;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadEvent;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->getType()Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method
