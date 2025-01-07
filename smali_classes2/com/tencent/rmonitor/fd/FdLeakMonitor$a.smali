.class final Lcom/tencent/rmonitor/fd/FdLeakMonitor$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rmonitor/fd/FdLeakMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final zE:Lcom/tencent/rmonitor/fd/FdLeakMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;-><init>(B)V

    sput-object v0, Lcom/tencent/rmonitor/fd/FdLeakMonitor$a;->zE:Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    return-void
.end method

.method static synthetic gS()Lcom/tencent/rmonitor/fd/FdLeakMonitor;
    .locals 1

    sget-object v0, Lcom/tencent/rmonitor/fd/FdLeakMonitor$a;->zE:Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    return-object v0
.end method
