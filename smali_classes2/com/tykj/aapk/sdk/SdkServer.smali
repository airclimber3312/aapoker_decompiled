.class public Lcom/tykj/aapk/sdk/SdkServer;
.super Ljava/lang/Object;
.source "SdkServer.java"


# static fields
.field public static final AWAKEURL:I = 0x2

.field public static final FaceCheckFailed:I = 0x8

.field public static final FaceCheckSuccess:I = 0x7

.field public static final GPS:I = 0x3

.field public static final IMHISTORYMES:I = 0x12c

.field public static final IMMES:I = 0x64

.field public static final IMOPERATEMES:I = 0x65

.field public static final IMSERVERMES:I = 0xc8

.field public static final OPENIMG:I = 0x4

.field public static final PHONESTATE:I = 0x5

.field public static final SAFEAREA:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SDKService"

.field static activity:Landroid/app/Activity;

.field static context:Landroid/content/Context;

.field static headPic:Ljava/lang/String;

.field static imServer:Lcom/tykj/aapk/sdk/IMServer;

.field static inputActivity:Landroid/app/Activity;

.field static keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

.field static locationService:Lcom/tykj/aapk/sdk/LocationService;

.field static logList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static m:Landroid/os/Handler;

.field static nick:Ljava/lang/String;

.field static phoneInfoService:Lcom/tykj/aapk/sdk/PhoneInfoService;

.field private static final rootRelatedDirs:[Ljava/lang/String;

.field static urlAwakeServer:Lcom/tykj/aapk/sdk/UrlAwakeServer;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->m:Landroid/os/Handler;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->logList:Ljava/util/List;

    const-string v1, "/su"

    const-string v2, "/su/bin/su"

    const-string v3, "/sbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/data/local/su"

    const-string v7, "/system/xbin/su"

    const-string v8, "/system/bin/su"

    const-string v9, "/system/sd/xbin/su"

    const-string v10, "/system/bin/failsafe/su"

    const-string v11, "/system/bin/cufsdosck"

    const-string v12, "/system/xbin/cufsdosck"

    const-string v13, "/system/bin/cufsmgr"

    const-string v14, "/system/xbin/cufsmgr"

    const-string v15, "/system/bin/cufaevdd"

    const-string v16, "/system/xbin/cufaevdd"

    const-string v17, "/system/bin/conbb"

    const-string v18, "/system/xbin/conbb"

    .line 433
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->rootRelatedDirs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActPhoto(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SDKService"

    :try_start_0
    const-string/jumbo v1, "\u6253\u5f00\u76f8\u518c"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 524
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "content"

    .line 525
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v3, "com.tykj.aapk.sdk.PhotoActivity"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 529
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "\u6253\u5f00\u76f8\u518c\u5931\u8d25"

    .line 532
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static ApplyJoinGroup(Ljava/lang/String;)V
    .locals 1

    .line 181
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/IMServer;->ApplyJoinGroup(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static CallByUnity(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SDKService"

    const-string v1, "error request.type = "

    const-string v2, "CallByUnity"

    .line 315
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    const-class v2, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;

    .line 321
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;->getType()I

    .line 323
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;->getType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;->getType()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->OpenFaceCheckView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_1
    invoke-static {}, Lcom/tykj/aapk/sdk/SdkServer;->GetPhoneState()V

    goto/16 :goto_1

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRequest;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->ActPhoto(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 360
    :cond_3
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->locationService:Lcom/tykj/aapk/sdk/LocationService;

    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/LocationService;->startLocation()V

    goto/16 :goto_1

    .line 355
    :cond_4
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->urlAwakeServer:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    if-nez p0, :cond_5

    new-instance p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;

    invoke-direct {p0}, Lcom/tykj/aapk/sdk/UrlAwakeServer;-><init>()V

    sput-object p0, Lcom/tykj/aapk/sdk/SdkServer;->urlAwakeServer:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    .line 356
    :cond_5
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->urlAwakeServer:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/UrlAwakeServer;->register(Landroid/app/Activity;)V

    .line 357
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->urlAwakeServer:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/UrlAwakeServer;->OnPraseUrl()V

    goto :goto_1

    .line 326
    :cond_6
    new-instance p0, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;

    invoke-direct {p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;-><init>()V

    .line 327
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 328
    sget-object v2, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 329
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;->setWidth(I)V

    .line 332
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/notch/HwNotchSizeUtil;->hasNotchInScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 334
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/notch/HwNotchSizeUtil;->getNotchSize(Landroid/content/Context;)[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;->setTop(I)V

    goto :goto_0

    .line 335
    :cond_7
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/notch/XiaomiNotchSizeUtil;->getNotchStatusbarheight(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_8

    add-int/2addr v1, v3

    .line 338
    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;->setTop(I)V

    goto :goto_0

    .line 343
    :cond_8
    invoke-static {}, Lcom/tykj/aapk/sdk/notch/OppoNotchSizeUtil;->isVivoNotch()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x1c

    .line 345
    invoke-virtual {p0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalSafeArea;->setTop(I)V

    .line 347
    :cond_9
    :goto_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 348
    new-instance v1, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    .line 349
    invoke-virtual {v1, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 350
    invoke-virtual {v1, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 351
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error CallByUnity e :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static CallRespond(Ljava/lang/String;)V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallRespond :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NativeManager"

    const-string v1, "NativeCallUnity"

    .line 388
    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static CloseInputMethod()V
    .locals 4

    const-string/jumbo v0, "\u624b\u673a\u8bbe\u5907\u76f8\u5173"

    :try_start_0
    const-string/jumbo v1, "\u5173\u95ed\u8f93\u5165\u68460"

    .line 746
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u5173\u95ed\u8f93\u5165\u68461"

    .line 751
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 754
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    const-string/jumbo v1, "\u5173\u95ed\u8f93\u5165\u684600===2"

    .line 762
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDKService"

    .line 778
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static ContinueRecord()V
    .locals 1

    .line 234
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->continued()V

    return-void
.end method

.method public static FaceCheckFailed(Ljava/lang/String;)V
    .locals 2

    .line 493
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v1, 0x8

    .line 494
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 495
    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 496
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static FaceCheckSuccess(Ljava/lang/String;)V
    .locals 2

    .line 485
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/4 v1, 0x7

    .line 486
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 487
    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 488
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static GetImState()I
    .locals 1

    .line 157
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/IMServer;->GetImState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static GetImgPath(Ljava/lang/String;)V
    .locals 2

    .line 477
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/4 v1, 0x4

    .line 478
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 479
    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 480
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static GetPhoneState()V
    .locals 3

    .line 421
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->phoneInfoService:Lcom/tykj/aapk/sdk/PhoneInfoService;

    iget-object v0, v0, Lcom/tykj/aapk/sdk/PhoneInfoService;->phoneState:Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v1, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/4 v2, 0x5

    .line 423
    invoke-virtual {v1, v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 424
    invoke-virtual {v1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 425
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static GetUrlInfo(Ljava/lang/String;)V
    .locals 2

    .line 409
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/4 v1, 0x2

    .line 410
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 411
    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 412
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public static IMGetHistoryInfo(Ljava/lang/String;)V
    .locals 1

    .line 787
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/IMServer;->IMGetHistoryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static IMLeaveConversation()V
    .locals 1

    .line 195
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/IMServer;->LeaveConversation()V

    :cond_0
    return-void
.end method

.method public static IMLogin(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const-string v0, "IMTAG"

    const-string v1, "im IMLogin \u8c03\u7528"

    .line 139
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/IMServer;-><init>()V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    .line 143
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/tykj/aapk/sdk/IMServer;->Init(Landroid/app/Activity;ILjava/lang/String;)V

    .line 145
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "IMLogin appId = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SDKService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object p2, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {p2, p0, p1}, Lcom/tykj/aapk/sdk/IMServer;->Login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static IMLoginOut()V
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "IMLoginOut"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/IMServer;->LoginOut()V

    :cond_0
    return-void
.end method

.method public static IMSendMessageCustom(Ljava/lang/String;)V
    .locals 3

    .line 163
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    .line 164
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->nick:Ljava/lang/String;

    sget-object v2, Lcom/tykj/aapk/sdk/SdkServer;->headPic:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/tykj/aapk/sdk/IMServer;->IMSendMessageCustom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static IMSendMessageText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 170
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    .line 171
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->nick:Ljava/lang/String;

    sget-object v2, Lcom/tykj/aapk/sdk/SdkServer;->headPic:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/tykj/aapk/sdk/IMServer;->IMSendMessageText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static IMSendSoundMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 176
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 177
    invoke-virtual/range {v0 .. v6}, Lcom/tykj/aapk/sdk/IMServer;->SendSoundMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static IMSetConversation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "RecordFiles"

    .line 187
    invoke-static {v0}, Lcom/tykj/aapk/sdk/voice/FileUtil;->clearAllFile(Ljava/lang/String;)V

    .line 188
    sput-object p1, Lcom/tykj/aapk/sdk/SdkServer;->nick:Ljava/lang/String;

    .line 189
    sput-object p2, Lcom/tykj/aapk/sdk/SdkServer;->headPic:Ljava/lang/String;

    .line 190
    sget-object p1, Lcom/tykj/aapk/sdk/SdkServer;->imServer:Lcom/tykj/aapk/sdk/IMServer;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1, p0}, Lcom/tykj/aapk/sdk/IMServer;->SetConversation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static Init()V
    .locals 4

    const-string v0, "SDKService"

    const-string v1, "Init"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    .line 112
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/tykj/aapk/sdk/PhoneInfoService;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tykj/aapk/sdk/PhoneInfoService;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->phoneInfoService:Lcom/tykj/aapk/sdk/PhoneInfoService;

    .line 120
    new-instance v0, Lcom/tykj/aapk/sdk/SdkServer$1;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/SdkServer$1;-><init>()V

    .line 133
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static InitGPS()V
    .locals 2

    .line 261
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->locationService:Lcom/tykj/aapk/sdk/LocationService;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/tykj/aapk/sdk/LocationService;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tykj/aapk/sdk/LocationService;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->locationService:Lcom/tykj/aapk/sdk/LocationService;

    .line 265
    :cond_0
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->locationService:Lcom/tykj/aapk/sdk/LocationService;

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/LocationService;->initLocation()V

    return-void
.end method

.method public static InstallApk(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SDKService"

    :try_start_0
    const-string v1, "InstallApk"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 547
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "content"

    .line 548
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v3, "com.tykj.aapk.sdk.ApkActServer"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "InstallApk \u5931\u8d25"

    .line 555
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static IsHook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsPlayingVoice()Z
    .locals 1

    .line 251
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->getInstance()Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public static IsRoot()Z
    .locals 1

    .line 429
    invoke-static {}, Lcom/tykj/aapk/sdk/SdkServer;->hasRootPrivilege()Z

    move-result v0

    return v0
.end method

.method public static KeFuInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "KeFuInit"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/tykj/aapk/sdk/KeFuServer;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/KeFuServer;-><init>()V

    sput-object v0, Lcom/tykj/aapk/sdk/SdkServer;->keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

    .line 274
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/tykj/aapk/sdk/KeFuServer;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static KeFuLogin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "KeFuLogin"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

    invoke-virtual {v0, p0, p1}, Lcom/tykj/aapk/sdk/KeFuServer;->Login(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static KeFuLoginOut()V
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "KeFuLoginOut"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/KeFuServer;->LoginOut()V

    return-void
.end method

.method public static KillProcess()V
    .locals 1

    .line 538
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 539
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "%s:%s"

    .line 704
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "NativeManager"

    const-string v6, "NativeCallUnity"

    .line 705
    invoke-static {v5, v6, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->logList:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static LogUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s:%s"

    .line 711
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NativeManager"

    const-string v0, "SDKCallUnity"

    .line 712
    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OpenFaceCheckView(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SDKService"

    :try_start_0
    const-string/jumbo v1, "\u6253\u5f00\u4eba\u8138\u8bc6\u522b"

    .line 503
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 505
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "content"

    .line 506
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v3, "com.tykj.aapk.sdk.FaceCheckActivity"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 510
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6253\u5f00\u4eba\u8138\u8bc6\u522b\u754c\u9762\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static PauseRecord()V
    .locals 1

    .line 229
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->pause()V

    return-void
.end method

.method public static PlayVoice(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "PlayVoice-------------------------"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->getInstance()Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->start(Ljava/lang/String;)V

    return-void
.end method

.method public static SaveBitmapImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Make Picture success,Please find image in "

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 575
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 576
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 578
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 582
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 583
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, p1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 584
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 585
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 586
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 589
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 593
    :goto_0
    sget-object p1, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 594
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 593
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return p0
.end method

.method public static SaveImage([BLjava/lang/String;)Z
    .locals 3

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "IMServer"

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "\u4f7f\u7528\u5b89\u535311\u7248\u672c\u4ee5\u4e0a\u7684\u65b9\u6cd5\u4fdd\u5b58\u56fe\u7247\u5230\u76f8\u518c"

    .line 607
    invoke-static {v2, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {p0, p1}, Lcom/tykj/aapk/sdk/SdkServer;->newSaveImage([BLjava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u4f7f\u7528\u5b89\u535311\u7248\u672c\u4ee5\u4e0b\u7684\u65b9\u6cd5\u4fdd\u5b58\u56fe\u7247\u5230\u76f8\u518c"

    .line 610
    invoke-static {v2, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {p0, p1}, Lcom/tykj/aapk/sdk/SdkServer;->oldSaveImage([BLjava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static SetVolume(F)V
    .locals 1

    .line 256
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->getInstance()Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->setVolume(F)V

    return-void
.end method

.method public static StartChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "StartChat"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-class v0, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;

    .line 294
    new-instance v0, Lcn/xiaoneng/coreapi/ChatParamsBody;

    invoke-direct {v0}, Lcn/xiaoneng/coreapi/ChatParamsBody;-><init>()V

    .line 295
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getErpParam()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->erpParam:Ljava/lang/String;

    .line 296
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getMatchstr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->matchstr:Ljava/lang/String;

    .line 297
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getStartPageTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->startPageTitle:Ljava/lang/String;

    .line 298
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getStartPageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->startPageUrl:Ljava/lang/String;

    .line 299
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getHeadurl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->headurl:Ljava/lang/String;

    .line 300
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getHeadlocaldir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->headlocaldir:Ljava/lang/String;

    .line 301
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getClickurltoshow_type()I

    move-result v1

    iput v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->clickurltoshow_type:I

    .line 302
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getChatWindowClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->chatWindowClassName:Ljava/lang/String;

    .line 303
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getKfuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->kfuid:Ljava/lang/String;

    .line 304
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getKfname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->kfname:Ljava/lang/String;

    .line 305
    invoke-virtual {p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalChatParamsBody;->getSendMsg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/xiaoneng/coreapi/ChatParamsBody;->sendMsg:Ljava/lang/String;

    .line 306
    sget-object p2, Lcom/tykj/aapk/sdk/SdkServer;->keFuServer:Lcom/tykj/aapk/sdk/KeFuServer;

    invoke-virtual {p2, p0, p1, v0}, Lcom/tykj/aapk/sdk/KeFuServer;->StartChat(Ljava/lang/String;Ljava/lang/String;Lcn/xiaoneng/coreapi/ChatParamsBody;)I

    move-result p0

    return p0
.end method

.method public static StartRecord()Z
    .locals 1

    .line 203
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->start()Z

    move-result v0

    return v0
.end method

.method public static StopRecord(ZLjava/lang/String;)J
    .locals 11

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u51c6\u5907\u53d1\u9001\u8bed\u97f3 isSend\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--receiver_userID-:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--nick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--headPic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->headPic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMServer"

    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StopRecord-------------------------"

    const-string v2, "SDKService"

    .line 210
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->stop()J

    move-result-wide v9

    .line 212
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getRecordPath()Ljava/lang/String;

    move-result-object v3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "recordPath = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-lez v0, :cond_1

    .line 215
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->combine()V

    if-eqz p0, :cond_0

    const-string/jumbo p0, "\u51c6\u5907\u53d1\u9001\u8bed\u97f3  "

    .line 218
    invoke-static {v1, p0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v7, Lcom/tykj/aapk/sdk/SdkServer;->nick:Ljava/lang/String;

    sget-object v8, Lcom/tykj/aapk/sdk/SdkServer;->headPic:Ljava/lang/String;

    move-wide v4, v9

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcom/tykj/aapk/sdk/SdkServer;->IMSendSoundMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-wide v4

    :cond_1
    :goto_0
    return-wide v9
.end method

.method public static StopVoice()V
    .locals 2

    const-string v0, "SDKService"

    const-string v1, "StopVoice-------------------------"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->getInstance()Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->stop()V

    return-void
.end method

.method public static hasRootPrivilege()Z
    .locals 7

    .line 445
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->rootRelatedDirs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 447
    aget-object v5, v0, v3

    .line 448
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 453
    :goto_1
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v3, "test-keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public static isSimulator()Z
    .locals 2

    .line 458
    sget-object v0, Lcom/tykj/aapk/sdk/SdkServer;->phoneInfoService:Lcom/tykj/aapk/sdk/PhoneInfoService;

    sget-object v1, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/PhoneInfoService;->isSimulator(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static newSaveImage([BLjava/lang/String;)Z
    .locals 5

    const-string v0, "Make Picture success,Please find image in "

    .line 658
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Camera"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 668
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 673
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 674
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 680
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 681
    array-length p1, p0

    invoke-virtual {v4, p0, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 682
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 683
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 686
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    :goto_0
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 691
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v2
.end method

.method private static oldSaveImage([BLjava/lang/String;)Z
    .locals 5

    const-string v0, "Make Picture success,Please find image in "

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 632
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 633
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v3, 0x0

    .line 639
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 640
    array-length p1, p0

    invoke-virtual {v4, p0, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 641
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 642
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 645
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    :goto_0
    sget-object p0, Lcom/tykj/aapk/sdk/SdkServer;->context:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 650
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 649
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v3
.end method

.method public static sHA1(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 718
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 719
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    const-string v1, "SHA1"

    .line 720
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 721
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 722
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 723
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 724
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 725
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_0

    const-string v4, "0"

    .line 727
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    .line 729
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 732
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 736
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 734
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
