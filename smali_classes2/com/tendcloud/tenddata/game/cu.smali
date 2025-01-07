.class Lcom/tendcloud/tenddata/game/cu;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/bj$a;


# instance fields
.field final synthetic this$1:Lcom/tendcloud/tenddata/game/ct;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ct;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cu;->this$1:Lcom/tendcloud/tenddata/game/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTestDeviceEvent()V
    .locals 2

    .line 136
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/cv;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cv;-><init>(Lcom/tendcloud/tenddata/game/cu;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
