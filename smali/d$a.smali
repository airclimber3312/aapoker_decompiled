.class public Ld$a;
.super Ljava/lang/Object;
.source "LocationActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld;


# direct methods
.method public constructor <init>(Ld;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld$a;->a:Ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "GPS"

    const-string/jumbo v1, "\u83b7\u53d6\u5b9a\u4f4d\u8d85\u65f6"

    .line 1
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ld$a;->a:Ld;

    iget-object v0, v0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aapoker/ProtocalLocation;->setLatitude(D)V

    .line 4
    iget-object v0, p0, Ld$a;->a:Ld;

    iget-object v0, v0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-virtual {v0, v1, v2}, Lcom/aapoker/ProtocalLocation;->setLongitude(D)V

    .line 5
    iget-object v0, p0, Ld$a;->a:Ld;

    iget-object v0, v0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalLocation;->setStatus(I)V

    .line 6
    iget-object v0, p0, Ld$a;->a:Ld;

    iget-object v0, v0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    const-string v1, "unkonw"

    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalLocation;->setLocationName(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ld$a;->a:Ld;

    iget-object v0, v0, Ld;->c:Lcom/aapoker/ProtocalLocation;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/4 v2, 0x3

    .line 10
    invoke-virtual {v1, v2}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Ld$a;->a:Ld;

    invoke-static {v0}, Ld;->a(Ld;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Ld$a;->a:Ld;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 15
    iget-object v0, p0, Ld$a;->a:Ld;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld;->a(Ld;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method
