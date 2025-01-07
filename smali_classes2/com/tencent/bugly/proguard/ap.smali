.class public final enum Lcom/tencent/bugly/proguard/ap;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/ap;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/NetworkState;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NETWORK_NONE",
        "NETWORK_WIFI",
        "NETWORK_2G",
        "NETWORK_3G",
        "NETWORK_4G",
        "NETWORK_MOBILE",
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
.field public static final enum bZ:Lcom/tencent/bugly/proguard/ap;

.field public static final enum ca:Lcom/tencent/bugly/proguard/ap;

.field public static final enum cb:Lcom/tencent/bugly/proguard/ap;

.field public static final enum cc:Lcom/tencent/bugly/proguard/ap;

.field public static final enum cd:Lcom/tencent/bugly/proguard/ap;

.field public static final enum ce:Lcom/tencent/bugly/proguard/ap;

.field private static final synthetic cf:[Lcom/tencent/bugly/proguard/ap;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/bugly/proguard/ap;

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_NONE"

    const-string v3, "NONE"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->bZ:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_WIFI"

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->ca:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_2G"

    const-string v3, "2G"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->cb:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_3G"

    const-string v3, "3G"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->cc:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_4G"

    const-string v3, "4G"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->cd:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/ap;

    const-string v2, "NETWORK_MOBILE"

    const-string v3, "MOBILE"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/bugly/proguard/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ap;->ce:Lcom/tencent/bugly/proguard/ap;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/proguard/ap;->cf:[Lcom/tencent/bugly/proguard/ap;

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

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ap;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ap;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/ap;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/ap;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ap;->cf:[Lcom/tencent/bugly/proguard/ap;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/ap;

    return-object v0
.end method
