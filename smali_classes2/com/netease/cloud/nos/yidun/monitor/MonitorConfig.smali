.class public Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private monitorHost:Ljava/lang/String;

.field private monitorInterval:J

.field private soTimeout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->LOGTAG:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig$1;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://wanproxy.127.net"

    .line 2
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 3
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->connectionTimeout:I

    const/16 v0, 0x7530

    .line 4
    iput v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->soTimeout:I

    const-wide/32 v0, 0x1d4c0

    .line 5
    iput-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->connectionTimeout:I

    .line 25
    iput p3, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->soTimeout:I

    .line 26
    iput-wide p4, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->connectionTimeout:I

    return v0
.end method

.method public getMonitorHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorInterval:J

    return-wide v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->soTimeout:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->connectionTimeout:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonitorInterval(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid monitorInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method

.method public setMontiroHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->soTimeout:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid soTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->connectionTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->soTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->monitorInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
