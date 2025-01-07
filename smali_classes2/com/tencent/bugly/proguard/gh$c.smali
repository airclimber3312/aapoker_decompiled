.class public final Lcom/tencent/bugly/proguard/gh$c;
.super Lcom/tencent/bugly/proguard/gh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/config/DefaultPluginConfig$CeilingValuePlugin;",
        "Lcom/tencent/rmonitor/base/config/DefaultPluginConfig;",
        "pluginName",
        "",
        "entrance",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "java_memory_ceiling_value"

    const-string v1, "com.tencent.rmonitor.memory.ceil.MemoryCeilingMonitor"

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/gh$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/gh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
