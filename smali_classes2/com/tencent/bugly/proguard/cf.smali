.class public final Lcom/tencent/bugly/proguard/cf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/cf$a;
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
        "Lcom/tencent/bugly/common/utils/FileUtil;",
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

.field private static ey:Landroid/content/Context;

.field public static final ez:Lcom/tencent/bugly/proguard/cf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/cf$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/cf$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/cf;->ez:Lcom/tencent/bugly/proguard/cf$a;

    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/proguard/cf;->ew:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/cf;->ey:Landroid/content/Context;

    return-void
.end method

.method public static final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/File;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/io/File;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/cf;->ez:Lcom/tencent/bugly/proguard/cf$a;

    move-object v1, v0

    check-cast v1, Lcom/tencent/bugly/proguard/cf$a;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/cf$a;->C(Ljava/lang/String;)Ljava/io/BufferedOutputStream;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    if-eqz v2, :cond_0

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v2

    :goto_0
    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, p1

    check-cast v2, Ljava/io/BufferedInputStream;

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_2
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
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

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic aZ()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/cf;->ey:Landroid/content/Context;

    return-object v0
.end method

.method public static final b(Ljava/io/File;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->b(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic ba()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/cf;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic bb()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/cf;->ew:Ljava/lang/String;

    return-object v0
.end method

.method public static final c(Ljava/io/File;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->c(Ljava/io/File;)V

    return-void
.end method

.method public static final k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/cf;->ez:Lcom/tencent/bugly/proguard/cf$a;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public static final l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic v(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/cf;->ex:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic w(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/cf;->ew:Ljava/lang/String;

    return-void
.end method

.method public static final x(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/cf$a;->a(Ljava/io/File;)V

    return-void
.end method

.method public static final y(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static final z(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf$a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
