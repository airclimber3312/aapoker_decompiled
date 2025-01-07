.class public Lcom/netease/nis/alivedetected/AliveDetector;
.super Ljava/lang/Object;
.source "AliveDetector.java"

# interfaces
.implements Lcom/netease/nis/alivedetected/d;


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "3.2.3"

.field public static final SENSITIVITY_EASY:I = 0x0

.field public static final SENSITIVITY_HARD:I = 0x2

.field public static final SENSITIVITY_NORMAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AliveDetector"

.field public static final a:Landroid/os/Handler;

.field public static volatile b:Lcom/netease/nis/alivedetected/AliveDetector;

.field public static isAllowedUploadInfo:Z

.field public static mToken:Ljava/lang/String;


# instance fields
.field public c:I

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public volatile f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public volatile i:Z

.field public j:Ljava/lang/String;

.field public k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

.field public l:Lcom/netease/nis/alivedetected/NISCameraPreview;

.field public m:Lcom/netease/nis/alivedetected/DetectedListener;

.field public n:Lcom/netease/nis/alivedetected/a;

.field public o:Ljava/util/Timer;

.field public p:Ljava/util/TimerTask;

.field public q:J

.field public r:Z

.field public s:Lcom/netease/nis/alivedetected/ActionType;

.field public volatile t:Z

.field public volatile u:Z

.field public final v:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$HVEKbNXu_I5ZHmrcQTCLGl8KCVU(Lcom/netease/nis/alivedetected/AliveDetector;Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nis/alivedetected/AliveDetector;->a(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VirTQi27CmF8i5ddSySVh4eKi8g(Lcom/netease/nis/alivedetected/AliveDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$Za_edEhScrfiV-KV2ns4LdDTS1s(Lcom/netease/nis/alivedetected/AliveDetector;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nis/alivedetected/AliveDetector;->a(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTWsAhHL5xl58YOmc1yOk9mk_ps(Lcom/netease/nis/alivedetected/AliveDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$v0IIdG7swUqvTL-CWFIiapPt_-U(Lcom/netease/nis/alivedetected/AliveDetector;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nis/alivedetected/AliveDetector;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/netease/nis/alivedetected/AliveDetector;->isAllowedUploadInfo:Z

    const-string v0, "c++_shared"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "nenn"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "alive_detected"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->c:I

    const-wide/16 v1, 0x7530

    .line 22
    iput-wide v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->q:J

    .line 23
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->r:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->t:Z

    .line 26
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->u:Z

    const-string v0, "mouthErrorPic.jpg"

    const-string v1, "eyeErrorPic.jpg"

    const-string v2, "frontalErrorPic.jpg"

    const-string v3, "rightErrorPic.jpg"

    const-string v4, "leftErrorPic.jpg"

    .line 27
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->v:[Ljava/lang/String;

    return-void
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const-string p2, "msg\u4e3a\u7a7a"

    :cond_0
    :try_start_1
    sget-object v1, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    const-string/jumbo v1, "\u83b7\u53d6\u914d\u7f6e\u5931\u8d25"

    :cond_1
    :try_start_2
    invoke-interface {v0, p1, p2, v1}, Lcom/netease/nis/alivedetected/DetectedListener;->onError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    .locals 1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/alivedetected/DetectedListener;->onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    invoke-interface {v0, p1}, Lcom/netease/nis/alivedetected/DetectedListener;->onReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/netease/nis/alivedetected/AliveDetector;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->u:Z

    return p1
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    sget-object v1, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/alivedetected/DetectedListener;->onPassed(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    invoke-interface {v0}, Lcom/netease/nis/alivedetected/DetectedListener;->onCheck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/netease/nis/alivedetected/AliveDetector;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->b:Lcom/netease/nis/alivedetected/AliveDetector;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/alivedetected/AliveDetector;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/alivedetected/AliveDetector;->b:Lcom/netease/nis/alivedetected/AliveDetector;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector;

    invoke-direct {v1}, Lcom/netease/nis/alivedetected/AliveDetector;-><init>()V

    sput-object v1, Lcom/netease/nis/alivedetected/AliveDetector;->b:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->b:Lcom/netease/nis/alivedetected/AliveDetector;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->p:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 4
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->p:Ljava/util/TimerTask;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->o:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->o:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-object v1, v0, Lcom/netease/nis/alivedetected/NISCameraPreview;->s:Lcom/netease/nis/alivedetected/d;

    .line 3
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_2

    .line 11
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    .line 13
    :cond_2
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    .line 15
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->g:Ljava/lang/String;

    return-void
.end method

.method public getHdActions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitivity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->c:I

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/netease/nis/alivedetected/NISCameraPreview;Ljava/lang/String;)V
    .locals 8

    const-string v0, "dCrash"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.netease.nis.ocr.OcrScanner"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SDK_VERSION"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "1.1.3"

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "\u9879\u76ee\u4e2d\u63a5\u5165\u7684\u8eab\u4efd\u8bc1\u68c0\u6d4bsdk\u7248\u672c\u4f4e\u4e8e1.1.3\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u5e76\u5347\u7ea7\u7248\u672c"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->t:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 8
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "uuid"

    .line 9
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object p1, v2

    .line 14
    :goto_1
    new-instance p2, Lcom/netease/nis/alivedetected/a;

    invoke-direct {p2, p3, p1}, Lcom/netease/nis/alivedetected/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    const-string v4, "models"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->g:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 17
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "/nis/images"

    if-eqz v5, :cond_3

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 21
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 26
    :cond_4
    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 27
    iget-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->g:Ljava/lang/String;

    .line 28
    new-instance v5, Lcom/netease/nis/alivedetected/e/e;

    invoke-direct {v5, p2, v4, v2}, Lcom/netease/nis/alivedetected/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 34
    sget-boolean p2, Lcom/netease/nis/alivedetected/AliveDetector;->isAllowedUploadInfo:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_8

    .line 35
    sget-object p2, Lcom/netease/nis/alivedetected/e/c$a;->a:Lcom/netease/nis/alivedetected/e/c;

    .line 36
    iget-object v4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    :try_start_1
    sget-boolean v5, Lcom/netease/nis/alivedetected/e/c;->a:Z

    if-nez v5, :cond_6

    .line 154
    iput-object p3, p2, Lcom/netease/nis/alivedetected/e/c;->b:Ljava/lang/String;

    .line 155
    iput-object p1, p2, Lcom/netease/nis/alivedetected/e/c;->c:Ljava/lang/String;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p2, Lcom/netease/nis/alivedetected/e/c;->d:J

    .line 158
    invoke-virtual {v4, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 159
    invoke-virtual {v4, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->initialize(Ljava/lang/String;)V

    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->initialize(Ljava/lang/String;)V

    .line 163
    :goto_3
    sput-boolean v2, Lcom/netease/nis/alivedetected/e/c;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 167
    :cond_6
    :goto_4
    sget-object p2, Lcom/netease/nis/alivedetected/e/h$a;->a:Lcom/netease/nis/alivedetected/e/h;

    .line 168
    iget-object v4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    :try_start_2
    sget-boolean v5, Lcom/netease/nis/alivedetected/e/h;->a:Z

    if-nez v5, :cond_8

    .line 261
    iput-object p3, p2, Lcom/netease/nis/alivedetected/e/h;->b:Ljava/lang/String;

    .line 262
    iput-object p1, p2, Lcom/netease/nis/alivedetected/e/h;->c:Ljava/lang/String;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p2, Lcom/netease/nis/alivedetected/e/h;->d:J

    .line 264
    invoke-virtual {v4, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 265
    invoke-virtual {v4, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 267
    :cond_7
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_5
    sput-boolean v2, Lcom/netease/nis/alivedetected/e/h;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 273
    :cond_8
    :goto_6
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object p1

    .line 274
    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 275
    iput-object p3, p1, Lcom/netease/nis/alivedetected/e/d$b;->a:Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d;->d:Landroid/content/Context;

    .line 321
    sget-boolean p3, Lcom/netease/nis/alivedetected/AliveDetector;->isAllowedUploadInfo:Z

    if-eqz p3, :cond_e

    const-string p3, "connectivity"

    .line 322
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p3

    const-string v0, "wifi"

    if-eqz p3, :cond_c

    .line 323
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 324
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_b

    .line 326
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 327
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/NetworkInterface;

    .line 328
    invoke-virtual {p3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p3

    :cond_a
    invoke-interface {p3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 329
    invoke-interface {p3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 330
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_a

    instance-of v4, v2, Ljava/net/Inet4Address;

    if-eqz v4, :cond_a

    .line 331
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p2

    .line 336
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 339
    :cond_b
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    if-ne p3, v2, :cond_c

    .line 340
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 341
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 343
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p2

    invoke-static {p2}, Lcom/netease/nis/alivedetected/e/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_c
    :goto_7
    iget-object p2, p1, Lcom/netease/nis/alivedetected/e/d;->d:Landroid/content/Context;

    .line 345
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_d

    .line 347
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 349
    iget p3, p2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {p3}, Lcom/netease/nis/alivedetected/e/a;->a(I)Ljava/lang/String;

    move-result-object p3

    .line 350
    iget p2, p2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {p2}, Lcom/netease/nis/alivedetected/e/a;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dns1:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " dns2:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    :cond_d
    iget-object p1, p1, Lcom/netease/nis/alivedetected/e/d;->c:Lcom/netease/nis/alivedetected/e/d$b;

    .line 353
    iput-object v1, p1, Lcom/netease/nis/alivedetected/e/d$b;->d:Ljava/lang/String;

    .line 354
    iput-object v3, p1, Lcom/netease/nis/alivedetected/e/d$b;->e:Ljava/lang/String;

    .line 355
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 356
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b;->f:Ljava/lang/String;

    .line 357
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 358
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b;->g:Ljava/lang/String;

    const-string p2, "3.2.3"

    .line 359
    iput-object p2, p1, Lcom/netease/nis/alivedetected/e/d$b;->h:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->t:Z

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda2;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    return-void
.end method

.method public onGetConfigSuccess(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;)V
    .locals 2

    const-string p3, "0"

    .line 1
    sput-object p1, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    .line 2
    sget p1, Lcom/netease/nis/alivedetected/e/b;->b:I

    sget v0, Lcom/netease/nis/alivedetected/e/b;->c:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->f:Z

    .line 3
    iget-boolean p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->f:Z

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    iput-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz p1, :cond_2

    .line 11
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/alivedetected/e/a;->c(Ljava/lang/String;)[Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/nis/alivedetected/DetectedListener;->onActionCommands([Lcom/netease/nis/alivedetected/ActionType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_2
    :goto_2
    iput-boolean p4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->i:Z

    .line 17
    iput-object p5, p0, Lcom/netease/nis/alivedetected/AliveDetector;->j:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/netease/nis/alivedetected/AliveDetector;->k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 19
    iget-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/f/a;->startPreview()V

    .line 21
    :cond_3
    iput-boolean v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->u:Z

    .line 22
    new-instance p1, Ljava/util/Timer;

    const-string p2, "timeout"

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->o:Ljava/util/Timer;

    .line 23
    new-instance p1, Lcom/netease/nis/alivedetected/c;

    invoke-direct {p1, p0}, Lcom/netease/nis/alivedetected/c;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;)V

    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->p:Ljava/util/TimerTask;

    .line 61
    iget-object p2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->o:Ljava/util/Timer;

    iget-wide p3, p0, Lcom/netease/nis/alivedetected/AliveDetector;->q:J

    invoke-virtual {p2, p1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onNativeDetectedPassed()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/netease/nis/alivedetected/e/b;->b:I

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/netease/nis/alivedetected/e/b;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->a()V

    .line 4
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->i:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda3;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_1

    .line 17
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda4;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    :try_start_0
    iget-object v1, v0, Lcom/netease/nis/alivedetected/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nis/alivedetected/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    iget-object v2, v0, Lcom/netease/nis/alivedetected/a;->e:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/alivedetected/b;

    invoke-direct {v3, v0, p0}, Lcom/netease/nis/alivedetected/b;-><init>(Lcom/netease/nis/alivedetected/a;Lcom/netease/nis/alivedetected/d;)V

    const/4 v0, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 238
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v2

    iget-object v4, v0, Lcom/netease/nis/alivedetected/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53c2\u6570\u8bbe\u7f6eJson\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "1"

    const-string v5, ""

    const-string v7, ""

    .line 240
    invoke-virtual/range {v2 .. v7}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53c2\u6570\u8bbe\u7f6eJson\u89e3\u6790\u5f02\u5e38:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AliveDetectedHelper"

    invoke-static {v2, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Lcom/netease/nis/alivedetected/d;->onError(ILjava/lang/String;)V

    .line 244
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    return-void
.end method

.method public onPassed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/netease/nis/alivedetected/DetectedListener;->onPassed(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onReady(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda0;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onStateTipChanged(Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->s:Lcom/netease/nis/alivedetected/ActionType;

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/nis/alivedetected/AliveDetector$$ExternalSyntheticLambda1;-><init>(Lcom/netease/nis/alivedetected/AliveDetector;Lcom/netease/nis/alivedetected/ActionType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAllowedUploadInfo(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/netease/nis/alivedetected/AliveDetector;->isAllowedUploadInfo:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    const-string v0, "AliveDetector"

    .line 1
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->setTag(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->enableLog(Z)V

    return-void
.end method

.method public setDetectedListener(Lcom/netease/nis/alivedetected/DetectedListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    .line 2
    iget-object p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->setEventCallback(Lcom/netease/nis/alivedetected/d;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "alive detector listener is not allowed to be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHosts([Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public setSensitivity(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    iput p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->c:I

    :cond_1
    return-void
.end method

.method public setTimeOut(J)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->q:J

    :cond_0
    return-void
.end method

.method public startDetect()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 2
    sput-object v0, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->r:Z

    .line 5
    iget-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/netease/nis/alivedetected/a;->a(Lcom/netease/nis/alivedetected/d;)V

    :cond_0
    return-void
.end method

.method public stopDetect()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->r:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->u:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentPassedActionCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/ActionType;->getActionTip()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {v2}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/nis/alivedetected/ActionType;->getActionID()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "9"

    :try_start_1
    sget-object v4, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-boolean v2, Lcom/netease/nis/alivedetected/e/a;->c:Z

    if-eqz v2, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nis/alivedetected/AliveDetector;->v:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 15
    iget-object v2, p0, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    if-eqz v2, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->v:[Ljava/lang/String;

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 20
    invoke-virtual {v4}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentPassedActionCount()I

    move-result v4

    iget-object v5, p0, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 21
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/netease/nis/alivedetected/a;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nis/alivedetected/AliveDetector;->a()V

    .line 33
    iput-boolean v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->r:Z

    .line 34
    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/f/a;->stopPreview()V

    .line 36
    iget-object v1, p0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getIsInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->k:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;

    .line 39
    iput-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->s:Lcom/netease/nis/alivedetected/ActionType;

    .line 40
    iput-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->e:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netease/nis/alivedetected/AliveDetector;->j:Ljava/lang/String;

    :cond_2
    return-void
.end method
