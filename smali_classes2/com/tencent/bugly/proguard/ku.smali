.class public final Lcom/tencent/bugly/proguard/ku;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ku$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/util/FileUtil;",
        "",
        "()V",
        "Companion",
        "IStreamListener",
        "MmapFile",
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
.field private static ew:Ljava/lang/String;

.field private static ex:Ljava/lang/String;

.field private static vl:Landroid/app/Application;

.field public static final zf:Lcom/tencent/bugly/proguard/ku$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ku$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ku$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/proguard/ku;->ew:Ljava/lang/String;

    return-void
.end method

.method public static final B(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ku$a;->B(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final a(Ljava/io/File;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ku$a;->a(Ljava/io/File;)V

    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ku$a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic ba()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ku;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic bb()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ku;->ew:Ljava/lang/String;

    return-object v0
.end method

.method public static final bc(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ku$a;->bc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final be()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/ku$a;->be()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/ku$a;->c(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/ku;->vl:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic gu()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ku;->vl:Landroid/app/Application;

    return-object v0
.end method

.method public static final synthetic v(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/ku;->ex:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic w(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/ku;->ew:Ljava/lang/String;

    return-void
.end method
