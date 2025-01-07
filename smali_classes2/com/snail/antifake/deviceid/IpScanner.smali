.class public Lcom/snail/antifake/deviceid/IpScanner;
.super Ljava/lang/Object;
.source "IpScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snail/antifake/deviceid/IpScanner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/snail/antifake/deviceid/IpScanner;Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/snail/antifake/deviceid/IpScanner;->execCatForArp(Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/snail/antifake/deviceid/IpScanner;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/snail/antifake/deviceid/IpScanner;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private execCatForArp(Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snail/antifake/deviceid/IpScanner$2;

    invoke-direct {v1, p0, p1}, Lcom/snail/antifake/deviceid/IpScanner$2;-><init>(Lcom/snail/antifake/deviceid/IpScanner;Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getHostIP()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 134
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 135
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 137
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "127.0.0.1"

    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "kalshen"

    const-string v3, "SocketException"

    .line 148
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public startScan(Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-direct {p0}, Lcom/snail/antifake/deviceid/IpScanner;->getHostIP()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "."

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/snail/antifake/deviceid/IpScanner$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/snail/antifake/deviceid/IpScanner$1;-><init>(Lcom/snail/antifake/deviceid/IpScanner;Ljava/lang/String;Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
