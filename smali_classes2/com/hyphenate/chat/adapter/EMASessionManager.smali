.class public Lcom/hyphenate/chat/adapter/EMASessionManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASessionManager;->nativeDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMASessionManager;->nativeEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptionKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMASessionManager;->nativeGetEncryptionKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method native nativeDecrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeEncrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeGetEncryptionKey(Ljava/lang/String;Ljava/lang/String;)[B
.end method
