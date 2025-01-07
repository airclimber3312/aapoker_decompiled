.class public Lcom/hyphenate/chat/adapter/EMALogoutInfo;
.super Ljava/lang/Object;


# instance fields
.field private deviceExt:Ljava/lang/String;

.field private deviceInfo:Ljava/lang/String;

.field private errorDesc:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->errorDesc:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceExt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceExt:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method protected setDeviceExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceExt:Ljava/lang/String;

    return-void
.end method

.method protected setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->deviceInfo:Ljava/lang/String;

    return-void
.end method

.method protected setErrorDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMALogoutInfo;->errorDesc:Ljava/lang/String;

    return-void
.end method
