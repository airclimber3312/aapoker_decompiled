.class public Lcom/hyphenate/exceptions/HyphenateException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected desc:Ljava/lang/String;

.field protected errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    iput-object p2, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    iput v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    const-string p1, ""

    iput-object p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    const-string p1, ""

    iput-object p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    invoke-super {p0, p2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/exceptions/HyphenateException;->errorCode:I

    return-void
.end method
