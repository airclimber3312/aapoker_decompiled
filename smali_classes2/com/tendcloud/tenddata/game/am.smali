.class public Lcom/tendcloud/tenddata/game/am;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setActivities(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/am;->a:Ljava/lang/String;

    return-void
.end method

.method public setHandHolding(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/am;->b:Ljava/lang/String;

    return-void
.end method
