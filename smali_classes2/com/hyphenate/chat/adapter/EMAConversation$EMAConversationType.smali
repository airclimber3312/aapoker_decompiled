.class public final enum Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMAConversationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

.field public static final enum CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

.field public static final enum CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

.field public static final enum DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

.field public static final enum GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

.field public static final enum HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const-string v1, "GROUPCHAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const-string v1, "CHATROOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const-string v1, "DISCUSSIONGROUP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const-string v1, "HELPDESK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->$values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0
.end method
