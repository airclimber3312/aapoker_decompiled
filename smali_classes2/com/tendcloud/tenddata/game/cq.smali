.class Lcom/tendcloud/tenddata/game/cq;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/co;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$features:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/co;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cq;->this$0:Lcom/tendcloud/tenddata/game/co;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/cq;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/cq;->val$channelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/cq;->val$features:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->this$0:Lcom/tendcloud/tenddata/game/co;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/game/co;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->this$0:Lcom/tendcloud/tenddata/game/co;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->val$channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/cq;->val$features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/game/co;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
