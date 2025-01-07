.class Lcom/tendcloud/tenddata/game/ci;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/ch;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ch;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ci;->this$0:Lcom/tendcloud/tenddata/game/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tendcloud/tenddata/game/ch$a;Lcom/tendcloud/tenddata/game/ch$a;)I
    .locals 5

    .line 303
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/ch$a;->score:D

    iget-wide v2, p2, Lcom/tendcloud/tenddata/game/ch$a;->score:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_0
    iget-wide v0, p1, Lcom/tendcloud/tenddata/game/ch$a;->score:D

    iget-wide p1, p2, Lcom/tendcloud/tenddata/game/ch$a;->score:D

    cmpg-double v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 301
    check-cast p1, Lcom/tendcloud/tenddata/game/ch$a;

    check-cast p2, Lcom/tendcloud/tenddata/game/ch$a;

    invoke-virtual {p0, p1, p2}, Lcom/tendcloud/tenddata/game/ci;->compare(Lcom/tendcloud/tenddata/game/ch$a;Lcom/tendcloud/tenddata/game/ch$a;)I

    move-result p1

    return p1
.end method
