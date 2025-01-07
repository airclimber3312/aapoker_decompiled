.class public Lcom/tencent/imsdk/message/LocationElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "LocationElement.java"


# instance fields
.field private description:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x7

    .line 11
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/LocationElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/message/LocationElement;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/tencent/imsdk/message/LocationElement;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/tencent/imsdk/message/LocationElement;->longitude:D

    return-wide v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/imsdk/message/LocationElement;->description:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/tencent/imsdk/message/LocationElement;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/tencent/imsdk/message/LocationElement;->longitude:D

    return-void
.end method
