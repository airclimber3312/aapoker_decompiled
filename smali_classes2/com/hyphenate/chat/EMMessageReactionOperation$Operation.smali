.class public final enum Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessageReactionOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

.field public static final enum ADD:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

.field public static final enum REMOVE:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->REMOVE:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->ADD:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    const-string v1, "REMOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->REMOVE:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    new-instance v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    const-string v1, "ADD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->ADD:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    invoke-static {}, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->$values()[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->$VALUES:[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->$VALUES:[Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    return-object v0
.end method
