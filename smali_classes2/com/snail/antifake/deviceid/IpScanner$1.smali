.class Lcom/snail/antifake/deviceid/IpScanner$1;
.super Ljava/lang/Object;
.source "IpScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snail/antifake/deviceid/IpScanner;->startScan(Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snail/antifake/deviceid/IpScanner;

.field final synthetic val$listener:Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;

.field final synthetic val$substring:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snail/antifake/deviceid/IpScanner;Ljava/lang/String;Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$substring",
            "val$listener"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->this$0:Lcom/snail/antifake/deviceid/IpScanner;

    iput-object p2, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->val$substring:Ljava/lang/String;

    iput-object p3, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->val$listener:Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 57
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 60
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    const/4 v2, 0x2

    :cond_0
    :goto_0
    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    const-string v3, "kalshen"

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run: udp-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->val$substring:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->val$substring:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 65
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 69
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 73
    iget-object v0, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->this$0:Lcom/snail/antifake/deviceid/IpScanner;

    iget-object v1, p0, Lcom/snail/antifake/deviceid/IpScanner$1;->val$listener:Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;

    invoke-static {v0, v1}, Lcom/snail/antifake/deviceid/IpScanner;->access$000(Lcom/snail/antifake/deviceid/IpScanner;Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :goto_1
    return-void
.end method
