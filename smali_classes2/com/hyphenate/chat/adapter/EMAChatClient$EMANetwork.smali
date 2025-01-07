.class public final enum Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAChatClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMANetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

.field public static final enum NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

.field public static final enum NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

.field public static final enum NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

.field public static final enum NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const-string v1, "NETWORK_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const-string v1, "NETWORK_CABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_CABLE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_WIFI:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    const-string v1, "NETWORK_MOBILE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_MOBILE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->$values()[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    return-object v0
.end method
