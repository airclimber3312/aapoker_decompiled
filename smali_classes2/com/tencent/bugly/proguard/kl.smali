.class public final enum Lcom/tencent/bugly/proguard/kl;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/kl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/bugly/proguard/kl;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/logger/LogState;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "OFF",
        "ERROR",
        "WARN",
        "INFO",
        "DEBUG",
        "VERBOS",
        "Companion",
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
.field public static final enum yk:Lcom/tencent/bugly/proguard/kl;

.field public static final enum yl:Lcom/tencent/bugly/proguard/kl;

.field public static final enum ym:Lcom/tencent/bugly/proguard/kl;

.field public static final enum yn:Lcom/tencent/bugly/proguard/kl;

.field public static final enum yo:Lcom/tencent/bugly/proguard/kl;

.field public static final enum yp:Lcom/tencent/bugly/proguard/kl;

.field private static final synthetic yq:[Lcom/tencent/bugly/proguard/kl;

.field private static final yr:[Lcom/tencent/bugly/proguard/kl;

.field public static final ys:Lcom/tencent/bugly/proguard/kl$a;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/bugly/proguard/kl;

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "OFF"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->yk:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v3

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->yl:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "WARN"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v4}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->ym:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "INFO"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v4}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->yn:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "DEBUG"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v4}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->yo:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v4

    new-instance v1, Lcom/tencent/bugly/proguard/kl;

    const-string v2, "VERBOS"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v4}, Lcom/tencent/bugly/proguard/kl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/bugly/proguard/kl;->yp:Lcom/tencent/bugly/proguard/kl;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/bugly/proguard/kl;->yq:[Lcom/tencent/bugly/proguard/kl;

    new-instance v0, Lcom/tencent/bugly/proguard/kl$a;

    invoke-direct {v0, v3}, Lcom/tencent/bugly/proguard/kl$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/kl;->ys:Lcom/tencent/bugly/proguard/kl$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/kl;->values()[Lcom/tencent/bugly/proguard/kl;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/kl;->yr:[Lcom/tencent/bugly/proguard/kl;

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

    iput p3, p0, Lcom/tencent/bugly/proguard/kl;->value:I

    return-void
.end method

.method public static final synthetic gj()[Lcom/tencent/bugly/proguard/kl;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yr:[Lcom/tencent/bugly/proguard/kl;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/bugly/proguard/kl;
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/kl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/kl;

    return-object p0
.end method

.method public static values()[Lcom/tencent/bugly/proguard/kl;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yq:[Lcom/tencent/bugly/proguard/kl;

    invoke-virtual {v0}, [Lcom/tencent/bugly/proguard/kl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/bugly/proguard/kl;

    return-object v0
.end method
