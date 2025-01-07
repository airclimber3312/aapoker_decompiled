.class synthetic Lcom/hyphenate/wrapper/helper/EMConversationHelper$1;
.super Ljava/lang/Object;
.source "EMConversationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/wrapper/helper/EMConversationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hyphenate/wrapper/helper/EMConversationHelper$1;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    :try_start_0
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMConversationHelper$1;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMConversationHelper$1;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
