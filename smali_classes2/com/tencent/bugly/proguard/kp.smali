.class public final Lcom/tencent/bugly/proguard/kp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/kp$b;,
        Lcom/tencent/bugly/proguard/kp$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/util/AppInfo;",
        "",
        "()V",
        "Companion",
        "PssInfo",
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
.field private static hq:Ljava/lang/String;

.field private static yK:Lcom/tencent/bugly/proguard/kp$b;

.field public static final yL:Lcom/tencent/bugly/proguard/kp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/kp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/kp$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    new-instance v0, Lcom/tencent/bugly/proguard/kp$b;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kp$b;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kp;->yK:Lcom/tencent/bugly/proguard/kp$b;

    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/proguard/kp;->hq:Ljava/lang/String;

    return-void
.end method

.method public static final Q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic ba(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/kp;->hq:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic gp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kp;->hq:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic gq()Lcom/tencent/bugly/proguard/kp$b;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kp;->yK:Lcom/tencent/bugly/proguard/kp$b;

    return-object v0
.end method

.method public static final gr()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/kp$a;->gr()J

    move-result-wide v0

    return-wide v0
.end method
