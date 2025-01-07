.class public Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Landroid/net/Uri;I)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;-><init>(Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;)V

    return-void
.end method


# virtual methods
.method public getCompatibleText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeGetCompatibleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeGetSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeGetTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetCompatibleText()Ljava/lang/String;
.end method

.method native nativeGetSummary()Ljava/lang/String;
.end method

.method native nativeGetTitle()Ljava/lang/String;
.end method

.method native nativeInit()V
.end method

.method native nativeSetCompatibleText(Ljava/lang/String;)V
.end method

.method native nativeSetMessageList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeSetSummary(Ljava/lang/String;)V
.end method

.method native nativeSetTitle(Ljava/lang/String;)V
.end method

.method public setCompatibleText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeSetCompatibleText(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeSetMessageList(Ljava/util/List;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeSetSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACombineMessageBody;->nativeSetTitle(Ljava/lang/String;)V

    return-void
.end method
