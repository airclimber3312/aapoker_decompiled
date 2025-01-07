.class final Lcom/tencent/bugly/proguard/jh$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/jh;-><init>()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic wK:Lcom/tencent/bugly/proguard/jh;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jh$c;->wK:Lcom/tencent/bugly/proguard/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_report_ReportCacheImpl"

    const-string v2, "report cache data"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/jg;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/jg;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/jg;->run()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jh$c;->wK:Lcom/tencent/bugly/proguard/jh;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/jh;->a(Lcom/tencent/bugly/proguard/jh;)V

    return-void
.end method
