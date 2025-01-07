.class public final Lcom/tencent/bugly/proguard/hw;
.super Lcom/tencent/bugly/proguard/hx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/hw$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/db/DBHelper;",
        "Lcom/tencent/rmonitor/base/db/SqliteHelper;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "dbHandler",
        "Lcom/tencent/rmonitor/base/db/DBHandler;",
        "getDbHandler",
        "()Lcom/tencent/rmonitor/base/db/DBHandler;",
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
.field private static volatile uP:Lcom/tencent/bugly/proguard/hw;

.field public static final uQ:Lcom/tencent/bugly/proguard/hw$a;


# instance fields
.field public final uO:Lcom/tencent/bugly/proguard/hv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/hw$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/hw$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/hw;->uQ:Lcom/tencent/bugly/proguard/hw$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rmonitor_db"

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/hx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/bugly/proguard/hv;->uN:Lcom/tencent/bugly/proguard/hv$a;

    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/hv$a;->a(Lcom/tencent/bugly/proguard/hw;)Lcom/tencent/bugly/proguard/hv;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    return-void
.end method

.method public static final synthetic b(Lcom/tencent/bugly/proguard/hw;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/hw;->uP:Lcom/tencent/bugly/proguard/hw;

    return-void
.end method

.method public static final synthetic fv()Lcom/tencent/bugly/proguard/hw;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/hw;->uP:Lcom/tencent/bugly/proguard/hw;

    return-object v0
.end method
