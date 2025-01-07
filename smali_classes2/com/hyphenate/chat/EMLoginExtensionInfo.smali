.class public Lcom/hyphenate/chat/EMLoginExtensionInfo;
.super Ljava/lang/Object;


# instance fields
.field protected deviceExt:Ljava/lang/String;

.field protected deviceInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMLoginExtensionInfo;->deviceInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyphenate/chat/EMLoginExtensionInfo;->deviceExt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMLoginExtensionInfo;->deviceExt:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMLoginExtensionInfo;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method
