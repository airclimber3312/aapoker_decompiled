.class Lio/agora/rtc2/internal/AudioFocusManager$AudioFocusChangeListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioFocusChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/internal/AudioFocusManager;


# direct methods
.method constructor <init>(Lio/agora/rtc2/internal/AudioFocusManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioFocusManager$AudioFocusChangeListenerImpl;->this$0:Lio/agora/rtc2/internal/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    invoke-static {}, Lio/agora/rtc2/internal/AudioFocusManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange and focusChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/agora/rtc2/internal/AudioFocusManager$AudioFocusChangeListenerImpl;->this$0:Lio/agora/rtc2/internal/AudioFocusManager;

    invoke-virtual {p1}, Lio/agora/rtc2/internal/AudioFocusManager;->requestAudioFocus()Z

    :goto_0
    return-void
.end method
