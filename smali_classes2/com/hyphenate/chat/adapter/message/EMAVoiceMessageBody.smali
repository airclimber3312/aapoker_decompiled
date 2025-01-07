.class public Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeInit(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeInit(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeInit(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public duration()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeDuration()I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeFinalize()V

    invoke-super {p0}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->finalize()V

    return-void
.end method

.method native nativeDuration()I
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;)V
.end method

.method native nativeInit(Ljava/lang/String;I)V
.end method

.method native nativeSetDuration(I)V
.end method

.method public setDuration(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAVoiceMessageBody;->nativeSetDuration(I)V

    return-void
.end method
