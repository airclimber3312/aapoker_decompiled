.class Lcom/hyphenate/chat/EMClient$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/chat/EMEncryptProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->getEncryptProvider()Lcom/hyphenate/chat/EMEncryptProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$8;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$8;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/adapter/EMASessionManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$8;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getSessionManager()Lcom/hyphenate/chat/adapter/EMASessionManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/adapter/EMASessionManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
