.class Lcom/tendcloud/tenddata/game/cv;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/tendcloud/tenddata/game/cu;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cu;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cv;->this$2:Lcom/tendcloud/tenddata/game/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    const-string v1, "app"

    .line 140
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->b:Ljava/lang/String;

    const-string v1, "test"

    .line 141
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->c:Ljava/lang/String;

    .line 142
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 143
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bs;->post(Ljava/lang/Object;)V

    .line 145
    new-instance v0, Lcom/tendcloud/tenddata/game/dj;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dj;-><init>()V

    .line 146
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/a;

    .line 147
    sget-object v1, Lcom/tendcloud/tenddata/game/dj$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dj$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dj;->b:Lcom/tendcloud/tenddata/game/dj$a;

    .line 148
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bs;->post(Ljava/lang/Object;)V

    return-void
.end method
