.class public Lcom/tencent/imsdk/offlinePush/OfflinePushToken;
.super Ljava/lang/Object;
.source "OfflinePushToken.java"


# instance fields
.field private businessID:I

.field private deviceBrand:I

.field private deviceToken:Ljava/lang/String;

.field private isTPNSToken:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBusinessID(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->businessID:I

    return-void
.end method

.method public setDeviceBrand(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->deviceBrand:I

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->deviceToken:Ljava/lang/String;

    return-void
.end method

.method public setIsTPNSToken(Z)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/OfflinePushToken;->isTPNSToken:I

    return-void
.end method
