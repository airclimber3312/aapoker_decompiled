.class public final enum Lcom/hyphenate/push/EMPushType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/push/EMPushType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FCM:Lcom/hyphenate/push/EMPushType;

.field public static final enum HMSPUSH:Lcom/hyphenate/push/EMPushType;

.field public static final enum HONORPUSH:Lcom/hyphenate/push/EMPushType;

.field public static final enum MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

.field public static final enum MIPUSH:Lcom/hyphenate/push/EMPushType;

.field public static final enum NORMAL:Lcom/hyphenate/push/EMPushType;

.field public static final enum OPPOPUSH:Lcom/hyphenate/push/EMPushType;

.field public static final enum VIVOPUSH:Lcom/hyphenate/push/EMPushType;

.field private static final synthetic b:[Lcom/hyphenate/push/EMPushType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const-string v1, "FCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x1

    const-string v2, "MI"

    const-string v3, "MIPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x2

    const-string v2, "HUAWEI"

    const-string v3, "HMSPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x3

    const-string v2, "MEIZU"

    const-string v3, "MEIZUPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x4

    const-string v2, "OPPO"

    const-string v3, "OPPOPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x5

    const-string v2, "VIVO"

    const-string v3, "VIVOPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x6

    const-string v2, "HONOR"

    const-string v3, "HONORPUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    new-instance v0, Lcom/hyphenate/push/EMPushType;

    const-string v1, "NORMAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/hyphenate/push/EMPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    invoke-static {}, Lcom/hyphenate/push/EMPushType;->a()[Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/push/EMPushType;->b:[Lcom/hyphenate/push/EMPushType;

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

    iput-object p3, p0, Lcom/hyphenate/push/EMPushType;->a:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/hyphenate/push/EMPushType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/hyphenate/push/EMPushType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/push/EMPushType;->MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/hyphenate/push/EMPushType;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/hyphenate/push/EMPushType;->values()[Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/hyphenate/push/EMPushType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/push/EMPushType;
    .locals 1

    const-class v0, Lcom/hyphenate/push/EMPushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/push/EMPushType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->b:[Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0}, [Lcom/hyphenate/push/EMPushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/push/EMPushType;->a:Ljava/lang/String;

    return-object v0
.end method
