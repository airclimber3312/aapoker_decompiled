.class public Lio/agora/rtc2/extensions/MediaProjectionMgr;
.super Ljava/lang/Object;
.source "MediaProjectionMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;,
        Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjectionMgr"

.field private static captureActionListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

.field private static final displayChangeRunnable:Ljava/lang/Runnable;

.field private static instance:Lio/agora/rtc2/extensions/MediaProjectionMgr;

.field private static screenCaptureConfigFactory:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;


# instance fields
.field private final configurationChangedListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final requestListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requesting:Z

.field private resultCode:I

.field private resultData:Landroid/content/Intent;

.field private volatile serviceBinded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 431
    new-instance v0, Lio/agora/rtc2/extensions/MediaProjectionMgr$1;

    invoke-direct {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$1;-><init>()V

    sput-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->displayChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requesting:Z

    .line 129
    iput-boolean v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->serviceBinded:Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->resultData:Landroid/content/Intent;

    .line 137
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestListenerRef:Ljava/lang/ref/WeakReference;

    .line 139
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->configurationChangedListenerRef:Ljava/lang/ref/WeakReference;

    .line 141
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ScreenCapture"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance p2, Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->handlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 144
    sput-object p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->instance:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    return-void
.end method

.method static synthetic access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;
    .locals 1

    .line 48
    sget-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->instance:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    return-object v0
.end method

.method static synthetic access$100(Lio/agora/rtc2/extensions/MediaProjectionMgr;)Landroid/media/projection/MediaProjectionManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    return-object p0
.end method

.method static synthetic access$200()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;
    .locals 1

    .line 48
    sget-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->captureActionListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

    return-object v0
.end method

.method static synthetic access$300(Lio/agora/rtc2/extensions/MediaProjectionMgr;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 48
    iget-object p0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->configurationChangedListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 48
    invoke-static {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->executeDisplayChange(I)V

    return-void
.end method

.method static synthetic access$500()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;
    .locals 1

    .line 48
    sget-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->screenCaptureConfigFactory:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;

    return-object v0
.end method

.method private static executeDisplayChange(I)V
    .locals 4

    .line 446
    sget-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->instance:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->handlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 453
    :cond_1
    sget-object v1, Lio/agora/rtc2/extensions/MediaProjectionMgr;->displayChangeRunnable:Ljava/lang/Runnable;

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static getContext()Landroid/content/Context;
    .locals 2

    .line 149
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCaptureActionListener(Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;)V
    .locals 0

    .line 65
    sput-object p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->captureActionListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

    return-void
.end method

.method public static setConfigFactory(Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;)V
    .locals 0

    .line 109
    sput-object p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->screenCaptureConfigFactory:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    .line 189
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 190
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->configurationChangedListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 191
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->handlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->handlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 194
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->handlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 195
    iget-boolean v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->serviceBinded:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x0

    .line 198
    sput-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->instance:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    .line 200
    sget-object v0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->captureActionListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;

    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureActionListener;->dispose()V

    :cond_2
    return-void
.end method

.method onRequestResult(ILandroid/content/Intent;)V
    .locals 3

    const-string v0, "MediaProjectionMgr"

    const-string v1, "onRequestSuccess()"

    .line 173
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;

    const/4 v1, 0x0

    .line 175
    iput-boolean v1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requesting:Z

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 183
    iput p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->resultCode:I

    .line 184
    iput-object p2, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->resultData:Landroid/content/Intent;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "MediaProjectionMgr"

    const-string p2, "local onServiceConnected"

    .line 207
    invoke-static {p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;

    const/4 p2, 0x1

    .line 210
    iput-boolean p2, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->serviceBinded:Z

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p2, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->projectionManager:Landroid/media/projection/MediaProjectionManager;

    iget v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->resultCode:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->resultData:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p2

    .line 215
    invoke-interface {p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;->onProjectionResult(Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MediaProjectionMgr"

    const-string v0, "local onServiceDisconnected"

    .line 220
    invoke-static {p1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->serviceBinded:Z

    return-void
.end method

.method requestPermission()V
    .locals 3

    const-string v0, "requestPermission()"

    const-string v1, "MediaProjectionMgr"

    .line 157
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requesting:Z

    if-eqz v0, :cond_0

    const-string v0, "mediaProjection request already sent. just waiting..."

    .line 159
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requesting:Z

    .line 164
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenCaptureAssistantActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
