.class public final enum Lcom/tencent/bugly/proguard/bh$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/bh$b;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/tencent/bugly/common/reporter/data/ReportStrategy$RetryStrategy;",
        "",
        "(Ljava/lang/String;I)V",
        "RETRY_IMMEDIATELY",
        "RETRY_BACKOFF",
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
.field public static final enum dk:Lcom/tencent/bugly/proguard/bh$b;

.field public static final enum dl:Lcom/tencent/bugly/proguard/bh$b;

.field private static final synthetic dm:[Lcom/tencent/bugly/proguard/bh$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/bugly/proguard/bh$b;

    new-instance v1, Lcom/tencent/bugly/proguard/bh$b;

    const-string v2, "RETRY_IMMEDIATELY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/bh$b;->dk:Lcom/tencent/bugly/proguard/bh$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/bh$b;

    const-string v2, "RETRY_BACKOFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/bh$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/bugly/proguard/bh$b;->dl:Lcom/tencent/bugly/proguard/bh$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/bugly/proguard/bh$b;->dm:[Lcom/tencent/bugly/proguard/bh$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/bh$b;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/bh$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/bh$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/bh$b;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/bh$b;->dm:[Lcom/tencent/bugly/proguard/bh$b;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/bh$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/bh$b;

    return-object v0
.end method
