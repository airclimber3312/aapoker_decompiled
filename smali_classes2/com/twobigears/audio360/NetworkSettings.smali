.class public Lcom/twobigears/audio360/NetworkSettings;
.super Ljava/lang/Object;
.source "NetworkSettings.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_NetworkSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/NetworkSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/NetworkSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 32
    iget-boolean v4, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 33
    iput-boolean v4, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCMemOwn:Z

    .line 34
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_NetworkSettings(J)V

    .line 36
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/twobigears/audio360/NetworkSettings;->delete()V

    return-void
.end method

.method public getMaxDownloadSpeedBytes()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_maxDownloadSpeedBytes_get(JLcom/twobigears/audio360/NetworkSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrintDebugInfo()Z
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_printDebugInfo_get(JLcom/twobigears/audio360/NetworkSettings;)Z

    move-result v0

    return v0
.end method

.method public getStreamingBufferSizeBytes()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_streamingBufferSizeBytes_get(JLcom/twobigears/audio360/NetworkSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMaxDownloadSpeedBytes(J)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_maxDownloadSpeedBytes_set(JLcom/twobigears/audio360/NetworkSettings;J)V

    return-void
.end method

.method public setPrintDebugInfo(Z)V
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_printDebugInfo_set(JLcom/twobigears/audio360/NetworkSettings;Z)V

    return-void
.end method

.method public setStreamingBufferSizeBytes(J)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/twobigears/audio360/NetworkSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->NetworkSettings_streamingBufferSizeBytes_set(JLcom/twobigears/audio360/NetworkSettings;J)V

    return-void
.end method
