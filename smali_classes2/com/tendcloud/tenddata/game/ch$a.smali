.class Lcom/tendcloud/tenddata/game/ch$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public fp1:Lcom/tendcloud/tenddata/game/cg;

.field public fp2:Lcom/tendcloud/tenddata/game/cg;

.field public score:D

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/ch;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ch;Lcom/tendcloud/tenddata/game/cg;Lcom/tendcloud/tenddata/game/cg;D)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ch$a;->this$0:Lcom/tendcloud/tenddata/game/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/ch$a;->fp1:Lcom/tendcloud/tenddata/game/cg;

    .line 29
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ch$a;->fp2:Lcom/tendcloud/tenddata/game/cg;

    .line 30
    iput-wide p4, p0, Lcom/tendcloud/tenddata/game/ch$a;->score:D

    return-void
.end method
