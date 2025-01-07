.class public final synthetic Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hyphenate/chat/EMConversation;

    check-cast p2, Lcom/hyphenate/chat/EMConversation;

    invoke-static {p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->lambda$getConversationsFromServer$7(Lcom/hyphenate/chat/EMConversation;Lcom/hyphenate/chat/EMConversation;)I

    move-result p1

    return p1
.end method
