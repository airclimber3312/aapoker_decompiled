.class final Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic AB:I

.field final synthetic AC:Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;


# direct methods
.method constructor <init>(Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;->AC:Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;

    iput-object p2, p0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;->AA:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p3, p0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;->AB:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "RMonitor_ForkDumper"

    const-string v1, "wait sub process dump timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;->AA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v0, p0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;->AB:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
