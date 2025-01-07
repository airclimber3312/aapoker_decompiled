.class public Lcom/netease/nis/alivedetected/f/a$a;
.super Landroid/os/Handler;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/alivedetected/f/a;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/nis/alivedetected/f/a;


# direct methods
.method public constructor <init>(Lcom/netease/nis/alivedetected/f/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/f/a$a;->a:Lcom/netease/nis/alivedetected/f/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "data"

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/netease/nis/alivedetected/f/a$a;->a:Lcom/netease/nis/alivedetected/f/a;

    .line 8
    iget-object v1, v0, Lcom/netease/nis/alivedetected/f/a;->a:Landroid/hardware/Camera;

    .line 9
    iget-object v2, v0, Lcom/netease/nis/alivedetected/f/a;->b:Landroid/hardware/Camera$Parameters;

    .line 10
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/netease/nis/alivedetected/f/a$a;->a:Lcom/netease/nis/alivedetected/f/a;

    .line 11
    iget-object v3, v3, Lcom/netease/nis/alivedetected/f/a;->b:Landroid/hardware/Camera$Parameters;

    .line 12
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/nis/alivedetected/f/a;->onPreviewFrame(Landroid/hardware/Camera;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
