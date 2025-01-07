.class public Lcom/hyphenate/util/VoiceRecorder;
.super Ljava/lang/Object;


# static fields
.field static final EXTENSION:Ljava/lang/String; = ".amr"

.field static final PREFIX:Ljava/lang/String; = "voice"


# instance fields
.field private file:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private isRecording:Z

.field recorder:Landroid/media/MediaRecorder;

.field private startTime:J

.field private voiceFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyphenate/util/VoiceRecorder;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/util/VoiceRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    return p0
.end method

.method static synthetic access$100(Lcom/hyphenate/util/VoiceRecorder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/util/VoiceRecorder;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public discardRecording()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_0
    return-void
.end method

.method public getVoiceFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".amr"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVoiceFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    return v0
.end method

.method public startRecording(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p1, "voice"

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    :cond_0
    new-instance p3, Landroid/media/MediaRecorder;

    invoke-direct {p3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x1f40

    invoke-virtual {p3, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x40

    invoke-virtual {p3, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/util/VoiceRecorder;->getVoiceFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hyphenate/util/VoiceRecorder;->voiceFileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hyphenate/util/VoiceRecorder;->getVoiceFilePath()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    iget-object p2, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->prepare()V

    iput-boolean v0, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    iget-object p2, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "prepare() failed"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/hyphenate/util/VoiceRecorder$1;

    invoke-direct {p3, p0}, Lcom/hyphenate/util/VoiceRecorder$1;-><init>(Lcom/hyphenate/util/VoiceRecorder;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/hyphenate/util/VoiceRecorder;->startTime:J

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "start voice recording to file:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stopRecoding()I
    .locals 6

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/hyphenate/util/VoiceRecorder;->isRecording:Z

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    const/16 v1, 0x191

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v1

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hyphenate/util/VoiceRecorder;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "voice recording finished. seconds:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " file length:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hyphenate/util/VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "voice"

    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method
