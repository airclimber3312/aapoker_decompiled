.class public final Lcom/tencent/bugly/proguard/km;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/rmonitor/common/logger/ILoger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/km$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u001f\u001a\u00020 2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010#J!\u0010$\u001a\u00020 2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010#J$\u0010%\u001a\u00020 2\u0008\u0010&\u001a\u0004\u0018\u00010\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\u00062\u0008\u0010(\u001a\u0004\u0018\u00010)J\u001a\u0010%\u001a\u00020 2\u0008\u0010&\u001a\u0004\u0018\u00010\u00062\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010*\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010)J!\u0010+\u001a\u00020 2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010#J)\u0010,\u001a\u00020 2\u0006\u0010-\u001a\u00020\u00102\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010.J\u000e\u0010/\u001a\u00020 2\u0006\u0010\u000f\u001a\u00020\nJ!\u00100\u001a\u00020 2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010#J!\u00101\u001a\u00020 2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\"\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010#R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/logger/Logger;",
        "Lcom/tencent/rmonitor/common/logger/ILoger;",
        "()V",
        "DEFAULT_PROXY",
        "Lcom/tencent/rmonitor/common/logger/ILogProxy;",
        "TAG",
        "",
        "debug",
        "",
        "intLevel",
        "",
        "getIntLevel",
        "()I",
        "setIntLevel",
        "(I)V",
        "level",
        "Lcom/tencent/rmonitor/common/logger/LogState;",
        "logLevel",
        "getLogLevel",
        "()Lcom/tencent/rmonitor/common/logger/LogState;",
        "setLogLevel",
        "(Lcom/tencent/rmonitor/common/logger/LogState;)V",
        "value",
        "logProxy",
        "getLogProxy",
        "()Lcom/tencent/rmonitor/common/logger/ILogProxy;",
        "setLogProxy",
        "(Lcom/tencent/rmonitor/common/logger/ILogProxy;)V",
        "logTimeFormatter",
        "Ljava/lang/ThreadLocal;",
        "Ljava/text/SimpleDateFormat;",
        "d",
        "",
        "args",
        "",
        "([Ljava/lang/String;)V",
        "e",
        "exception",
        "tag",
        "msg",
        "throwable",
        "",
        "getThrowableMessage",
        "i",
        "logInner",
        "logState",
        "(Lcom/tencent/rmonitor/common/logger/LogState;[Ljava/lang/String;)V",
        "resetLogLevel",
        "v",
        "w",
        "DefaultLogProxy",
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
.field private static final yt:Lcom/tencent/bugly/proguard/kk;

.field private static yu:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static yv:Z

.field private static yw:I

.field private static yx:Lcom/tencent/bugly/proguard/kl;

.field private static yy:Lcom/tencent/bugly/proguard/kk;

.field public static final yz:Lcom/tencent/bugly/proguard/km;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/km;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/km;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-instance v0, Lcom/tencent/bugly/proguard/km$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/km$a;-><init>()V

    check-cast v0, Lcom/tencent/bugly/proguard/kk;

    sput-object v0, Lcom/tencent/bugly/proguard/km;->yt:Lcom/tencent/bugly/proguard/kk;

    new-instance v1, Lcom/tencent/bugly/proguard/km$b;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/km$b;-><init>()V

    check-cast v1, Ljava/lang/ThreadLocal;

    sput-object v1, Lcom/tencent/bugly/proguard/km;->yu:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/tencent/bugly/proguard/kl;->ym:Lcom/tencent/bugly/proguard/kl;

    iget v1, v1, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v1, Lcom/tencent/bugly/proguard/km;->yw:I

    sget-object v1, Lcom/tencent/bugly/proguard/kl;->ym:Lcom/tencent/bugly/proguard/kl;

    sput-object v1, Lcom/tencent/bugly/proguard/km;->yx:Lcom/tencent/bugly/proguard/kl;

    sput-object v0, Lcom/tencent/bugly/proguard/km;->yy:Lcom/tencent/bugly/proguard/kk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I)V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->ys:Lcom/tencent/bugly/proguard/kl$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/kl;->gj()[Lcom/tencent/bugly/proguard/kl;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    iget v6, v5, Lcom/tencent/bugly/proguard/kl;->value:I

    if-ne v6, p0, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    sget-object v5, Lcom/tencent/bugly/proguard/kl;->yk:Lcom/tencent/bugly/proguard/kl;

    :cond_3
    const-string p0, "level"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/tencent/bugly/proguard/km;->yx:Lcom/tencent/bugly/proguard/kl;

    iget p0, v5, Lcom/tencent/bugly/proguard/kl;->value:I

    sput p0, Lcom/tencent/bugly/proguard/km;->yw:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yo:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    if-lt p0, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    sput-boolean v2, Lcom/tencent/bugly/proguard/km;->yv:Z

    return-void
.end method

.method private static varargs b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yx:Lcom/tencent/bugly/proguard/kl;

    move-object v1, p0

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/kl;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/km;->gm()Lcom/tencent/bugly/proguard/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/tencent/bugly/proguard/kk;->a(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    move-object v2, v0

    check-cast v2, Ljava/io/Writer;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sw.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static gk()I
    .locals 1

    sget v0, Lcom/tencent/bugly/proguard/km;->yw:I

    return v0
.end method

.method public static gl()Lcom/tencent/bugly/proguard/kl;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yx:Lcom/tencent/bugly/proguard/kl;

    return-object v0
.end method

.method private static gm()Lcom/tencent/bugly/proguard/kk;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yy:Lcom/tencent/bugly/proguard/kk;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yt:Lcom/tencent/bugly/proguard/kk;

    :cond_0
    return-object v0
.end method

.method public static final synthetic gn()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yu:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Lcom/tencent/bugly/proguard/km;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Lcom/tencent/bugly/proguard/km;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final varargs d([Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yo:Lcom/tencent/bugly/proguard/kl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/km;->b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs e([Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yl:Lcom/tencent/bugly/proguard/kl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/km;->b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs i([Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yn:Lcom/tencent/bugly/proguard/kl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/km;->b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs v([Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yp:Lcom/tencent/bugly/proguard/kl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/km;->b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    return-void
.end method

.method public final varargs w([Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->ym:Lcom/tencent/bugly/proguard/kl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/km;->b(Lcom/tencent/bugly/proguard/kl;[Ljava/lang/String;)V

    return-void
.end method
