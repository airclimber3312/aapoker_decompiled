.class public final Lcom/tencent/bugly/proguard/aw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00048B@BX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/ssl/SslFactory;",
        "",
        "()V",
        "DEFAULT_SSL_CONTEXT",
        "Lcom/tencent/bugly/common/network/ssl/ISslContextBuilder;",
        "value",
        "sslBuilder",
        "getSslBuilder",
        "()Lcom/tencent/bugly/common/network/ssl/ISslContextBuilder;",
        "setSslBuilder",
        "(Lcom/tencent/bugly/common/network/ssl/ISslContextBuilder;)V",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactory",
        "()Ljavax/net/ssl/SSLSocketFactory;",
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
.field public static final cw:Lcom/tencent/bugly/proguard/au;

.field public static cx:Lcom/tencent/bugly/proguard/au;

.field public static final cy:Ljavax/net/ssl/SSLSocketFactory;

.field public static final cz:Lcom/tencent/bugly/proguard/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/aw;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/aw;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aw;->cz:Lcom/tencent/bugly/proguard/aw;

    new-instance v0, Lcom/tencent/bugly/proguard/at;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/at;-><init>()V

    check-cast v0, Lcom/tencent/bugly/proguard/au;

    sput-object v0, Lcom/tencent/bugly/proguard/aw;->cw:Lcom/tencent/bugly/proguard/au;

    sput-object v0, Lcom/tencent/bugly/proguard/aw;->cx:Lcom/tencent/bugly/proguard/au;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
