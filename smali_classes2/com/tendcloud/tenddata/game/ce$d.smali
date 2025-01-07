.class Lcom/tendcloud/tenddata/game/ce$d;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field fp1:Lcom/tendcloud/tenddata/game/ce$c;

.field fp2:Lcom/tendcloud/tenddata/game/ce$c;

.field score:D

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/ce;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ce;Lcom/tendcloud/tenddata/game/ce$c;Lcom/tendcloud/tenddata/game/ce$c;D)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ce$d;->this$0:Lcom/tendcloud/tenddata/game/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ce$d;->fp1:Lcom/tendcloud/tenddata/game/ce$c;

    .line 30
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ce$d;->fp2:Lcom/tendcloud/tenddata/game/ce$c;

    .line 31
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/ce$d;->score:D

    return-void
.end method
