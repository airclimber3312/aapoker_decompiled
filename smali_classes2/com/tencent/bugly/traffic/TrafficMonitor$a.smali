.class final Lcom/tencent/bugly/traffic/TrafficMonitor$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/traffic/TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final qJ:Lcom/tencent/bugly/traffic/TrafficMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/traffic/TrafficMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/traffic/TrafficMonitor$a;->qJ:Lcom/tencent/bugly/traffic/TrafficMonitor;

    return-void
.end method
