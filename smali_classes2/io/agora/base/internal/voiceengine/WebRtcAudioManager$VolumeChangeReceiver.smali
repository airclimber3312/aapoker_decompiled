.class Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebRtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/voiceengine/WebRtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field private mWebRtcAudioManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/base/internal/voiceengine/WebRtcAudioManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/agora/base/internal/voiceengine/WebRtcAudioManager;)V
    .locals 1

    .line 575
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;->mWebRtcAudioManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 580
    iget-object p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioManager$VolumeChangeReceiver;->mWebRtcAudioManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/base/internal/voiceengine/WebRtcAudioManager;

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-static {p1}, Lio/agora/base/internal/voiceengine/WebRtcAudioManager;->access$400(Lio/agora/base/internal/voiceengine/WebRtcAudioManager;)I

    move-result p2

    .line 585
    invoke-static {p1}, Lio/agora/base/internal/voiceengine/WebRtcAudioManager;->access$500(Lio/agora/base/internal/voiceengine/WebRtcAudioManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 586
    invoke-static {p1, v0, p2}, Lio/agora/base/internal/voiceengine/WebRtcAudioManager;->access$600(Lio/agora/base/internal/voiceengine/WebRtcAudioManager;II)V

    return-void
.end method
