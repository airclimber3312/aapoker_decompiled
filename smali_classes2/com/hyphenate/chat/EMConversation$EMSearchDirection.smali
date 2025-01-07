.class public final enum Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSearchDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

.field public static final enum DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

.field public static final enum UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->$values()[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    return-object v0
.end method
