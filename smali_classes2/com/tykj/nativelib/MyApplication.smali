.class public Lcom/tykj/nativelib/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static ApplicationSign:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyApplication"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string/jumbo v0, "\u5728Application\u6784\u9020\u51fd\u6570\u4e2d\u65b0\u5efa\u4e00\u4e2aContext\u53bb\u68c0\u6d4b\u7b7e\u540d\uff0c\u662f\u5e94\u7528\u53ef\u4ee5\u63a7\u5236\u6700\u65e9\u7684\u5730\u65b9\u3002 check: "

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 14
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tykj/nativelib/MyApplication;->ApplicationSign:Ljava/lang/String;

    const-string v1, "MyApplication"

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tykj/nativelib/MyApplication;->ApplicationSign:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "-1"

    .line 18
    sput-object v0, Lcom/tykj/nativelib/MyApplication;->ApplicationSign:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "MyApplication"

    const-string v1, "Application onCreate"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
