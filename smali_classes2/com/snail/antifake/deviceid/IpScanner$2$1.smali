.class Lcom/snail/antifake/deviceid/IpScanner$2$1;
.super Ljava/lang/Object;
.source "IpScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snail/antifake/deviceid/IpScanner$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snail/antifake/deviceid/IpScanner$2;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/snail/antifake/deviceid/IpScanner$2;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$map"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/snail/antifake/deviceid/IpScanner$2$1;->this$1:Lcom/snail/antifake/deviceid/IpScanner$2;

    iput-object p2, p0, Lcom/snail/antifake/deviceid/IpScanner$2$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/snail/antifake/deviceid/IpScanner$2$1;->this$1:Lcom/snail/antifake/deviceid/IpScanner$2;

    iget-object v0, v0, Lcom/snail/antifake/deviceid/IpScanner$2;->val$listener:Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;

    iget-object v1, p0, Lcom/snail/antifake/deviceid/IpScanner$2$1;->val$map:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/snail/antifake/deviceid/IpScanner$OnScanListener;->scan(Ljava/util/Map;)V

    return-void
.end method
