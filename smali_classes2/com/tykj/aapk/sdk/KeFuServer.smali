.class public Lcom/tykj/aapk/sdk/KeFuServer;
.super Ljava/lang/Object;
.source "KeFuServer.java"


# static fields
.field private static final TGA:Ljava/lang/String; = "KeFuServer"


# instance fields
.field private context:Landroid/content/Context;

.field private loginName:Ljava/lang/String;

.field private loginUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iput-object p1, p0, Lcom/tykj/aapk/sdk/KeFuServer;->context:Landroid/content/Context;

    .line 22
    invoke-static {}, Lcn/xiaoneng/uiapi/Ntalker;->getBaseInstance()Lcn/xiaoneng/uiapi/IXNSDKBase;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/xiaoneng/uiapi/IXNSDKBase;->enableDebug(Z)I

    .line 30
    invoke-static {}, Lcn/xiaoneng/uiapi/Ntalker;->getBaseInstance()Lcn/xiaoneng/uiapi/IXNSDKBase;

    move-result-object p1

    iget-object v0, p0, Lcom/tykj/aapk/sdk/KeFuServer;->context:Landroid/content/Context;

    invoke-interface {p1, v0, p2, p3}, Lcn/xiaoneng/uiapi/IXNSDKBase;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 46
    iput-object p1, p0, Lcom/tykj/aapk/sdk/KeFuServer;->loginUid:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/tykj/aapk/sdk/KeFuServer;->loginName:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcn/xiaoneng/uiapi/Ntalker;->getBaseInstance()Lcn/xiaoneng/uiapi/IXNSDKBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcn/xiaoneng/uiapi/IXNSDKBase;->login(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public LoginOut()V
    .locals 1

    .line 61
    invoke-static {}, Lcn/xiaoneng/uiapi/Ntalker;->getBaseInstance()Lcn/xiaoneng/uiapi/IXNSDKBase;

    move-result-object v0

    invoke-interface {v0}, Lcn/xiaoneng/uiapi/IXNSDKBase;->logout()I

    return-void
.end method

.method public StartChat(Ljava/lang/String;Ljava/lang/String;Lcn/xiaoneng/coreapi/ChatParamsBody;)I
    .locals 2

    .line 41
    invoke-static {}, Lcn/xiaoneng/uiapi/Ntalker;->getBaseInstance()Lcn/xiaoneng/uiapi/IXNSDKBase;

    move-result-object v0

    iget-object v1, p0, Lcom/tykj/aapk/sdk/KeFuServer;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcn/xiaoneng/uiapi/IXNSDKBase;->startChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/xiaoneng/coreapi/ChatParamsBody;)I

    move-result p1

    return p1
.end method
