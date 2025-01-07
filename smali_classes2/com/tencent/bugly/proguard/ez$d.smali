.class final Lcom/tencent/bugly/proguard/ez$d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private oR:Lcom/tencent/bugly/proguard/ff$d;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ff$d;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$d;->oR:Lcom/tencent/bugly/proguard/ff$d;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Matrix.WarmUpDelegate"

    const-string v3, "Warm-up received."

    invoke-static {v2, v3, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "action.backtrace.warmed-up"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-static {p2}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setWarmedUp(Z)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ez$d;->oR:Lcom/tencent/bugly/proguard/ff$d;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ff$d;)V

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Unregister receiver twice."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2, v0}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
