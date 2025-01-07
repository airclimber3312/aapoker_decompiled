.class Lcom/tendcloud/tenddata/game/de;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/dd;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dd;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/dd;->b:J

    .line 292
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget v0, v0, Lcom/tendcloud/tenddata/game/dd;->d:I

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget v1, v1, Lcom/tendcloud/tenddata/game/dd;->e:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget v0, v0, Lcom/tendcloud/tenddata/game/dd;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/game/dd;->b:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/game/dd;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 293
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    const-string v1, "env"

    .line 294
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->b:Ljava/lang/String;

    const-string v1, "cellUpdate"

    .line 295
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->c:Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 297
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bs;->post(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget-wide v1, v0, Lcom/tendcloud/tenddata/game/dd;->b:J

    iput-wide v1, v0, Lcom/tendcloud/tenddata/game/dd;->c:J

    .line 300
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->this$0:Lcom/tendcloud/tenddata/game/dd;

    iget v1, v0, Lcom/tendcloud/tenddata/game/dd;->d:I

    iput v1, v0, Lcom/tendcloud/tenddata/game/dd;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 304
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
