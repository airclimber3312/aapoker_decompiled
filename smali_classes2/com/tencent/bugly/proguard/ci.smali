.class public final Lcom/tencent/bugly/proguard/ci;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ci$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/tencent/bugly/common/utils/ProcessUtil;",
        "",
        "()V",
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
.field private static eF:Ljava/lang/String;

.field public static final eG:Lcom/tencent/bugly/proguard/ci$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ci$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ci$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/proguard/ci;->eF:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic E(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/ci;->eF:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic bf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ci;->eF:Ljava/lang/String;

    return-object v0
.end method

.method public static final h(Landroid/content/Context;)Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ci$a;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
