.class public final Lcom/tencent/bugly/proguard/gg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/config/ConfigProxy;",
        "",
        "()V",
        "config",
        "Lcom/tencent/rmonitor/base/config/ConfigCenter;",
        "getConfig",
        "()Lcom/tencent/rmonitor/base/config/ConfigCenter;",
        "setConfig",
        "(Lcom/tencent/rmonitor/base/config/ConfigCenter;)V",
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
.field private static sm:Lcom/tencent/bugly/proguard/gd;

.field public static final sn:Lcom/tencent/bugly/proguard/gg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gg;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/gg;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    new-instance v0, Lcom/tencent/bugly/proguard/gd;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/gd;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/gg;->sm:Lcom/tencent/bugly/proguard/gd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eS()Lcom/tencent/bugly/proguard/gd;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sm:Lcom/tencent/bugly/proguard/gd;

    return-object v0
.end method
