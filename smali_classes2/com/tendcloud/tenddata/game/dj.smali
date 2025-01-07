.class public Lcom/tendcloud/tenddata/game/dj;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/dj$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tendcloud/tenddata/game/a;

.field public b:Lcom/tendcloud/tenddata/game/dj$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/a;

    .line 15
    sget-object v0, Lcom/tendcloud/tenddata/game/dj$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dj$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dj;->b:Lcom/tendcloud/tenddata/game/dj$a;

    return-void
.end method
