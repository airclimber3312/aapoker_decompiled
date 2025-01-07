.class public final Lcom/tencent/bugly/proguard/ro;
.super Lcom/tencent/bugly/proguard/m;


# static fields
.field static Jj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static w:[B


# instance fields
.field public IV:I

.field public IW:Ljava/lang/String;

.field public IX:Ljava/lang/String;

.field public IY:Ljava/lang/String;

.field public IZ:I

.field public Ja:Ljava/lang/String;

.field public Jb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Jc:J

.field public Jd:Ljava/lang/String;

.field public Je:Ljava/lang/String;

.field public Jf:Ljava/lang/String;

.field public Jg:Ljava/lang/String;

.field public Jh:Ljava/lang/String;

.field public Ji:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public bx:Ljava/lang/String;

.field public fw:J

.field public gT:Ljava/lang/String;

.field public gY:Ljava/lang/String;

.field public hc:Ljava/lang/String;

.field public he:Ljava/lang/String;

.field public jZ:Ljava/lang/String;

.field public s:[B

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/proguard/ro;->w:[B

    check-cast v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ro;->Jj:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/ro;->IV:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->IW:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->IX:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->version:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->jZ:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->IY:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->s:[B

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->bx:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Ja:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jb:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->gT:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->Jc:J

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->gY:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Jd:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->fw:J

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Je:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->hc:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Jf:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Jg:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->he:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Jh:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ro;->Ji:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    iget v0, p0, Lcom/tencent/bugly/proguard/ro;->IV:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ro;->IV:I

    invoke-virtual {p1, v2, v2}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IW:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IX:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->version:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->jZ:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IY:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3, v2}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/k;->d(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->s:[B

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->bx:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Ja:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/ro;->Jj:Ljava/util/Map;

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/k;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jb:Ljava/util/Map;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->gT:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->Jc:J

    const/16 v0, 0xc

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->Jc:J

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->gY:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->K:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jd:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->fw:J

    const/16 v0, 0x10

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ro;->fw:J

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Je:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->hc:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jf:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jg:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->he:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jh:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ro;->Ji:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    iget v0, p0, Lcom/tencent/bugly/proguard/ro;->IV:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IW:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->version:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->jZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->IY:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/bugly/proguard/ro;->IZ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->s:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a([BI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->bx:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Ja:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jb:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->gT:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ro;->Jc:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->gY:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->K:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jd:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_7
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ro;->fw:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Je:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->hc:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jf:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jg:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->he:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Jh:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ro;->Ji:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    :cond_e
    return-void
.end method
