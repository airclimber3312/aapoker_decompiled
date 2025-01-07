.class public Lcom/tencent/bugly/proguard/jq;
.super Lcom/tencent/bugly/proguard/iy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/jq$a;
    }
.end annotation


# static fields
.field private static volatile xi:Lcom/tencent/bugly/proguard/jq;


# instance fields
.field private final vq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final xj:Lcom/tencent/bugly/proguard/jq$a;

.field private final xk:Lcom/tencent/bugly/proguard/jp;

.field private final xl:Lcom/tencent/bugly/proguard/jr;

.field private final xm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/jq$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/jq$a;-><init>(Lcom/tencent/bugly/proguard/jq;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xj:Lcom/tencent/bugly/proguard/jq$a;

    new-instance v0, Lcom/tencent/bugly/proguard/jp;

    new-instance v1, Lcom/tencent/bugly/proguard/ju;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ju;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/jp;-><init>(Lcom/tencent/bugly/proguard/jv;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xk:Lcom/tencent/bugly/proguard/jp;

    new-instance v0, Lcom/tencent/bugly/proguard/jr;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/jr;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xl:Lcom/tencent/bugly/proguard/jr;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xm:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jq;->vq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/jq;)Lcom/tencent/bugly/proguard/jp;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jq;->xk:Lcom/tencent/bugly/proguard/jp;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/jq;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jq;->xm:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/jq;)Lcom/tencent/bugly/proguard/jr;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jq;->xl:Lcom/tencent/bugly/proguard/jr;

    return-object p0
.end method

.method public static fZ()Lcom/tencent/bugly/proguard/jq;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/jq;->xi:Lcom/tencent/bugly/proguard/jq;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/jq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/jq;->xi:Lcom/tencent/bugly/proguard/jq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/jq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/jq;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/jq;->xi:Lcom/tencent/bugly/proguard/jq;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/jq;->xi:Lcom/tencent/bugly/proguard/jq;

    return-object v0
.end method


# virtual methods
.method public final start()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_BigBitmap_Monitor"

    const-string v2, "BigBitMap don\'t support below JellyBean"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ku;->be()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dumpfile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "big_bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->vq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xk:Lcom/tencent/bugly/proguard/jp;

    new-instance v1, Lcom/tencent/bugly/proguard/jz;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/jz;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/jp;->a(Lcom/tencent/bugly/proguard/jy;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xk:Lcom/tencent/bugly/proguard/jp;

    new-instance v1, Lcom/tencent/bugly/proguard/kb;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/kb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/jp;->a(Lcom/tencent/bugly/proguard/jy;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xk:Lcom/tencent/bugly/proguard/jp;

    new-instance v1, Lcom/tencent/bugly/proguard/ka;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ka;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/jp;->a(Lcom/tencent/bugly/proguard/jy;)V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/jq;->stop()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xj:Lcom/tencent/bugly/proguard/jq$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    invoke-static {v2}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq;->xj:Lcom/tencent/bugly/proguard/jq$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "big_bitmap"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    return-void
.end method
