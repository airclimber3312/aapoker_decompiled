.class public La$b;
.super Ljava/lang/Object;
.source "BuglyWrapper.java"

# interfaces
.implements Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;


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
    iput-object p1, p0, La$b;->a:La;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectCustomData(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;)V
    .locals 3

    const-string v0, "looper_stack"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "s1"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putStringParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "isDebuggerConnected"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalGcInvocationCount"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    invoke-static {}, Landroid/os/Debug;->getThreadGcInvocationCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThreadGcInvocationCount"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p2, "big_bitmap"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "n3"

    const-string v1, "n2"

    const-string v2, "n1"

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-interface {p3, v2, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 8
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result p1

    int-to-double p1, p1

    invoke-interface {p3, v1, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 9
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result p1

    int-to-double p1, p1

    invoke-interface {p3, v0, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 10
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalFreedCount"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalFreedSize"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p2, "activity_leak"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-interface {p3, v2, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 14
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result p1

    int-to-double p1, p1

    invoke-interface {p3, v1, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 15
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result p1

    int-to-double p1, p1

    invoke-interface {p3, v0, p1, p2}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putNumberParam(Ljava/lang/String;D)Z

    .line 16
    invoke-static {}, Landroid/os/Debug;->getLoadedClassCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadedClassCount"

    invoke-interface {p3, p2, p1}, Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;->putUserData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method
