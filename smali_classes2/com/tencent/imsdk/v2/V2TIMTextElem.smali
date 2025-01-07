.class public Lcom/tencent/imsdk/v2/V2TIMTextElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMTextElem.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTextElem;->text:Ljava/lang/String;

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/TextElement;

    .line 17
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/TextElement;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMTextElem;->text:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/TextElement;

    .line 28
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/TextElement;->setTextContent(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMTextElem--->text:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
