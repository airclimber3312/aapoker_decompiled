.class public Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;
.super Landroid/app/Activity;
.source "MediaProjectionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalScreenCaptureAssistantActivity"
.end annotation


# static fields
.field public static final MEDIA_PROJECTION_REQUEST_CODE:I = 0x3e9


# instance fields
.field mgrWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc2/extensions/MediaProjectionMgr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fixOrientation()Z
    .locals 5

    const/4 v0, 0x0

    .line 257
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "mActivityInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 259
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    const/4 v4, -0x1

    .line 260
    iput v4, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private request1Pixel(Landroid/app/Activity;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x33

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 282
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 284
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    .line 285
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 286
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 271
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->mgrWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p2, p3}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->onRequestResult(ILandroid/content/Intent;)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "MediaProjectionMgr"

    if-ne v0, v1, :cond_0

    .line 232
    invoke-direct {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->fixOrientation()Z

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fixOrientation when Oren, result = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->requestWindowFeature(I)Z

    .line 237
    invoke-direct {p0, p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->request1Pixel(Landroid/app/Activity;)V

    .line 239
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object p1

    if-nez p1, :cond_1

    .line 241
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->finish()V

    return-void

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->mgrWeakReference:Ljava/lang/ref/WeakReference;

    .line 245
    invoke-static {p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$100(Lio/agora/rtc2/extensions/MediaProjectionMgr;)Landroid/media/projection/MediaProjectionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "start screen capture request"

    .line 246
    invoke-static {v2, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    .line 247
    invoke-virtual {p0, p1, v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 249
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$200()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 251
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$200()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

    move-result-object p1

    invoke-interface {p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;->screenCaptureRequest()V

    :cond_2
    return-void
.end method
