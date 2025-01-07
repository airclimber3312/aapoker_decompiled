.class public final enum Lcom/tendcloud/tenddata/game/ej;
.super Ljava/lang/Enum;
.source "td"


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/ej;

.field public static final enum b:Lcom/tendcloud/tenddata/game/ej;

.field public static final enum c:Lcom/tendcloud/tenddata/game/ej;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/game/ej;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/tendcloud/tenddata/game/ej;

    const-string v1, "wifi"

    const-string v2, "WIFI"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tendcloud/tenddata/game/ej;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ej;->a:Lcom/tendcloud/tenddata/game/ej;

    .line 5
    new-instance v1, Lcom/tendcloud/tenddata/game/ej;

    const-string v2, "cellular"

    const-string v4, "CELLULAR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tendcloud/tenddata/game/ej;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/ej;->b:Lcom/tendcloud/tenddata/game/ej;

    .line 6
    new-instance v2, Lcom/tendcloud/tenddata/game/ej;

    const-string v4, "bluetooth"

    const-string v6, "BLUETOOTH"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tendcloud/tenddata/game/ej;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tendcloud/tenddata/game/ej;->c:Lcom/tendcloud/tenddata/game/ej;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/tendcloud/tenddata/game/ej;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 3
    sput-object v4, Lcom/tendcloud/tenddata/game/ej;->e:[Lcom/tendcloud/tenddata/game/ej;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ej;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ej;
    .locals 1

    .line 3
    const-class v0, Lcom/tendcloud/tenddata/game/ej;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/game/ej;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/ej;
    .locals 1

    .line 3
    sget-object v0, Lcom/tendcloud/tenddata/game/ej;->e:[Lcom/tendcloud/tenddata/game/ej;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/ej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/ej;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ej;->d:Ljava/lang/String;

    return-object v0
.end method
