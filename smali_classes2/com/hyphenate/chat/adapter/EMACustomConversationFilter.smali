.class public Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;
.super Ljava/lang/Object;


# instance fields
.field private owner:Lcom/hyphenate/chat/EMCustomConversationFilter;


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/EMCustomConversationFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;->owner:Lcom/hyphenate/chat/EMCustomConversationFilter;

    return-void
.end method


# virtual methods
.method public filter(Lcom/hyphenate/chat/adapter/EMAConversation;)Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;->owner:Lcom/hyphenate/chat/EMCustomConversationFilter;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v1, p1}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v0, v1}, Lcom/hyphenate/chat/EMCustomConversationFilter;->filter(Lcom/hyphenate/chat/EMConversation;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
