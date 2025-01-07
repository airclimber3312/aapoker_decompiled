.class public final Lcom/tencent/bugly/proguard/oa;
.super Lcom/tencent/bugly/proguard/ja;


# static fields
.field protected static CQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/bugly/proguard/oa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ja;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/oa;->aJ:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/bugly/proguard/oa;->CQ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ao()Ljava/lang/String;
    .locals 1

    const-string v0, "work_thread_lag"

    return-object v0
.end method

.method public final start()V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    const/16 v0, 0x9e

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nv;->K(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RMonitor_looper_WorkThread"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/oa;->aJ:Z

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/oa;->y(I)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "start, can not collect"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/oa;->aJ:Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "start"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/oa;->y(I)V

    return-void
.end method

.method public final stop()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/oa;->aJ:Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_WorkThread"

    const-string v2, "stop"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/oa;->fM()V

    return-void
.end method
