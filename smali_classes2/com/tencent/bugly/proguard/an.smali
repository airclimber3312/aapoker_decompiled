.class public final enum Lcom/tencent/bugly/proguard/an;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/an;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/Apn;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TYPE_INIT",
        "TYPE_UNKNOWN",
        "TYPE_NET",
        "TYPE_WAP",
        "TYPE_WIFI",
        "T_APN_CMWAP",
        "T_APN_3GWAP",
        "T_APN_UNIWAP",
        "T_APN_CTWAP",
        "T_APN_CTNET",
        "T_APN_UNINET",
        "T_APN_3GNET",
        "T_APN_CMNET",
        "T_APN_CTLTE",
        "T_APN_WONET",
        "T_APN_CMLTE",
        "T_APN_CM3G",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final enum bF:Lcom/tencent/bugly/proguard/an;

.field public static final enum bG:Lcom/tencent/bugly/proguard/an;

.field public static final enum bH:Lcom/tencent/bugly/proguard/an;

.field public static final enum bI:Lcom/tencent/bugly/proguard/an;

.field public static final enum bJ:Lcom/tencent/bugly/proguard/an;

.field public static final enum bK:Lcom/tencent/bugly/proguard/an;

.field public static final enum bL:Lcom/tencent/bugly/proguard/an;

.field public static final enum bM:Lcom/tencent/bugly/proguard/an;

.field public static final enum bN:Lcom/tencent/bugly/proguard/an;

.field public static final enum bO:Lcom/tencent/bugly/proguard/an;

.field public static final enum bP:Lcom/tencent/bugly/proguard/an;

.field public static final enum bQ:Lcom/tencent/bugly/proguard/an;

.field public static final enum bR:Lcom/tencent/bugly/proguard/an;

.field public static final enum bS:Lcom/tencent/bugly/proguard/an;

.field public static final enum bT:Lcom/tencent/bugly/proguard/an;

.field public static final enum bU:Lcom/tencent/bugly/proguard/an;

.field public static final enum bV:Lcom/tencent/bugly/proguard/an;

.field private static final synthetic bW:[Lcom/tencent/bugly/proguard/an;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/tencent/bugly/proguard/an;

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "TYPE_INIT"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bF:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "TYPE_UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "TYPE_NET"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bH:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "TYPE_WAP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bI:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "TYPE_WIFI"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bJ:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CMWAP"

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bK:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_3GWAP"

    const/4 v3, 0x6

    const/16 v5, 0x10

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bL:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_UNIWAP"

    const/16 v3, 0x20

    const/4 v6, 0x7

    invoke-direct {v1, v2, v6, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bM:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v6

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CTWAP"

    const/16 v3, 0x40

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bN:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CTNET"

    const/16 v3, 0x80

    const/16 v4, 0x9

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bO:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_UNINET"

    const/16 v3, 0x100

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bP:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_3GNET"

    const/16 v3, 0x200

    const/16 v4, 0xb

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bQ:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CMNET"

    const/16 v3, 0x400

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bR:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CTLTE"

    const/16 v3, 0x800

    const/16 v4, 0xd

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bS:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_WONET"

    const/16 v3, 0x1000

    const/16 v4, 0xe

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bT:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CMLTE"

    const/16 v3, 0x2000

    const/16 v4, 0xf

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bU:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/an;

    const-string v2, "T_APN_CM3G"

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v5, v3}, Lcom/tencent/bugly/proguard/an;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/an;->bV:Lcom/tencent/bugly/proguard/an;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/bugly/proguard/an;->bW:[Lcom/tencent/bugly/proguard/an;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/bugly/proguard/an;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/an;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/an;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/an;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/an;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/an;->bW:[Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/an;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/an;

    return-object v0
.end method
