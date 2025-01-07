.class public final Lcom/tencent/bugly/proguard/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/au;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/at$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/ssl/DefaultSslContextBuilder;",
        "Lcom/tencent/bugly/common/network/ssl/ISslContextBuilder;",
        "()V",
        "sslContext",
        "Ljavax/net/ssl/SSLContext;",
        "getSslContext",
        "()Ljavax/net/ssl/SSLContext;",
        "sslContext$delegate",
        "Lkotlin/Lazy;",
        "build",
        "initSslContext",
        "",
        "ssl",
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
.field static final synthetic cp:[Lkotlin/reflect/KProperty;

.field public static final cr:Lcom/tencent/bugly/proguard/at$a;


# instance fields
.field private final cq:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/tencent/bugly/proguard/at;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sslContext"

    const-string v4, "getSslContext()Ljavax/net/ssl/SSLContext;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/bugly/proguard/at;->cp:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/bugly/proguard/at$a;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/at$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/at;->cr:Lcom/tencent/bugly/proguard/at$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/at$b;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/at$b;-><init>(Lcom/tencent/bugly/proguard/at;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->cq:Lkotlin/Lazy;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const-string v0, "ssl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public final ac()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->cq:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    return-object v0
.end method
