.class public final Lcom/tencent/bugly/proguard/rl;
.super Lcom/tencent/bugly/proguard/m;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static It:[B


# instance fields
.field public D:B

.field public cO:Ljava/lang/String;

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/rl;->D:B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rl;->cO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rl;->data:[B

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    iput-byte p1, p0, Lcom/tencent/bugly/proguard/rl;->D:B

    iput-object p2, p0, Lcom/tencent/bugly/proguard/rl;->cO:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/rl;->data:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/k;)V
    .locals 3

    iget-byte v0, p0, Lcom/tencent/bugly/proguard/rl;->D:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/rl;->D:B

    invoke-virtual {p1, v2, v2}, Lcom/tencent/bugly/proguard/k;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/rl;->cO:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/rl;->It:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/tencent/bugly/proguard/rl;->It:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->d(IZ)[B

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tencent/bugly/proguard/rl;->data:[B

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/l;)V
    .locals 2

    iget-byte v0, p0, Lcom/tencent/bugly/proguard/rl;->D:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rl;->cO:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rl;->data:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a([BI)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method
