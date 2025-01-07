.class public abstract Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub;
.super Landroid/os/Binder;
.source "ISendStat.java"

# interfaces
.implements Lcom/netease/cloud/nos/yidun/monitor/ISendStat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.netease.cloud.nos.yidun.monitor.ISendStat"

.field public static final TRANSACTION_sendConfig:I = 0x2

.field public static final TRANSACTION_sendStat:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netease.cloud.nos.yidun.monitor.ISendStat"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netease.cloud.nos.yidun.monitor.ISendStat"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "com.netease.cloud.nos.yidun.monitor.ISendStat"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 22
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;

    .line 30
    :cond_2
    invoke-interface {p0, v0}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;->sendConfig(Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 32
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    .line 40
    :cond_4
    invoke-interface {p0, v0}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z

    move-result p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2
.end method
