.class Lcom/netease/nis/crashreport/c;
.super Ljava/lang/Object;
.source "BaseNdkHandler.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/crashreport/BaseNdkHandler;


# direct methods
.method constructor <init>(Lcom/netease/nis/crashreport/BaseNdkHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/crashreport/c;->b:Lcom/netease/nis/crashreport/BaseNdkHandler;

    iput-object p2, p0, Lcom/netease/nis/crashreport/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload crash info failed,error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "upload crash info success"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nis/crashreport/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/nis/crashreport/c;->b:Lcom/netease/nis/crashreport/BaseNdkHandler;

    invoke-static {p1}, Lcom/netease/nis/crashreport/BaseNdkHandler;->a(Lcom/netease/nis/crashreport/BaseNdkHandler;)Lcom/netease/nis/basesdk/crash/CrashStore;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/crashreport/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/nis/basesdk/crash/CrashStore;->delete(Ljava/lang/String;)V

    return-void
.end method
