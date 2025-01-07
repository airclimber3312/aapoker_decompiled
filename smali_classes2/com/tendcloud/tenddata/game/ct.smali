.class Lcom/tendcloud/tenddata/game/ct;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cs;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cs;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ct;->this$0:Lcom/tendcloud/tenddata/game/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bj;->a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/bj;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/cu;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cu;-><init>(Lcom/tendcloud/tenddata/game/ct;)V

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bj;->registerTestDeviceListener(Lcom/tendcloud/tenddata/game/bj$a;)V

    return-void
.end method
