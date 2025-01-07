.class public Lcom/tendcloud/tenddata/game/ee;
.super Lcom/tendcloud/tenddata/game/dy;
.source "td"


# static fields
.field public static a:Lcom/tendcloud/tenddata/game/ed; = null

.field private static final c:Ljava/lang/String; = "type"

.field private static final d:Ljava/lang/String; = "deviceId"

.field private static final e:Ljava/lang/String; = "runtimeConfig"

.field private static final f:Ljava/lang/String; = "hardwareConfig"

.field private static final g:Ljava/lang/String; = "softwareConfig"


# instance fields
.field private h:Lcom/tendcloud/tenddata/game/ef;

.field private i:Lcom/tendcloud/tenddata/game/ec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dy;-><init>()V

    .line 14
    new-instance v0, Lcom/tendcloud/tenddata/game/ef;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ef;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->h:Lcom/tendcloud/tenddata/game/ef;

    .line 15
    new-instance v0, Lcom/tendcloud/tenddata/game/ec;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ec;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->i:Lcom/tendcloud/tenddata/game/ec;

    .line 19
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ee;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    const-string v0, "type"

    const-string v1, "mobile"

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/tendcloud/tenddata/game/ed;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ed;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/ee;->a:Lcom/tendcloud/tenddata/game/ed;

    const-string v1, "deviceId"

    .line 25
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ed;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/tendcloud/tenddata/game/eg;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/eg;-><init>()V

    const-string v1, "runtimeConfig"

    .line 28
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/eg;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->i:Lcom/tendcloud/tenddata/game/ec;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ec;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hardwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->h:Lcom/tendcloud/tenddata/game/ef;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ef;->a_()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "softwareConfig"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/tendcloud/tenddata/game/ef;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->h:Lcom/tendcloud/tenddata/game/ef;

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/game/ec;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->i:Lcom/tendcloud/tenddata/game/ec;

    return-object v0
.end method
