.class public Lcom/tykj/aapk/sdk/voice/VoiceRecorder;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"


# static fields
.field private static final RECORD_STATE_NONE:I = 0x99

.field private static final RECORD_STATE_PAUSE:I = 0x9b

.field private static final RECORD_STATE_START:I = 0x9a

.field private static final TAG:Ljava/lang/String; = "VoiceRecorder"

.field private static mInstance:Lcom/tykj/aapk/sdk/voice/VoiceRecorder;


# instance fields
.field private BASE:I

.field private SPACE:I

.field private context:Landroid/content/Context;

.field private fragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private readyRecordMillis:J

.field private recordId:I

.field private recorder:Landroid/media/MediaRecorder;

.field private startSuccess:Z

.field private startTimeMillis:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startSuccess:Z

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->BASE:I

    const/16 v0, 0x64

    .line 244
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->SPACE:I

    .line 44
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/tykj/aapk/sdk/voice/VoiceRecorder;
    .locals 2

    .line 33
    sget-object v0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mInstance:Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mInstance:Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;-><init>()V

    sput-object v1, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mInstance:Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mInstance:Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    return-object v0
.end method

.method private static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "VoiceRecorder"

    const-string p1, "PermissionUtil.isPermissionGranted"

    .line 264
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isRecordAudioEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 259
    invoke-static {p0, v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private release()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 137
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private startInternal(Ljava/lang/String;)Z
    .locals 5

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "VoiceRecorder"

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startInternal create dir failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->stop()J

    .line 201
    :cond_1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x3a98

    .line 202
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 213
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 214
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 216
    :try_start_1
    iget-object p1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :try_start_2
    iget-object p1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startInternal start exp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startInternal prepare exp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v2

    :catch_1
    move-exception p1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startInternal exp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->stop()J

    return v2
.end method


# virtual methods
.method public combine()V
    .locals 11

    const-string v0, " \u5408\u5e76 list \u957f\u5ea6 = "

    .line 147
    iget-object v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " combine length = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "VoiceRecorder"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u5408\u5e76\u6bb5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 162
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v8

    new-array v8, v8, [B

    .line 169
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 170
    invoke-virtual {v3, v8, v4, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 173
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " , file length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 177
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public continued()V
    .locals 3

    const-string v0, "VoiceRecorder"

    const-string v1, "continued --------------------------------"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordFiles"

    invoke-static {v1}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cz_record_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recordId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".acc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9a

    .line 124
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startTimeMillis:J

    :cond_1
    return-void
.end method

.method public getMicStatus()I
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->BASE:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRecordPath()Ljava/lang/String;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 6

    const-string v0, "VoiceRecorder"

    const-string v1, "pause --------------------------------"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    :cond_1
    const/16 v0, 0x9b

    .line 108
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    .line 109
    iget-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->readyRecordMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startTimeMillis:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->readyRecordMillis:J

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startTimeMillis:J

    .line 111
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->release()V

    return-void
.end method

.method public start()Z
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordFiles"

    invoke-static {v1}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cz_record_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recordId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".acc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start record path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceRecorder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->isRecordAudioEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    const/16 v2, 0x99

    if-eq v1, v2, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->release()V

    .line 64
    :cond_1
    invoke-direct {p0, v0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9a

    .line 65
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->readyRecordMillis:J

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startTimeMillis:J

    const/4 v0, 0x1

    return v0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const-string v0, "path null or no permission"

    .line 55
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public stop()J
    .locals 9

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    const/16 v2, 0x9a

    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_0

    return-wide v3

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    const-string v0, "stop recorder null"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 86
    :cond_1
    iget-wide v5, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->readyRecordMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->startTimeMillis:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 88
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "stop duration:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " isOverDuration:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "stop exp:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 95
    :goto_1
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->release()V

    const/16 v1, 0x99

    .line 96
    iput v1, p0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;->mState:I

    if-eqz v0, :cond_3

    move-wide v3, v5

    :cond_3
    return-wide v3
.end method
