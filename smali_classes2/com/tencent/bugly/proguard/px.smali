.class final Lcom/tencent/bugly/proguard/px;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/pu;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/tencent/bugly/proguard/ie;)V
    .locals 1

    const-string v0, "looper_metric"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/pv;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ie;)Z

    return-void
.end method
