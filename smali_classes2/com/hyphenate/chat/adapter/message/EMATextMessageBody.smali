.class public Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAMessageBody;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeInit(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeInit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getTargetLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeGetTargetLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTranslations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeGetTranslations()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetTargetLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetTranslations()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;)V
.end method

.method native nativeInit(Ljava/lang/String;)V
.end method

.method native nativeSetTargetLanguages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeSetText(Ljava/lang/String;)V
.end method

.method native nativeText()Ljava/lang/String;
.end method

.method public setTargetLanguages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeSetTargetLanguages(Ljava/util/List;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeSetText(Ljava/lang/String;)V

    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMATextMessageBody;->nativeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
