.class Lcom/tendcloud/tenddata/game/ce$e;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/ce;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ce;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce$e;->this$0:Lcom/tendcloud/tenddata/game/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce$e;->key:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ce$e;->value:Ljava/lang/Object;

    return-void
.end method
