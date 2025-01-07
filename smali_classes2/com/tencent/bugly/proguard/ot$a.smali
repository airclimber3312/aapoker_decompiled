.class final Lcom/tencent/bugly/proguard/ot$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/tencent/rmonitor/base/config/data/RMonitorConfig;",
        "kotlin.jvm.PlatformType",
        "onConfigLoad"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final DR:Lcom/tencent/bugly/proguard/ot$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ot$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ot$a;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ot$a;->DR:Lcom/tencent/bugly/proguard/ot$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hb;)V
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "onConfigLoad"

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/hb;->aG(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-static {}, Lcom/tencent/bugly/proguard/ot;->ig()V

    return-void
.end method
