.class public Lcom/netease/nis/alivedetected/e/a;
.super Ljava/lang/Object;
.source "AliveTimer.java"


# static fields
.field public static a:J

.field public static b:J

.field public static c:Z

.field public static d:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

.field public static e:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;


# direct methods
.method public static a()I
    .locals 4

    .line 55
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 57
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 58
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 1

    .line 80
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v0, p1

    iget p1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    mul-int p1, p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method public static a(Ljava/util/List;ZII)Landroid/hardware/Camera$Size;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;ZII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    new-instance v2, Lcom/netease/nis/alivedetected/e/a$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/netease/nis/alivedetected/e/a$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "camera support size width:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraPreview"

    invoke-static {v4, v3}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move/from16 v3, p2

    move/from16 v2, p3

    goto :goto_1

    :cond_2
    move/from16 v2, p2

    move/from16 v3, p3

    :goto_1
    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 62
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 63
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    sub-double/2addr v9, v4

    .line 64
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-nez v15, :cond_4

    move-object v1, v8

    goto :goto_3

    .line 68
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v13, v11, v6

    if-gez v13, :cond_3

    .line 70
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v1, v8

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_7

    .line 76
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 77
    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v8, v6, v4

    if-gez v8, :cond_6

    .line 79
    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v4, v1

    move-object v1, v2

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 7

    const-string v0, "image/jpeg"

    .line 96
    invoke-virtual {p1, v0}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setContentType(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p2}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setUploadToken(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance p2, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    invoke-direct {p2}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;-><init>()V

    const/4 p3, 0x2

    .line 101
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setChunkRetryCount(I)V

    const/16 p3, 0x1388

    .line 102
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setConnectionTimeout(I)V

    .line 103
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setLbsConnectionTimeout(I)V

    .line 104
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setSoTimeout(I)V

    const p3, 0x8000

    .line 106
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setChunkSize(I)V

    const/4 p3, 0x1

    .line 108
    invoke-virtual {p2, p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setMonitorThread(Z)V

    .line 109
    invoke-static {p2}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->setConf(Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    new-instance v6, Lcom/netease/nis/alivedetected/e/g;

    invoke-direct {v6, p4}, Lcom/netease/nis/alivedetected/e/g;-><init>(Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->putFileByHttps(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 123
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    const/16 v2, 0x10

    .line 125
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    .line 134
    :goto_0
    :try_start_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 138
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 133
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    .line 138
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 140
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 144
    :cond_2
    :goto_3
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;ILcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 3

    .line 81
    new-instance v0, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;-><init>()V

    if-eqz p2, :cond_1

    .line 84
    iget-object v1, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosBucketName(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AliveDetector"

    invoke-static {v2, v1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 87
    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->avatarData:Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;

    iget-object p3, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->xNosToken:Ljava/lang/String;

    .line 88
    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$AvatarImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 91
    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$NosConfig;->checkImageDatas:[Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;

    .line 92
    aget-object v1, p2, p3

    iget-object v1, v1, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->xNosToken:Ljava/lang/String;

    .line 93
    aget-object p2, p2, p3

    iget-object p2, p2, Lcom/netease/nis/alivedetected/entity/GetConfigResponse$ActionImageData;->objectName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    move-object p3, v1

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3, p1, p4}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    sput-object p0, Lcom/netease/nis/alivedetected/e/a;->e:Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v3}, Lcom/netease/nis/alivedetected/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 43
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 46
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 47
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 51
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u590d\u5236\u6587\u4ef6\u5931\u8d25:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AliveDetector"

    invoke-static {p1, p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;[BIILjava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v6, Landroid/graphics/YuvImage;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x46

    invoke-virtual {v6, p1, p2, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 5
    array-length p3, p1

    invoke-static {p1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 7
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    new-instance p0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 10
    invoke-static {}, Lcom/netease/nis/alivedetected/e/a;->a()I

    move-result p1

    invoke-static {p1, p0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 11
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    int-to-float p0, p0

    .line 12
    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    invoke-virtual {v6, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    .line 16
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 21
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    .line 22
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 27
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 30
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netease/nis/alivedetected/ActionType;
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_STRAIGHT_AHEAD:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_0
    const-string v0, "1"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_RIGHT:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_1
    const-string v0, "2"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_LEFT:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_2
    const-string v0, "3"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_OPEN_MOUTH:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_3
    const-string v0, "4"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_BLINK_EYES:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_4
    const-string v0, "5"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_ERROR:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_5
    const-string v0, "6"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 14
    sget-object p0, Lcom/netease/nis/alivedetected/ActionType;->ACTION_PASSED:Lcom/netease/nis/alivedetected/ActionType;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 15
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "get"

    :try_start_1
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "ro.secure"

    aput-object v5, v4, v0

    .line 17
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "0"

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    return v1

    :cond_3
    const-string v3, "/sbin/su"

    const-string v4, "/system/bin/su"

    const-string v5, "/system/xbin/su"

    const-string v6, "/data/local/xbin/su"

    const-string v7, "/data/local/bin/su"

    const-string v8, "/system/sd/xbin/su"

    const-string v9, "/system/bin/failsafe/su"

    const-string v10, "/data/local/su"

    .line 22
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 30
    aget-object v4, v2, v3

    .line 31
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return v0
.end method

.method public static c(Ljava/lang/String;)[Lcom/netease/nis/alivedetected/ActionType;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netease/nis/alivedetected/ActionType;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 5
    sget-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_STRAIGHT_AHEAD:Lcom/netease/nis/alivedetected/ActionType;

    aput-object v2, v0, v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 7
    sget-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_RIGHT:Lcom/netease/nis/alivedetected/ActionType;

    aput-object v2, v0, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3

    .line 9
    sget-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_TURN_HEAD_TO_LEFT:Lcom/netease/nis/alivedetected/ActionType;

    aput-object v2, v0, v1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_4

    .line 11
    sget-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_OPEN_MOUTH:Lcom/netease/nis/alivedetected/ActionType;

    aput-object v2, v0, v1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x34

    if-ne v2, v3, :cond_5

    .line 13
    sget-object v2, Lcom/netease/nis/alivedetected/ActionType;->ACTION_BLINK_EYES:Lcom/netease/nis/alivedetected/ActionType;

    aput-object v2, v0, v1

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method
