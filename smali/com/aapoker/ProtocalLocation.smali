.class public Lcom/aapoker/ProtocalLocation;
.super Ljava/lang/Object;
.source "ProtocalLocation.java"


# instance fields
.field private latitude:D

.field private locationName:Ljava/lang/String;

.field private longitude:D

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aapoker/ProtocalLocation;->latitude:D

    return-wide v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aapoker/ProtocalLocation;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aapoker/ProtocalLocation;->longitude:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aapoker/ProtocalLocation;->status:I

    return v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aapoker/ProtocalLocation;->latitude:D

    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aapoker/ProtocalLocation;->locationName:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aapoker/ProtocalLocation;->longitude:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/aapoker/ProtocalLocation;->status:I

    return-void
.end method
