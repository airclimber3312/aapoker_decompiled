.class Lio/agora/base/internal/voiceengine/WebRtcAudioManager$DelayVolumeTask;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/voiceengine/WebRtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayVolumeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioManager;

.field private volumeChangeReceiver:Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/voiceengine/WebRtcAudioManager;Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$DelayVolumeTask;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$DelayVolumeTask;->volumeChangeReceiver:Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "WebRtcAudioManager"

    const-string v1, "unregister volume change receiver "

    .line 560
    :try_start_0
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 561
    iget-object v3, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$DelayVolumeTask;->volumeChangeReceiver:Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;

    if-nez v3, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$DelayVolumeTask;->volumeChangeReceiver:Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "unregister VolumeChangeReceiver failed "

    .line 567
    invoke-static {v0, v2, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
