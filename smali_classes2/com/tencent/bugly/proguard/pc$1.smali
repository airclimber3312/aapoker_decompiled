.class final Lcom/tencent/bugly/proguard/pc$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ep:Lcom/tencent/rmonitor/base/meta/InspectUUID;

.field final synthetic Eq:Lcom/tencent/bugly/proguard/pc;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pc;Lcom/tencent/rmonitor/base/meta/InspectUUID;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pc$1;->Eq:Lcom/tencent/bugly/proguard/pc;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pc$1;->Ep:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 5

    new-instance v0, Lcom/tencent/bugly/proguard/pc$b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pc$1;->Ep:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/pc$1;->Eq:Lcom/tencent/bugly/proguard/pc;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/pc;->a(Lcom/tencent/bugly/proguard/pc;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/pc$1;->Eq:Lcom/tencent/bugly/proguard/pc;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/pc;->b(Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/it;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pc$1;->Eq:Lcom/tencent/bugly/proguard/pc;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/pc;->c(Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/pe;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/pc$b;-><init>(Lcom/tencent/rmonitor/base/meta/InspectUUID;Landroid/os/Handler;Lcom/tencent/bugly/proguard/it;Lcom/tencent/bugly/proguard/pe;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pc$1;->Eq:Lcom/tencent/bugly/proguard/pc;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/pc;->a(Lcom/tencent/bugly/proguard/pc;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method
