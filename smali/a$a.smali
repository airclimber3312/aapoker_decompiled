.class public La$a;
.super Ljava/lang/Object;
.source "BuglyWrapper.java"

# interfaces
.implements Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La;


# direct methods
.method public constructor <init>(La;)V
    .locals 0

    .line 1
    iput-object p1, p0, La$a;->a:La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectCustomData(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/rmonitor/custom/ICustomDataEditor;)V
    .locals 1

    const-string v0, "looper_metric"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "s1"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->putStringParam(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p2, "memory_quantile"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide p1

    long-to-double p1, p1

    const-string v0, "n1"

    invoke-interface {p3, v0, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->putNumberParam(Ljava/lang/String;D)Z

    .line 5
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result p1

    int-to-double p1, p1

    const-string v0, "n2"

    invoke-interface {p3, v0, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->putNumberParam(Ljava/lang/String;D)Z

    .line 6
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result p1

    int-to-double p1, p1

    const-string v0, "n3"

    invoke-interface {p3, v0, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditor;->putNumberParam(Ljava/lang/String;D)Z

    :cond_1
    :goto_0
    return-void
.end method
