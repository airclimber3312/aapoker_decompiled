.class public final enum Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatThreadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

.field public static final enum CREATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

.field public static final enum DELETE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

.field public static final enum UNKNOWN:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

.field public static final enum UPDATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

.field public static final enum UPDATE_MSG:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UNKNOWN:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->CREATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UPDATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->DELETE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UPDATE_MSG:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UNKNOWN:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const-string v1, "CREATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->CREATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UPDATE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->DELETE:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    const-string v1, "UPDATE_MSG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UPDATE_MSG:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    invoke-static {}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->$values()[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->$VALUES:[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->$VALUES:[Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    return-object v0
.end method
