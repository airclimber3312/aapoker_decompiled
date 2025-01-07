.class public Lcom/netease/nis/alivedetected/DetectedEngine;
.super Ljava/lang/Object;
.source "DetectedEngine.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/netease/nis/alivedetected/DetectedEngine;->b:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sSavedImagePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetectedEngine"

    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->g:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/netease/nis/alivedetected/DetectedEngine;->a:Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sModelPath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object p0, Lcom/netease/nis/alivedetected/DetectedEngine;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/nis/alivedetected/DetectedEngine;->b:Ljava/lang/String;

    invoke-static {}, Lcom/netease/nis/alivedetected/AliveDetector;->getInstance()Lcom/netease/nis/alivedetected/AliveDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/AliveDetector;->getSensitivity()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceDetectionInit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static a([BIILjava/lang/String;Z)Z
    .locals 11

    .line 3
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 5
    invoke-static {}, Lcom/netease/nis/alivedetected/e/a;->a()I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 6
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    move-object v5, p0

    goto/16 :goto_b

    :cond_0
    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 7
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    add-int/lit8 v4, p1, -0x1

    move v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ltz v5, :cond_3

    add-int/lit8 v7, p2, -0x1

    mul-int v7, v7, p1

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, p2, :cond_2

    mul-int v9, v8, p1

    add-int/2addr v9, v5

    sub-int v9, v7, v9

    .line 14
    :try_start_0
    array-length v10, p0

    if-ge v9, v10, :cond_1

    .line 15
    aget-byte v9, p0, v9

    aput-byte v9, v1, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_2
    if-lez v4, :cond_7

    .line 25
    div-int/lit8 v6, p2, 0x2

    sub-int/2addr v6, v3

    mul-int v6, v6, p1

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    const/4 v7, 0x0

    .line 26
    :goto_3
    div-int/lit8 v8, p2, 0x2

    if-ge v7, v8, :cond_6

    add-int/lit8 v8, v6, -0x2

    mul-int v9, v7, p1

    add-int/2addr v9, v4

    add-int/lit8 v10, v9, -0x1

    sub-int/2addr v8, v10

    .line 28
    array-length v10, p0

    if-ge v8, v10, :cond_4

    .line 29
    aget-byte v8, p0, v8

    aput-byte v8, v1, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    sub-int v8, v6, v9

    .line 34
    array-length v9, p0

    if-ge v8, v9, :cond_5

    .line 35
    aget-byte v8, p0, v8

    aput-byte v8, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, -0x2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_7
    move-object v5, v1

    goto/16 :goto_b

    :cond_8
    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 42
    div-int/lit8 v4, v1, 0x2

    new-array v4, v4, [B

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x0

    :goto_4
    if-ltz v5, :cond_9

    .line 47
    :try_start_1
    aget-byte v7, p0, v5

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 50
    :cond_9
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    :goto_5
    if-lt v1, v0, :cond_e

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v7, v1, -0x1

    .line 52
    aget-byte v7, p0, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x1

    .line 53
    aget-byte v7, p0, v1

    aput-byte v7, v4, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, -0x2

    goto :goto_5

    :catch_1
    move-exception p0

    .line 56
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 57
    div-int/lit8 v4, v1, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, p1, :cond_c

    add-int/lit8 v7, p2, -0x1

    :goto_7
    if-ltz v7, :cond_b

    mul-int v8, v7, p1

    add-int/2addr v8, v5

    .line 62
    :try_start_2
    aget-byte v8, p0, v8

    aput-byte v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 66
    :cond_c
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    add-int/lit8 v5, p1, -0x1

    :goto_8
    if-lez v5, :cond_e

    const/4 v6, 0x0

    .line 68
    :goto_9
    div-int/lit8 v7, p2, 0x2

    if-ge v6, v7, :cond_d

    mul-int v7, v6, p1

    add-int/2addr v7, v0

    add-int v8, v7, v5

    .line 69
    aget-byte v8, p0, v8

    aput-byte v8, v4, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v8, v5, -0x1

    add-int/2addr v7, v8

    .line 71
    aget-byte v7, p0, v7

    aput-byte v7, v4, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, -0x2

    goto :goto_8

    :catch_2
    move-exception p0

    .line 76
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_e
    :goto_a
    move-object v5, v4

    :goto_b
    const/4 v8, 0x4

    move v6, p2

    move v7, p1

    move-object v9, p3

    move v10, p4

    .line 77
    invoke-static/range {v5 .. v10}, Lcom/netease/nis/alivedetected/DetectedEngine;->faceDetect([BIIILjava/lang/String;Z)[I

    move-result-object p0

    .line 78
    sget-object p1, Lcom/netease/nis/alivedetected/DetectedEngine;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 79
    invoke-static {}, Lcom/netease/nis/alivedetected/DetectedEngine;->destroy()V

    :cond_f
    if-eqz p0, :cond_10

    .line 81
    array-length p1, p0

    if-le p1, v3, :cond_10

    .line 82
    aget p0, p0, v3

    if-ne p0, v3, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public static native destroy()V
.end method

.method private static native faceDetect([BIIILjava/lang/String;Z)[I
.end method

.method private static native faceDetectionInit(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static native faceGetDetectedStateTip()Ljava/lang/String;
.end method

.method public static native faceGetStateTipType()I
.end method
