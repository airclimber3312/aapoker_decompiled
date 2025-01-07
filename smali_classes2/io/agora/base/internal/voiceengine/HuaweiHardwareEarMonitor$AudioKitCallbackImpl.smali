.class Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;
.super Ljava/lang/Object;
.source "HuaweiHardwareEarMonitor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioKitCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;


# direct methods
.method private constructor <init>(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;-><init>(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "IAudioKitCallback: onResult error number "

    const-string v1, "onResult: "

    :try_start_0
    const-string v2, "onResult"

    .line 58
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x0

    .line 59
    aget-object p3, p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 60
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {v1}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$200(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ignore result after destroy"

    invoke-static {p2, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    if-ne p3, v2, :cond_1

    .line 64
    :cond_0
    iget-object p2, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p2}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$300(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)V

    :cond_1
    return-object p1

    :cond_2
    if-eqz p3, :cond_6

    const/4 p2, 0x2

    if-eq p3, p2, :cond_5

    if-eq p3, v2, :cond_3

    .line 94
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object p2, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-virtual {p2}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->isHardwareEarMonitorSupported()Z

    move-result p2

    .line 87
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 88
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;->onKaraokeSupport(Z)V

    .line 90
    :cond_4
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "IAudioKitCallback: Karaoke feature created"

    invoke-static {p2, p3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_5
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p3

    const-string v0, "IAudioKitCallback: HwAudioKit not installed"

    invoke-static {p3, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 80
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;->onInitResult(I)V

    goto :goto_0

    .line 72
    :cond_6
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 73
    iget-object p3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;->this$0:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-static {p3}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;->onInitResult(I)V

    .line 75
    :cond_7
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string p3, "IAudioKitCallback: HwAudioKit init success"

    invoke-static {p2, p3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    invoke-static {}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->access$100()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AudioKitCallbackImpl invoke failed "

    invoke-static {p3, v0, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-object p1
.end method
