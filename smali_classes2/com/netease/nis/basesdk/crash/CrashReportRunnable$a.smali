.class Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;
.super Ljava/lang/Object;
.source "CrashReportRunnable.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/basesdk/crash/CrashReportRunnable;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/crash/CrashReportRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;->a:Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;->a:Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-static {v0}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->a(Lcom/netease/nis/basesdk/crash/CrashReportRunnable;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;->a:Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-static {v0}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->a(Lcom/netease/nis/basesdk/crash/CrashReportRunnable;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
