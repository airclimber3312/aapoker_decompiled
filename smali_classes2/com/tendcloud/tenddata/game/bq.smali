.class final Lcom/tendcloud/tenddata/game/bq;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic val$callback:Lcom/tendcloud/tenddata/game/bi;

.field final synthetic val$real:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bi;Ljava/lang/Object;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bq;->val$callback:Lcom/tendcloud/tenddata/game/bi;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bq;->val$real:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->val$callback:Lcom/tendcloud/tenddata/game/bi;

    invoke-interface {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/bi;->beforeMethodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->val$real:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bq;->val$callback:Lcom/tendcloud/tenddata/game/bi;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/bi;->afterMethodInvoked(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
