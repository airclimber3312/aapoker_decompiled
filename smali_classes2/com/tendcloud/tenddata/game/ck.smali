.class Lcom/tendcloud/tenddata/game/ck;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cj;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cj;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ck;->this$0:Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->C(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    const-string v2, "env"

    .line 65
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dk;->b:Ljava/lang/String;

    const-string v2, "arp"

    .line 66
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dk;->c:Ljava/lang/String;

    .line 67
    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dk;->d:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bs;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
