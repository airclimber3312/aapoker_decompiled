.class Lcom/tykj/aapk/sdk/IMServer$5;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->LoginOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$5;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "im \u767b\u51fa\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMServer"

    invoke-static {p2, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "IMServer"

    const-string v1, "im \u767b\u51fa\u6210\u529f"

    .line 450
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$5;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tykj/aapk/sdk/IMServer;->imState:I

    return-void
.end method
