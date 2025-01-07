.class public Lcom/twobigears/audio360/MemorySettings;
.super Ljava/lang/Object;
.source "MemorySettings.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_MemorySettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/MemorySettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/MemorySettings;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/MemorySettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 32
    iget-boolean v4, p0, Lcom/twobigears/audio360/MemorySettings;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 33
    iput-boolean v4, p0, Lcom/twobigears/audio360/MemorySettings;->swigCMemOwn:Z

    .line 34
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_MemorySettings(J)V

    .line 36
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J
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

.method protected finalize()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/twobigears/audio360/MemorySettings;->delete()V

    return-void
.end method

.method public getAudioObjectPoolSize()I
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_audioObjectPoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I

    move-result v0

    return v0
.end method

.method public getSpatDecoderFilePoolSize()I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatDecoderFilePoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I

    move-result v0

    return v0
.end method

.method public getSpatDecoderQueuePoolSize()I
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatDecoderQueuePoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I

    move-result v0

    return v0
.end method

.method public getSpatQueueSizePerChannel()I
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatQueueSizePerChannel_get(JLcom/twobigears/audio360/MemorySettings;)I

    move-result v0

    return v0
.end method

.method public getSpeakersVirtualizersPoolSize()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_speakersVirtualizersPoolSize_get(JLcom/twobigears/audio360/MemorySettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAudioObjectPoolSize(I)V
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_audioObjectPoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V

    return-void
.end method

.method public setSpatDecoderFilePoolSize(I)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatDecoderFilePoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V

    return-void
.end method

.method public setSpatDecoderQueuePoolSize(I)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatDecoderQueuePoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V

    return-void
.end method

.method public setSpatQueueSizePerChannel(I)V
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_spatQueueSizePerChannel_set(JLcom/twobigears/audio360/MemorySettings;I)V

    return-void
.end method

.method public setSpeakersVirtualizersPoolSize(J)V
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/twobigears/audio360/MemorySettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->MemorySettings_speakersVirtualizersPoolSize_set(JLcom/twobigears/audio360/MemorySettings;J)V

    return-void
.end method
