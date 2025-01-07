.class public final Lcom/tencent/bugly/proguard/rm;
.super Lcom/tencent/bugly/proguard/m;


# static fields
.field static IL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static IM:Lcom/tencent/bugly/proguard/rk;

.field static IN:Lcom/tencent/bugly/proguard/rj;

.field static IO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rj;",
            ">;"
        }
    .end annotation
.end field

.field static IP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rj;",
            ">;"
        }
    .end annotation
.end field

.field static IQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rl;",
            ">;"
        }
    .end annotation
.end field

.field static IR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static IS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IB:Ljava/lang/String;

.field public IC:Lcom/tencent/bugly/proguard/rk;

.field public ID:Ljava/lang/String;

.field public IE:Lcom/tencent/bugly/proguard/rj;

.field public IF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rj;",
            ">;"
        }
    .end annotation
.end field

.field public IG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rj;",
            ">;"
        }
    .end annotation
.end field

.field public IH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/rl;",
            ">;"
        }
    .end annotation
.end field

.field public II:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IJ:Ljava/lang/String;

.field public IK:Z

.field public Iu:J

.field public Iv:Ljava/lang/String;

.field public Iw:Ljava/lang/String;

.field public Ix:Ljava/lang/String;

.field public Iy:Ljava/lang/String;

.field public Iz:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public crashCount:I

.field public iB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IL:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/bugly/proguard/rk;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rk;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IM:Lcom/tencent/bugly/proguard/rk;

    new-instance v0, Lcom/tencent/bugly/proguard/rj;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rj;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IN:Lcom/tencent/bugly/proguard/rj;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IO:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/rj;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rj;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/rm;->IO:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IP:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/rj;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rj;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/rm;->IP:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IQ:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/rl;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/rl;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/rm;->IQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IR:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/rm;->IS:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->type:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/rm;->Iu:J

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iv:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iw:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Ix:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iz:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IA:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IB:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IC:Lcom/tencent/bugly/proguard/rk;

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/bugly/proguard/rm;->crashCount:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IE:Lcom/tencent/bugly/proguard/rj;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IF:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IG:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IH:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->iB:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->II:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IJ:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/rm;->IK:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/rm;->type:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/rm;->Iu:J

    invoke-virtual {p1, v2, v3, v1, v1}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/rm;->Iu:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->Iv:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->Iw:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->Ix:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->Iy:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->Iz:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IL:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IA:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IB:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IM:Lcom/tencent/bugly/proguard/rk;

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/m;IZ)Lcom/tencent/bugly/proguard/m;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/rk;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IC:Lcom/tencent/bugly/proguard/rk;

    iget v1, p0, Lcom/tencent/bugly/proguard/rm;->crashCount:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/proguard/rm;->crashCount:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->ID:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->K:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IN:Lcom/tencent/bugly/proguard/rj;

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/m;IZ)Lcom/tencent/bugly/proguard/m;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/rj;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IE:Lcom/tencent/bugly/proguard/rj;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IO:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IF:Ljava/util/ArrayList;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IP:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IG:Ljava/util/ArrayList;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IQ:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IH:Ljava/util/ArrayList;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IR:Ljava/util/Map;

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->iB:Ljava/util/Map;

    sget-object v1, Lcom/tencent/bugly/proguard/rm;->IS:Ljava/util/Map;

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->II:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/rm;->IJ:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/tencent/bugly/proguard/k;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/rm;->IK:Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->type:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/rm;->Iu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iv:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iw:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Ix:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iy:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->Iz:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IA:Ljava/util/Map;

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IB:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IC:Lcom/tencent/bugly/proguard/rk;

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/m;I)V

    :cond_6
    iget v0, p0, Lcom/tencent/bugly/proguard/rm;->crashCount:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->ID:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->K:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IE:Lcom/tencent/bugly/proguard/rj;

    if-eqz v0, :cond_9

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/m;I)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IF:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Collection;I)V

    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IG:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Collection;I)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IH:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Collection;I)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->iB:Ljava/util/Map;

    if-eqz v0, :cond_d

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->II:Ljava/util/Map;

    if-eqz v0, :cond_e

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/rm;->IJ:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/rm;->IK:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    return-void
.end method
