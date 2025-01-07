.class public final enum Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMChatRoomMessagePriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

.field public static final enum PriorityHigh:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

.field public static final enum PriorityLow:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

.field public static final enum PriorityNormal:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityHigh:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityNormal:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityLow:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    const-string v1, "PriorityHigh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityHigh:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    const-string v1, "PriorityNormal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityNormal:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    new-instance v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    const-string v1, "PriorityLow"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityLow:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-static {}, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->$values()[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->$VALUES:[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->$VALUES:[Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    return-object v0
.end method
