.class public final enum Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMMessageSearchScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

.field public static final enum ALL:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

.field public static final enum CONTENT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

.field public static final enum EXT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->CONTENT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->EXT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->ALL:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->CONTENT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    const-string v1, "EXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->EXT:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    new-instance v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    const-string v1, "ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->ALL:Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->$values()[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->$VALUES:[Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    return-object v0
.end method
