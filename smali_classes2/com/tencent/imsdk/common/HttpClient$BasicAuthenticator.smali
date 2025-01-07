.class Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;
.super Ljava/net/Authenticator;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/common/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasicAuthenticator"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;->userName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 83
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0
.end method
