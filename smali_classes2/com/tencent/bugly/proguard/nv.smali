.class public final Lcom/tencent/bugly/proguard/nv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/LooperConfig;",
        "",
        "()V",
        "getPluginConfig",
        "Lcom/tencent/rmonitor/base/config/data/RPluginConfig;",
        "pluginName",
        "",
        "isCanCollect",
        "",
        "pluginId",
        "",
        "whetherPluginSampling",
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
.field public static final Co:Lcom/tencent/bugly/proguard/nv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/nv;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/nv;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static K(I)Z
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result p0

    return p0
.end method

.method public static ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 1

    const-string v0, "pluginName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/gd;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hO()Z
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v0, 0x66

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->x(I)Z

    move-result v0

    return v0
.end method
