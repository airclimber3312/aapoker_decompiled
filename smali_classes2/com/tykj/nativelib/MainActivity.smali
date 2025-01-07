.class public Lcom/tykj/nativelib/MainActivity;
.super Lcom/tykj/nativelib/BaseMainActivity;
.source "MainActivity.java"


# static fields
.field public static final DefenderResult:I = 0x190

.field private static TAG:Ljava/lang/String; = "AAPokerDefender"

.field private static appList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cv:Lcom/tykj/nativelib/NativeLib; = null

.field private static final handler:Landroid/os/Handler;

.field private static ivB:Ljava/lang/String; = null

.field private static keyB:Ljava/lang/String; = null

.field private static final secret:Ljava/lang/String; = "1fea8d0fbeda6195f1cba0ff6423e16997ee9de86613e9092d669a9fe216e990"

.field private static token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->handler:Landroid/os/Handler;

    const-string v0, "hUJreccol87^fG4%"

    .line 41
    sput-object v0, Lcom/tykj/nativelib/MainActivity;->keyB:Ljava/lang/String;

    const-string v0, "TnIuyGHolW45&VBa"

    .line 42
    sput-object v0, Lcom/tykj/nativelib/MainActivity;->ivB:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.sina.weibo"

    const-string v4, "com.taobao.taobao"

    const-string v5, "com.ss.android.ugc.aweme.lite"

    const-string v6, "com.eg.android.AlipayGphone"

    const-string v7, "com.zhiliaoapp.musically"

    const-string v8, "com.jingdong.app.mall"

    const-string v9, "com.facebook.katana"

    const-string v10, "com.instagram.android"

    const-string v11, "com.whatsapp"

    const-string v12, "com.twitter.android"

    const-string v13, "com.snapchat.android"

    const-string v14, "com.paypal.mobile"

    const-string v15, "com.stripe.stripe_sdk"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->appList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tykj/nativelib/BaseMainActivity;-><init>()V

    return-void
.end method

.method public static ApkFile(Ljava/lang/String;)V
    .locals 2

    .line 111
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 114
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/NativeLib;->ApkFile(Ljava/lang/String;)Z

    move-result p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "3-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static CallRespond(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NativeCallUnity"

    .line 71
    invoke-static {v0, p0}, Lcom/tykj/nativelib/MainActivity;->SendUnityMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static CheckAPP()Z
    .locals 6

    .line 233
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 235
    sget-object v2, Lcom/tykj/nativelib/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5df2\u5b89\u88c5app\u6570\u91cf\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 236
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 238
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 239
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 242
    sget-object v5, Lcom/tykj/nativelib/MainActivity;->appList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static CheckAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 290
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 294
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature(Ljava/lang/String;)Z

    move-result v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    sget-object v2, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v2, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature2(Ljava/lang/String;)Z

    move-result v2

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    sget-object v2, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v2, p1}, Lcom/tykj/nativelib/NativeLib;->ApkFile(Ljava/lang/String;)Z

    move-result p1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "true&"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 311
    :goto_0
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkSocket()Z

    move-result p1

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 314
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkLib()Z

    move-result p1

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 317
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkEmulator()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->CheckHaveSensor()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->CheckHaveCamera()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 318
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkRoot()Z

    move-result p1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 323
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkXposed()Z

    move-result p1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "14-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static CheckAppSign(Ljava/lang/String;)V
    .locals 3

    const-string v0, "5-"

    .line 138
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckAppSign error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static CheckEnterAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 332
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 336
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature(Ljava/lang/String;)Z

    move-result v0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    sget-object v2, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v2, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature2(Ljava/lang/String;)Z

    move-result v2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    sget-object v2, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v2, p1}, Lcom/tykj/nativelib/NativeLib;->ApkFile(Ljava/lang/String;)Z

    move-result p1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "true&"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 353
    :goto_0
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkSocket()Z

    move-result p1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkLib()Z

    move-result p1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 359
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkEmulator()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->CheckHaveSensor()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->CheckHaveCamera()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 360
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkRoot()Z

    move-result p1

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkXposed()Z

    move-result p1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "15-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static CheckHaveCamera()Z
    .locals 4

    const/4 v0, 0x1

    .line 206
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 207
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 210
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return v0

    :cond_1
    return v3

    :catch_0
    move-exception v1

    .line 225
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v0
.end method

.method public static CheckHaveSensor()Z
    .locals 3

    .line 178
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    .line 181
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 187
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static CheckIsEmulator()Z
    .locals 1

    .line 273
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 276
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkEmulator()Z

    move-result v0

    return v0
.end method

.method public static CheckLib()V
    .locals 3

    .line 160
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 162
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkLib()Z

    move-result v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "8-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static CheckSocket()V
    .locals 3

    .line 151
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 153
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkSocket()Z

    move-result v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "7-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static DefenderCheckResult(Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Lcom/tykj/nativelib/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/nativelib/ProtocalRespond;-><init>()V

    const/16 v1, 0x190

    .line 77
    invoke-virtual {v0, v1}, Lcom/tykj/nativelib/ProtocalRespond;->setType(I)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static GetSignatureHexString(Ljava/lang/String;)V
    .locals 2

    const-string v0, "4-"

    .line 122
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "4-false"

    .line 129
    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static Init()V
    .locals 2

    .line 86
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 88
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u521d\u59cb\u5316Anti\u6210\u529f"

    invoke-static {v0, v1}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SendDataToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 398
    sget-object p0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez p0, :cond_0

    .line 399
    new-instance p0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {p0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object p0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 401
    :cond_0
    const-class p0, Lcom/tykj/nativelib/SendDataModel;

    invoke-static {p1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tykj/nativelib/SendDataModel;

    .line 402
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    packed-switch p6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 489
    :pswitch_1
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkXposed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 492
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 482
    :pswitch_2
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkRoot()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 485
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 475
    :pswitch_3
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkEmulator()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 468
    :pswitch_4
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkLib()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 471
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 461
    :pswitch_5
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1}, Lcom/tykj/nativelib/NativeLib;->checkSocket()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 464
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :pswitch_6
    :try_start_0
    invoke-static {}, Lcom/tykj/nativelib/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 450
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :pswitch_7
    invoke-static {}, Lcom/tykj/nativelib/MainActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/nativelib/SignatureUtils;->getSignatureHexString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 434
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :pswitch_8
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1, p2}, Lcom/tykj/nativelib/NativeLib;->ApkFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 424
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :pswitch_9
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1, p2}, Lcom/tykj/nativelib/NativeLib;->checkSignature2(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 417
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :pswitch_a
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {p1, p2}, Lcom/tykj/nativelib/NativeLib;->checkSignature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    iget-object p0, p0, Lcom/tykj/nativelib/SendDataModel;->riskList:Ljava/util/List;

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static SendLogUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static Sort(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 1

    .line 559
    const-class v0, Ljava/util/TreeMap;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeMap;

    return-object p0
.end method

.method private static byteToHex([B)Ljava/lang/String;
    .locals 6

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkAlive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 383
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tykj/nativelib/NativeLib;->Anti_check_alive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "13-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkEmulator()V
    .locals 3

    .line 168
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 171
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkEmulator()Z

    move-result v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "9-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 373
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tykj/nativelib/NativeLib;->Anti_check_inner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tykj/nativelib/MainActivity;->token:Ljava/lang/String;

    .line 374
    sget-object p0, Lcom/tykj/nativelib/MainActivity;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "token::::"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/tykj/nativelib/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "12-"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/tykj/nativelib/MainActivity;->token:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkIsRoot()Z
    .locals 1

    .line 281
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 284
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkRoot()Z

    move-result v0

    return v0
.end method

.method public static checkRoot()V
    .locals 3

    .line 255
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 258
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkRoot()Z

    move-result v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "10-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkSignature(Ljava/lang/String;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 96
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature(Ljava/lang/String;)Z

    move-result p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkSignature2(Ljava/lang/String;)V
    .locals 2

    .line 102
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 105
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0, p0}, Lcom/tykj/nativelib/NativeLib;->checkSignature2(Ljava/lang/String;)Z

    move-result p0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static checkXposed()V
    .locals 3

    .line 264
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/tykj/nativelib/NativeLib;

    invoke-direct {v0}, Lcom/tykj/nativelib/NativeLib;-><init>()V

    sput-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    .line 267
    :cond_0
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    invoke-virtual {v0}, Lcom/tykj/nativelib/NativeLib;->checkXposed()Z

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/nativelib/MainActivity;->DefenderCheckResult(Ljava/lang/String;)V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UTF-8"

    .line 543
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 544
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/CBC/PKCS5PADDING"

    .line 546
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x1

    .line 547
    invoke-virtual {p0, v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 549
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 550
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 552
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 390
    sget-object v0, Lcom/tykj/nativelib/MainActivity;->cv:Lcom/tykj/nativelib/NativeLib;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tykj/nativelib/NativeLib;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 391
    sget-object p1, Lcom/tykj/nativelib/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/tykj/nativelib/MainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static md5Has(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 515
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 518
    invoke-static {p0}, Lcom/tykj/nativelib/MainActivity;->byteToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
