.class public final Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wZ:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;


# direct methods
.method public constructor <init>(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;->wZ:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;->wZ:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    invoke-static {v0}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->a(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;->wZ:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    invoke-static {v6}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->b(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace$1;->wZ:Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;

    invoke-static {v7}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->c(Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/rmonitor/base/thread/trace/QuickJavaThreadTrace;->nativePrepare(JJZII)V

    return-void
.end method
