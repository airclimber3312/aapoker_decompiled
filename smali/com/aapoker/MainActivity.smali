.class public Lcom/aapoker/MainActivity;
.super Lcom/aapoker/BaseMainActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aapoker/MainActivity$h;,
        Lcom/aapoker/MainActivity$g;
    }
.end annotation


# static fields
.field public static final FaceCheckFailed:I = 0x8

.field public static final FaceCheckSuccess:I = 0x7

.field public static final GETIMG:I = 0xa

.field private static final RECONNECT_TIMER_MAX_TIME_MILLISECONDS:J = 0xdbba0L

.field private static final RECONNECT_TIMER_START_MILLISECONDS:J = 0x3e8L

.field private static TAG:Ljava/lang/String; = "AAPoker"

.field public static b:Lcom/aapoker/MainActivity$h;

.field private static final handler:Landroid/os/Handler;

.field private static locationActivityManager:Ld;


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private billingSetupComplete:Z

.field private buyProductId:Ljava/lang/String;

.field private cacheRequestList:[Ljava/lang/String;

.field private m_isConsumable:Z

.field private m_orderId:Ljava/lang/String;

.field private reconnectMilliseconds:J

.field private skuDetailsLiveDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AvsVERXJDLHL7errH6pwkTwcyqw(Lcom/aapoker/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/aapoker/MainActivity;->d()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/aapoker/MainActivity;->handler:Landroid/os/Handler;

    .line 628
    new-instance v0, Lcom/aapoker/MainActivity$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aapoker/MainActivity$h;-><init>(Lcom/aapoker/MainActivity$a;)V

    sput-object v0, Lcom/aapoker/MainActivity;->b:Lcom/aapoker/MainActivity$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/aapoker/BaseMainActivity;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aapoker/MainActivity;->skuDetailsLiveDataMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/aapoker/MainActivity;->billingSetupComplete:Z

    const-wide/16 v0, 0x3e8

    .line 24
    iput-wide v0, p0, Lcom/aapoker/MainActivity;->reconnectMilliseconds:J

    return-void
.end method

.method public static AddEmulatorPackageName()V
    .locals 0

    .line 1
    invoke-static {}, Lc;->a()V

    return-void
.end method

.method public static CallRespond(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallRespond :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NativeCallUnity"

    .line 2
    invoke-static {v0, p0}, Lcom/aapoker/BaseMainActivity;->SendUnityMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static CheckHaveXposed()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static FaceCheckFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static FaceCheckSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static GetAPILevel()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static GetGPSInfo()V
    .locals 2

    const-string v0, "GPSINfo"

    const-string v1, "getgpsInfo"

    .line 1
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/aapoker/MainActivity;->locationActivityManager:Ld;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ld;

    invoke-direct {v0}, Ld;-><init>()V

    sput-object v0, Lcom/aapoker/MainActivity;->locationActivityManager:Ld;

    .line 5
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld;->a(Landroid/content/Context;)V

    .line 8
    :cond_0
    sget-object v0, Lcom/aapoker/MainActivity;->locationActivityManager:Ld;

    invoke-virtual {v0}, Ld;->a()V

    return-void
.end method

.method public static GetHostId()Ljava/lang/String;
    .locals 6

    const-string v0, "phone.mechineid:"

    const-string v1, "ro.product.cmid:"

    const-string v2, ""

    :try_start_0
    const-string v3, "ro.product.cmid"

    .line 1
    invoke-static {v3}, Lcom/aapoker/MainActivity;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    sget-object v4, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "phone.mechineid"

    .line 4
    invoke-static {v1}, Lcom/aapoker/MainActivity;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :try_start_2
    sget-object v1, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    sget-object v1, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetHostId-Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v3, v2

    :cond_1
    return-object v3
.end method

.method public static GetImgPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static InitBugly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static IsEmulator()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsEmulatorSecond()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static OpenFaceCheckView(Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6253\u5f00\u4eba\u8138\u8bc6\u522b"

    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "languageType"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string p1, "com.aapoker.FaceCheckActivity"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    sget-object p1, Lcom/aapoker/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6253\u5f00\u4eba\u8138\u8bc6\u522b\u754c\u9762\u5f02\u5e38\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static OpenGallery()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "com.aapoker.GalleryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static OpenSystemSetPanel()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static PostBuglyException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, La;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static SendLogUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static StartGPSReciver()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/aapoker/MainActivity;->b:Lcom/aapoker/MainActivity$h;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static StopGPSReciver()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/aapoker/MainActivity;->b:Lcom/aapoker/MainActivity$h;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static TestCrash(I)V
    .locals 1

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    invoke-virtual {v0, p0}, La;->a(I)V

    return-void
.end method

.method public static UpdateLogLevel(I)V
    .locals 1

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    invoke-virtual {v0, p0}, La;->b(I)V

    return-void
.end method

.method public static UpdateUniqueId(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, La;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static UpdateUserId(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, La;->b()La;

    move-result-object v0

    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, La;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aapoker/MainActivity;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;)Ljava/util/Map;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/aapoker/MainActivity;->skuDetailsLiveDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/aapoker/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;Ljava/lang/String;ZLcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aapoker/MainActivity;->a(Ljava/lang/String;ZLcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/aapoker/MainActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/aapoker/MainActivity;[Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/aapoker/MainActivity;->b([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/aapoker/MainActivity;->c()V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 8
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x191

    const-string v2, "Permission"

    if-nez v0, :cond_0

    const-string v0, "Location permission is granted"

    .line 10
    invoke-static {v2, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Location permission is not granted"

    .line 16
    invoke-static {v2, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lc;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 7
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    .line 8
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v4

    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    .line 14
    throw p0
.end method


# virtual methods
.method public IsIAPSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UnKnown"

    return-object p1

    :pswitch_0
    const-string p1, "ITEM_NOT_OWNED"

    return-object p1

    :pswitch_1
    const-string p1, "ITEM_ALREADY_OWNED"

    return-object p1

    :pswitch_2
    const-string p1, "ERROR"

    return-object p1

    :pswitch_3
    const-string p1, "DEVELOPER_ERROR"

    return-object p1

    :pswitch_4
    const-string p1, "ITEM_UNAVAILABLE"

    return-object p1

    :pswitch_5
    const-string p1, "BILLING_UNAVAILABLE"

    return-object p1

    :pswitch_6
    const-string p1, "SERVICE_UNAVAILABLE"

    return-object p1

    :pswitch_7
    const-string p1, "USER_CANCELED"

    return-object p1

    :pswitch_8
    const-string p1, "OK"

    return-object p1

    :pswitch_9
    const-string p1, "SERVICE_DISCONNECTED"

    return-object p1

    :pswitch_a
    const-string p1, "FEATURE_NOT_SUPPORTED"

    return-object p1

    :pswitch_b
    const-string p1, "SERVICE_TIMEOUT"

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-super {p0}, Lcom/aapoker/BaseMainActivity;->a()V

    .line 30
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/aapoker/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/aapoker/MainActivity$b;-><init>(Lcom/aapoker/MainActivity;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 118
    iget-object p1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    if-eqz p1, :cond_8

    const/4 p2, 0x0

    .line 120
    iput-object p2, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    .line 121
    iget-boolean v0, p0, Lcom/aapoker/MainActivity;->m_isConsumable:Z

    if-eqz v0, :cond_6

    if-eqz p3, :cond_3

    .line 125
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 126
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 130
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_3
    move-object v0, p2

    :cond_4
    if-nez p2, :cond_5

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unknown purchaseToken:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aapoker/MainActivity;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/aapoker/BaseMainActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Lcom/aapoker/BaseMainActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 150
    invoke-virtual {p0, p2}, Lcom/aapoker/MainActivity;->e(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/aapoker/MainActivity;->skuDetailsLiveDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 94
    new-instance v1, Lcom/aapoker/MainActivity$f;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/aapoker/MainActivity$f;-><init>(Lcom/aapoker/MainActivity;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/aapoker/MainActivity;->a([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/aapoker/MainActivity;->a(Ljava/lang/String;ZLcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 103
    iput-object p1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    .line 104
    iput-boolean p2, p0, Lcom/aapoker/MainActivity;->m_isConsumable:Z

    .line 105
    iput-object p4, p0, Lcom/aapoker/MainActivity;->m_orderId:Ljava/lang/String;

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "orderId:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_0

    .line 115
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not find SkuDetails:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/aapoker/BaseMainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\u672a\u8bf7\u6c42\u5546\u54c1\u6570\u636e\uff0c\u8bf7\u5148\u8bf7\u6c42:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/aapoker/BaseMainActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p1, p3, p2}, Lcom/aapoker/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/aapoker/MainActivity$e;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/aapoker/MainActivity$e;-><init>(Lcom/aapoker/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v2, p0, Lcom/aapoker/MainActivity;->cacheRequestList:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_5

    :goto_1
    if-ge v3, v2, :cond_5

    .line 49
    iget-object v4, p0, Lcom/aapoker/MainActivity;->cacheRequestList:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 50
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 53
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u672a\u627e\u5230\u8be5\u4ea7\u54c1\u4fe1\u606f:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 64
    :cond_3
    iget-object v5, p0, Lcom/aapoker/MainActivity;->skuDetailsLiveDataMap:Ljava/util/Map;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    .line 68
    new-instance v7, Lg;

    invoke-direct {v7}, Lg;-><init>()V

    .line 69
    iput-object v4, v7, Lg;->a:Ljava/lang/String;

    .line 70
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lg;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lg;->c:Ljava/lang/String;

    .line 72
    iput-object v5, v7, Lg;->d:Ljava/lang/String;

    .line 73
    iput-object v5, v7, Lg;->e:Ljava/lang/String;

    .line 74
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lg;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lg;->g:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/aapoker/BaseMainActivity;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/aapoker/BaseMainActivity;->a([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/aapoker/MainActivity;->a([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/aapoker/MainActivity;->b([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/aapoker/MainActivity$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/aapoker/MainActivity$c;-><init>(Lcom/aapoker/MainActivity;[Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :goto_0
    return-void
.end method

.method public final b([Ljava/lang/String;Lcom/aapoker/MainActivity$g;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iput-object p1, p0, Lcom/aapoker/MainActivity;->cacheRequestList:[Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 8
    iget-object v0, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v1, Lcom/aapoker/MainActivity$d;

    invoke-direct {v1, p0, p2}, Lcom/aapoker/MainActivity$d;-><init>(Lcom/aapoker/MainActivity;Lcom/aapoker/MainActivity$g;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/aapoker/BaseMainActivity;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "Please put your app\'s public key."

    invoke-virtual {p0, v0, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/aapoker/BaseMainActivity;->CurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/aapoker/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 7
    new-instance v0, Lcom/aapoker/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/aapoker/MainActivity$a;-><init>(Lcom/aapoker/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    sget-object v0, Lcom/aapoker/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/aapoker/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/aapoker/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aapoker/MainActivity;)V

    iget-wide v2, p0, Lcom/aapoker/MainActivity;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-wide v0, p0, Lcom/aapoker/MainActivity;->reconnectMilliseconds:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aapoker/MainActivity;->reconnectMilliseconds:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/aapoker/BaseMainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error purchasing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 1

    const-string v0, "onBillingServiceDisconnected"

    .line 1
    invoke-virtual {p0, v0}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/aapoker/MainActivity;->billingSetupComplete:Z

    .line 3
    invoke-virtual {p0}, Lcom/aapoker/MainActivity;->e()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBillingSetupFinished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/aapoker/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/aapoker/MainActivity;->e()V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing Service Unavailable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 19
    iput-wide v0, p0, Lcom/aapoker/MainActivity;->reconnectMilliseconds:J

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/aapoker/MainActivity;->billingSetupComplete:Z

    :goto_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BillingResult ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aapoker/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/aapoker/BaseMainActivity;->PrintLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/aapoker/MainActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/aapoker/MainActivity;->buyProductId:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/aapoker/BaseMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1, p2}, Lcom/aapoker/MainActivity;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
