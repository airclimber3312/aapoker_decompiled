.class final Lcom/tendcloud/tenddata/game/cw;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/ds;


# instance fields
.field final synthetic val$features:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/a;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cw;->val$features:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreFailed()V
    .locals 2

    .line 277
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "init event store failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 282
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStoreSuccess()V
    .locals 2

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cw;->val$features:Lcom/tendcloud/tenddata/game/a;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/as;->a(ZLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
