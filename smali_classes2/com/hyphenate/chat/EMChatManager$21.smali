.class synthetic Lcom/hyphenate/chat/EMChatManager$21;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

.field static final synthetic $SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/hyphenate/chat/EMMessage$ChatType;->values()[Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    sget-object v3, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    sget-object v4, Lcom/hyphenate/chat/EMMessage$ChatType;->ChatRoom:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    :try_start_3
    sget-object v4, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v3, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
