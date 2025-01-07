.class public Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;
.super Ljava/lang/Object;
.source "ProtocalPhoneState.java"


# instance fields
.field private batterylevel:I

.field private batterystate:I

.field private g4ss:I

.field private wifiss:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatterylevel()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->batterylevel:I

    return v0
.end method

.method public getBatterystate()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->batterystate:I

    return v0
.end method

.method public getG4ss()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->g4ss:I

    return v0
.end method

.method public getWifiss()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->wifiss:I

    return v0
.end method

.method public setBatterylevel(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->batterylevel:I

    return-void
.end method

.method public setBatterystate(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->batterystate:I

    return-void
.end method

.method public setG4ss(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->g4ss:I

    return-void
.end method

.method public setWifiss(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/tykj/aapk/sdk/protocal/ProtocalPhoneState;->wifiss:I

    return-void
.end method
