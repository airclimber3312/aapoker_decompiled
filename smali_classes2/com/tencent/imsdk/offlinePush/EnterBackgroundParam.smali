.class public Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;
.super Ljava/lang/Object;
.source "EnterBackgroundParam.java"


# instance fields
.field private c2cUnreadMessageCount:I

.field private deviceBrand:I

.field private groupUnreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setC2cUnreadMessageCount(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;->c2cUnreadMessageCount:I

    return-void
.end method

.method public setDeviceBrand(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;->deviceBrand:I

    return-void
.end method

.method public setGroupUnreadMessageCount(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/tencent/imsdk/offlinePush/EnterBackgroundParam;->groupUnreadMessageCount:I

    return-void
.end method
