.class public final enum Lcom/hyphenate/chat/EMConversation$EMConversationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMConversationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public static final enum Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public static final enum ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public static final enum DiscussionGroup:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public static final enum GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

.field public static final enum HelpDesk:Lcom/hyphenate/chat/EMConversation$EMConversationType;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const-string v1, "Chat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const-string v1, "GroupChat"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const-string v1, "ChatRoom"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const-string v1, "DiscussionGroup"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const-string v1, "HelpDesk"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->$values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMConversationType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMConversation$EMConversationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0
.end method
