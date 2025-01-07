.class Lcom/netease/nis/crashreport/a;
.super Ljava/lang/Object;
.source "BaseNdkHandler.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method constructor <init>(Lcom/netease/nis/crashreport/BaseNdkHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start error"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseNdkHandler"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    const-string p1, "BaseNdkHandler"

    const-string v0, "start success"

    .line 1
    invoke-static {p1, v0}, Lcom/netease/nis/basesdk/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
