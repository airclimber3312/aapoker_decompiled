.class public final enum Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMASearchDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

.field public static final enum DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

.field public static final enum UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->$values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    return-object v0
.end method
