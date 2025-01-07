.class public Lcom/tencent/rmonitor/fd/analysis/heap/FdHeapAnalyzeResultReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private final zX:Lcom/tencent/bugly/proguard/me;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "onReceiveResult: resultCode="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RMonitor_FdLeak_FdHeapAnalyzeResultReceiver"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/rmonitor/fd/analysis/heap/FdHeapAnalyzeResultReceiver;->zX:Lcom/tencent/bugly/proguard/me;

    if-nez p1, :cond_0

    const-string p1, "onReceiveResult: listener == null"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "key_analyze_result"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string p1, "key_analyze_error_message"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
