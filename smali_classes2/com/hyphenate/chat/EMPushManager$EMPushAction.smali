.class public final enum Lcom/hyphenate/chat/EMPushManager$EMPushAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMPushAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMPushManager$EMPushAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushAction;

.field public static final enum ARRIVE:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

.field public static final enum CLICK:Lcom/hyphenate/chat/EMPushManager$EMPushAction;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMPushManager$EMPushAction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->ARRIVE:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->CLICK:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    const/4 v1, 0x0

    const-string v2, "arrive"

    const-string v3, "ARRIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMPushManager$EMPushAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->ARRIVE:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    new-instance v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    const/4 v1, 0x1

    const-string v2, "click"

    const-string v3, "CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMPushManager$EMPushAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->CLICK:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    invoke-static {}, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->$values()[Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->$VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMPushManager$EMPushAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMPushManager$EMPushAction;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMPushManager$EMPushAction;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->$VALUES:[Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMPushManager$EMPushAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    return-object v0
.end method
