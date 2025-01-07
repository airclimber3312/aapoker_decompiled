.class Lcom/tykj/aapk/sdk/IMServer$3;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->MessageSound(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;

.field final synthetic val$duration:J

.field final synthetic val$msgs:Ljava/lang/String;

.field final synthetic val$sender:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$3;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    iput-object p2, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$msgs:Ljava/lang/String;

    iput-object p3, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$sender:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8bed\u97f3\u4e0b\u8f7d\u5931\u8d25 code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--desc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMServer"

    invoke-static {p2, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$msgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$msgs:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 382
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 384
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 385
    aget-object v0, v0, v2

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v7, v1

    move-object v8, v7

    .line 388
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0b\u8f7d\u6210\u529f path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tykj/aapk/sdk/IMServer$3;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/IMServer;->access$000(Lcom/tykj/aapk/sdk/IMServer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMServer"

    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$sender:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$3;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-static {v0}, Lcom/tykj/aapk/sdk/IMServer;->access$000(Lcom/tykj/aapk/sdk/IMServer;)Ljava/lang/String;

    move-result-object v4

    iget-wide v0, p0, Lcom/tykj/aapk/sdk/IMServer$3;->val$duration:J

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v0

    invoke-static/range {v2 .. v8}, Lcom/tykj/aapk/sdk/IMServer;->IMGroupRespond(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
