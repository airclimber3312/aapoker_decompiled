.class public Lcom/twobigears/audio360/AudioEngine;
.super Ljava/lang/Object;
.source "AudioEngine.java"


# instance fields
.field private eventListener_:Lcom/twobigears/audio360/EventListener;

.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    return-void
.end method

.method public static create(FIILandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_3(FIILandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v1, p0, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(FILandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_2(FILandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-nez p2, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(FLandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_1(FLandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(Lcom/twobigears/audio360/EngineInitSettings;Landroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 4

    .line 209
    invoke-static {p0}, Lcom/twobigears/audio360/EngineInitSettings;->getCPtr(Lcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_0(JLcom/twobigears/audio360/EngineInitSettings;Landroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v3, p0, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    new-instance v2, Lcom/twobigears/audio360/AudioEngine;

    const/4 v0, 0x1

    invoke-direct {v2, p0, p1, v0}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v2
.end method

.method public static getAudioDeviceName(I)Ljava/lang/String;
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getAudioDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioEngine;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getNumAudioDevices()I
    .locals 1

    .line 201
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getNumAudioDevices()I

    move-result v0

    return v0
.end method

.method private setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V
    .locals 6

    .line 244
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/EventListener;->getCPtr(Lcom/twobigears/audio360/EventListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setEventListenerInternal(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/EventListener;)V

    return-void
.end method


# virtual methods
.method public createAudioObject()Lcom/twobigears/audio360/AudioObject;
    .locals 5

    .line 239
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createAudioObject__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/AudioObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/AudioObject;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createAudioObject(Lcom/twobigears/audio360/AudioObject;Lcom/twobigears/audio360/Options;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 125
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/Options;->swigValue()I

    move-result v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createAudioObject__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createSpatDecoderFile(Lcom/twobigears/audio360/SpatDecoderFile;Lcom/twobigears/audio360/Options;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 117
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderFile;->getCPtr(Lcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/Options;->swigValue()I

    move-result v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderFile__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createSpatDecoderFile()Lcom/twobigears/audio360/SpatDecoderFile;
    .locals 5

    .line 234
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderFile__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/SpatDecoderFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/SpatDecoderFile;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createSpatDecoderQueue()Lcom/twobigears/audio360/SpatDecoderQueue;
    .locals 5

    .line 229
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderQueue(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/SpatDecoderQueue;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 32
    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 33
    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    .line 34
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioEngine(J)V

    .line 36
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyAudioObject(Lcom/twobigears/audio360/AudioObject;)V
    .locals 6

    .line 129
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroyAudioObject(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;)V

    return-void
.end method

.method public destroySpatDecoderFile(Lcom/twobigears/audio360/SpatDecoderFile;)V
    .locals 6

    .line 121
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderFile;->getCPtr(Lcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroySpatDecoderFile(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;)V

    return-void
.end method

.method public destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V
    .locals 6

    .line 113
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderQueue;->getCPtr(Lcom/twobigears/audio360/SpatDecoderQueue;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroySpatDecoderQueue(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderQueue;)V

    return-void
.end method

.method public enableLoudness()V
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableLoudness__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)V

    return-void
.end method

.method public enableLoudness(Z)V
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableLoudness__SWIG_0(JLcom/twobigears/audio360/AudioEngine;Z)V

    return-void
.end method

.method public enablePositionalTracking(ZLcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 93
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enablePositionalTracking(JLcom/twobigears/audio360/AudioEngine;ZJLcom/twobigears/audio360/TBVector;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public enableTestTone(Z)V
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_2(JLcom/twobigears/audio360/AudioEngine;Z)V

    return-void
.end method

.method public enableTestTone(ZF)V
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_1(JLcom/twobigears/audio360/AudioEngine;ZF)V

    return-void
.end method

.method public enableTestTone(ZFF)V
    .locals 6

    .line 133
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_0(JLcom/twobigears/audio360/AudioEngine;ZFF)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    return-void
.end method

.method public getAudioMix(Ljava/nio/ByteBuffer;II)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 109
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getAudioMix(JLcom/twobigears/audio360/AudioEngine;Ljava/nio/ByteBuffer;II)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public getBufferSize()I
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getBufferSize(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getDSPTime()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getDSPTime(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListenerForward()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 85
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerForward(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerPosition()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 77
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerPosition(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerRotation()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 81
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerRotation(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerUp()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 89
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerUp(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getNumOutputBuffers()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputAudioDeviceName()Ljava/lang/String;
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputAudioDeviceName(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputLatencyMs()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputLatencyMs(JLcom/twobigears/audio360/AudioEngine;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputLatencySamples()I
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputLatencySamples(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getRenderedLoudness()Lcom/twobigears/audio360/LoudnessStatistics;
    .locals 4

    .line 161
    new-instance v0, Lcom/twobigears/audio360/LoudnessStatistics;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getRenderedLoudness(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/LoudnessStatistics;-><init>(JZ)V

    return-object v0
.end method

.method public getSampleRate()F
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getSampleRate(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getVersionHash()Ljava/lang/String;
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionHash(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMajor()I
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionMajor(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getVersionMinor()I
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionMinor(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getVersionPatch()I
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionPatch(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public positionalTrackingEnabled()Z
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_positionalTrackingEnabled(JLcom/twobigears/audio360/AudioEngine;)Z

    move-result v0

    return v0
.end method

.method public resetLoudness()V
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_resetLoudness(JLcom/twobigears/audio360/AudioEngine;)V

    return-void
.end method

.method public setEventListener(Lcom/twobigears/audio360/EventListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/twobigears/audio360/EventListener;->delete()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 49
    invoke-direct {p0, p1}, Lcom/twobigears/audio360/AudioEngine;->setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V

    return-void
.end method

.method public setListenerPosition(Lcom/twobigears/audio360/TBVector;)V
    .locals 6

    .line 73
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerPosition(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public setListenerRotation(FFF)V
    .locals 6

    .line 69
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_2(JLcom/twobigears/audio360/AudioEngine;FFF)V

    return-void
.end method

.method public setListenerRotation(Lcom/twobigears/audio360/TBQuat;)V
    .locals 6

    .line 65
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBQuat;)V

    return-void
.end method

.method public setListenerRotation(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)V
    .locals 9

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public setNumOutputBuffers(J)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_start(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public suspend()Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_suspend(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method
